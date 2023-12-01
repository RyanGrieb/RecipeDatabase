import psycopg2
import yaml


def create_tables(cursor: psycopg2.extensions.cursor):
    # Delete our existing tables
    drop_table_query = "DROP TABLE IF EXISTS recipe, ingredient, quantity"
    cursor.execute(drop_table_query)

    # Create our required tables specified in our phase 2 document
    create_recipe_table_query = """
        CREATE TABLE IF NOT EXISTS recipe (
            recipe_id SERIAL PRIMARY KEY,
            recipe_name VARCHAR(255) NOT NULL,
            instructions_desc TEXT,
            course VARCHAR(50),
            food_category VARCHAR(50),
            prep_time INT,
            cook_time INT,
            rating_avg DECIMAL(3,2),
            rating_count INT DEFAULT 0
        )
    """
    cursor.execute(create_recipe_table_query)

    create_ingredient_table_query = """
        CREATE TABLE IF NOT EXISTS ingredient (
            ingredient_id SERIAL PRIMARY KEY,
            ingredient_name VARCHAR(255) NOT NULL,
            ingredient_price DECIMAL(8,2)
        )
    """
    cursor.execute(create_ingredient_table_query)

    create_quantity_table_query = """
        CREATE TABLE IF NOT EXISTS quantity (
            quantity_id SERIAL PRIMARY KEY,
            recipe_id INT,
            ingredient_id INT,
            ingredient_quantity DECIMAL(8,2),
            ingredient_measurement VARCHAR(50)
        )
    """
    cursor.execute(create_quantity_table_query)

    # FIXME: Create the Saved_Recipe, User, Rating, Review Tables


def insert_datasets(cursor: psycopg2.extensions.cursor, file: str):
    # Insert into ingredients table if the values don't already exist.
    # Create our recipe row
    # Create our quantity row
    with open(file, "r") as yaml_file:
        data = yaml.safe_load(yaml_file)
        recipes = data["recipes"]
        for recipe in recipes:
            recipe_name = recipe["recipe_name"]
            instructions_desc = recipe["instructions_desc"]
            course = recipe["course"]
            food_category = recipe["food_category"]
            prep_time = recipe["prep_time"]
            cook_time = recipe["cook_time"]

            # Insert recipe data into the recipe table
            cursor.execute(
                """
                INSERT INTO recipe (recipe_name, instructions_desc, course, food_category, prep_time, cook_time)
                VALUES (%s, %s, %s, %s, %s, %s)
                RETURNING recipe_id
                """,
                (
                    recipe_name,
                    instructions_desc,
                    course,
                    food_category,
                    prep_time,
                    cook_time,
                ),
            )
            recipe_id = cursor.fetchone()[0]

            for ingredient in recipe["ingredients"]:
                print(ingredient)

                ingredient_id = -1
                ingredient_name = ingredient["ingredient_name"]
                ingredient_quantity = ingredient["ingredient_quantity"]
                ingredient_measurement = ingredient["ingredient_measurement"]

                cursor.execute(
                    f"SELECT ingredient_id FROM ingredient WHERE ingredient_name = '{ingredient_name}'"
                )
                ingredient_columns = cursor.fetchone()

                if ingredient_columns is None:
                    print(
                        f"Missing ingredient ID for: {ingredient_name}, adding to ingredient table..."
                    )

                    # Add ingredient into the ingredients table
                    cursor.execute(
                        """
                        INSERT INTO ingredient (ingredient_name) VALUES (%s)
                        RETURNING ingredient_id
                                   """,
                        (ingredient_name,),
                    )

                    # Get ingredient_id from our newly added ingredient
                    ingredient_id = cursor.fetchone()[0]
                else:
                    # Get ingredient_id from our existing ingredient
                    ingredient_id = ingredient_columns[0]

                # Add ingredient and recipe into our join table. We do this to assocaite the ingredient with the recipe.
                cursor.execute(
                    "INSERT INTO quantity (recipe_id, ingredient_id, ingredient_quantity, ingredient_measurement) VALUES (%s,%s, %s, %s)",
                    (
                        recipe_id,
                        ingredient_id,
                        ingredient_quantity,
                        ingredient_measurement,
                    ),
                )


def main():
    # Establish a connection to our SQL server
    connection = psycopg2.connect(
        host="db",  # Name of our DB container
        user="user",
        password="password",
        database="mydatabase",
        port="5432",
    )

    print("Successfully connected to PostgreSQL.")

    # Create our cursor for the DB.
    cursor = connection.cursor()

    # Execute a statement to test if our cursor is working.
    print("PostgreSQL database version:")
    cursor.execute("SELECT version();")
    db_version_row = cursor.fetchone()
    print(db_version_row)

    create_tables(cursor)
    insert_datasets(cursor, "recipes.yml")

    connection.commit()
    cursor.close()
    connection.close()


if __name__ == "__main__":
    main()
