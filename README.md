_Intro to Database Systems - Project Phase 3_

_Project Name: Recipe Database – Explore recipes using ingredients._

## Objective:

1. Generate a SQL Database, and insert all recipes found inside our .yml file.
2. Modify the Database such that we can `SELECT` recipes based on `ingredient_name`(s)

### Generate database

1. Install docker
2. Navigate to the projects current working directory, and enter: `docker compose up -d`
3. To view generated data, see the instructions below.

---

### To enter our database inside the container:

1. Find container_id of db container with `docker ps`
2. Enter container with `docker exec -it <container_id> bash`
3. Enter into the PostgreSQL command line `psql -U user -d mydatabase`

### To select a recipe by name:

`
SELECT recipe.recipe_id, recipe.recipe_name
FROM recipe
JOIN quantity ON recipe.recipe_id = quantity.recipe_id
JOIN ingredient ON quantity.ingredient_id = ingredient.ingredient_id
WHERE ingredient.ingredient_name = 'INGREDIENT_NAME';`

### Example - select all recipes containing 'Onions':

`
SELECT recipe.recipe_id, recipe.recipe_name
FROM recipe
JOIN quantity ON recipe.recipe_id = quantity.recipe_id
JOIN ingredient ON quantity.ingredient_id = ingredient.ingredient_id
WHERE ingredient.ingredient_name = 'Onion';`
