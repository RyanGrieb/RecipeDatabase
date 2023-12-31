--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ingredient; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.ingredient (
    ingredient_id integer NOT NULL,
    ingredient_name character varying(255) NOT NULL,
    ingredient_price numeric(8,2)
);


ALTER TABLE public.ingredient OWNER TO "user";

--
-- Name: ingredient_ingredient_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.ingredient_ingredient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ingredient_ingredient_id_seq OWNER TO "user";

--
-- Name: ingredient_ingredient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.ingredient_ingredient_id_seq OWNED BY public.ingredient.ingredient_id;


--
-- Name: quantity; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.quantity (
    quantity_id integer NOT NULL,
    recipe_id integer,
    ingredient_id integer,
    ingredient_quantity numeric(8,2),
    ingredient_measurement character varying(50)
);


ALTER TABLE public.quantity OWNER TO "user";

--
-- Name: quantity_quantity_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.quantity_quantity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.quantity_quantity_id_seq OWNER TO "user";

--
-- Name: quantity_quantity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.quantity_quantity_id_seq OWNED BY public.quantity.quantity_id;


--
-- Name: recipe; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.recipe (
    recipe_id integer NOT NULL,
    recipe_name character varying(255) NOT NULL,
    instructions_desc text,
    course character varying(50),
    food_category character varying(50),
    prep_time integer,
    cook_time integer,
    rating_avg numeric(3,2),
    rating_count integer DEFAULT 0
);


ALTER TABLE public.recipe OWNER TO "user";

--
-- Name: recipe_recipe_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.recipe_recipe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.recipe_recipe_id_seq OWNER TO "user";

--
-- Name: recipe_recipe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.recipe_recipe_id_seq OWNED BY public.recipe.recipe_id;


--
-- Name: ingredient ingredient_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.ingredient ALTER COLUMN ingredient_id SET DEFAULT nextval('public.ingredient_ingredient_id_seq'::regclass);


--
-- Name: quantity quantity_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.quantity ALTER COLUMN quantity_id SET DEFAULT nextval('public.quantity_quantity_id_seq'::regclass);


--
-- Name: recipe recipe_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.recipe ALTER COLUMN recipe_id SET DEFAULT nextval('public.recipe_recipe_id_seq'::regclass);


--
-- Data for Name: ingredient; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.ingredient (ingredient_id, ingredient_name, ingredient_price) FROM stdin;
1	Green beans	\N
2	Onion	\N
3	Garlic	\N
4	Flour	\N
5	Chicken broth	\N
6	Mushrooms	\N
7	Salt	\N
8	Black pepper	\N
9	Butter	\N
10	Ground beef	\N
11	Crushed tomatoes	\N
12	Tomato paste	\N
13	Dried oregano	\N
14	Dried basil	\N
15	Olive oil	\N
16	Boneless, skinless chicken breasts	\N
17	Romaine lettuce	\N
18	Grated Parmesan cheese	\N
19	Caesar dressing	\N
20	Croutons	\N
21	Lemon	\N
22	Optional Parmesan	\N
23	Broccoli	\N
24	Bell pepper	\N
25	Carrots	\N
26	Snap peas	\N
27	Soy sauce	\N
28	Sesame oil	\N
29	Ginger	\N
30	Quinoa	\N
31	Cherry tomatoes	\N
32	Cucumber	\N
33	Feta cheese	\N
34	Fresh parsley	\N
35	Lemon juice	\N
36	Honey	\N
37	Taco seasoning	\N
38	Lettuce	\N
39	Tomatoes	\N
40	Cheddar cheese	\N
41	Sour cream	\N
42	Fresh cilantro	\N
43	Tortillas	\N
44	Lime	\N
45	Salt and pepper	\N
46	Arborio rice	\N
47	Vegetable broth	\N
48	White wine	\N
49	Parmesan cheese	\N
50	Unsalted butter	\N
51	Granulated sugar	\N
52	Brown sugar	\N
53	Large eggs	\N
54	Vanilla extract	\N
55	All-purpose flour	\N
56	Baking soda	\N
57	Chocolate chips	\N
58	Fresh mozzarella	\N
59	Fresh basil leaves	\N
60	Balsamic glaze	\N
61	Extra-virgin olive oil	\N
62	Fettuccine pasta	\N
63	Heavy cream	\N
64	Additional salt and pepper	\N
65	Large onion	\N
66	Mixed vegetables	\N
67	Chickpeas	\N
68	Coconut milk	\N
69	Curry powder	\N
70	Turmeric	\N
71	Vegetable oil	\N
72	Mixed berries	\N
73	Greek yogurt	\N
74	Banana	\N
75	Granola	\N
76	Chia seeds	\N
77	Almond butter	\N
78	Additional honey	\N
79	Additional chia seeds	\N
80	Additional sliced berries	\N
81	Linguine pasta	\N
82	Large shrimp	\N
83	Dry white wine	\N
84	Fresh lemon juice	\N
85	Red pepper flakes	\N
86	Zucchini	\N
87	Eggplant	\N
88	Red onion	\N
89	Dried thyme	\N
90	Smoked paprika	\N
91	Blueberries	\N
92	Baking powder	\N
93	Milk	\N
94	Lemon zest	\N
95	Salmon fillets	\N
96	Rice vinegar	\N
97	Broccoli florets	\N
98	Carrot	\N
99	Cooked brown rice	\N
100	Sesame seeds and green onions	\N
101	Large mango	\N
102	Ripe avocados	\N
103	Jalape├▒o	\N
104	Cumin	\N
105	Medium butternut squash	\N
106	Celery stalks	\N
107	Thyme	\N
108	Rosemary	\N
109	Cajun seasoning	\N
110	Coleslaw mix	\N
111	Lime juice	\N
112	Small corn tortillas	\N
113	Pepper	\N
114	Hot sauce	\N
115	Kalamata olives	\N
116	Red wine vinegar	\N
117	Penne pasta	\N
118	Black olives	\N
119	Pine nuts	\N
120	Pesto sauce	\N
121	Boneless, skinless chicken thighs	\N
122	Oyster sauce	\N
123	Fish sauce	\N
124	Sugar	\N
125	Red chili	\N
126	Orzo pasta	\N
127	Red bell pepper	\N
128	Dijon mustard	\N
129	Garlic powder	\N
130	Fresh spinach	\N
131	Sun-dried tomatoes	\N
132	Toothpicks	\N
133	Firm tofu	\N
134	Hoisin sauce	\N
135	Large portobello mushrooms	\N
136	Fresh basil	\N
137	Bell peppers	\N
138	Black beans	\N
139	Corn kernels	\N
140	Diced tomatoes	\N
141	Shredded cheddar cheese	\N
142	Chili powder	\N
143	Jasmine rice	\N
144	Diced mango	\N
145	Shredded coconut	\N
146	Chopped nuts (almonds, pistachios, or cashews)	\N
147	Pinch of salt	\N
148	Mint leaves	\N
149	Cooked chicken	\N
150	Garlic cloves	\N
151	Grated mozzarella cheese	\N
152	Chopped fresh parsley	\N
153	Bell peppers (mixed colors)	\N
154	Ground cumin	\N
155	Onion powder	\N
156	Shredded lettuce	\N
157	Salsa	\N
158	Guacamole	\N
159	Taco shells	\N
160	Water	\N
161	Yellow bell pepper	\N
162	Extra virgin olive oil	\N
163	Chicken breasts	\N
164	Fresh ginger	\N
165	Cornstarch	\N
166	Mango	\N
167	Cilantro	\N
168	Large tomatoes	\N
169	Apple	\N
170	Ground coriander	\N
171	Ziti pasta	\N
172	Marinara sauce	\N
173	Ricotta cheese	\N
174	Shredded mozzarella cheese	\N
175	Paprika	\N
176	Snow peas	\N
177	Tofu	\N
178	Pork shoulder	\N
179	BBQ rub	\N
180	BBQ sauce	\N
181	Apple cider vinegar	\N
182	Dried rosemary	\N
183	Hamburger buns	\N
184	Large eggplants	\N
185	Breadcrumbs	\N
186	Mozzarella cheese	\N
187	Chicken breast	\N
188	Yellow squash	\N
189	Cauliflower	\N
190	Unsweetened almond milk	\N
191	Buffalo sauce	\N
192	Melted butter	\N
193	Worcestershire sauce	\N
194	Unsweetened cocoa powder	\N
195	Maple syrup or agave nectar	\N
196	Instant coffee	\N
197	Cinnamon	\N
198	Fresh berries	\N
\.


--
-- Data for Name: quantity; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.quantity (quantity_id, recipe_id, ingredient_id, ingredient_quantity, ingredient_measurement) FROM stdin;
1	1	1	500.00	grams
2	1	2	1.00	medium
3	1	3	2.00	cloves
4	1	4	3.00	tablespoons
5	1	5	250.00	milliliters
6	1	6	1.00	cup
7	1	7	0.00	to taste
8	1	8	0.00	to taste
9	1	9	2.00	tablespoons
10	2	10	400.00	grams
11	2	2	1.00	medium
12	2	3	2.00	cloves
13	2	11	1.00	can
14	2	12	2.00	tablespoons
15	2	13	1.00	teaspoon
16	2	14	1.00	teaspoon
17	2	7	0.00	to taste
18	2	8	0.00	to taste
19	2	15	2.00	tablespoons
20	3	16	2.00	pieces
21	3	17	1.00	head
22	3	18	0.50	cup
23	3	19	0.25	cup
24	3	20	1.00	cup
25	3	21	1.00	lemon
26	3	7	0.00	to taste
27	3	8	0.00	to taste
28	3	15	2.00	tablespoons
29	3	22	0.00	to taste
30	4	23	1.00	broccoli head
31	4	24	1.00	bell pepper
32	4	25	2.00	carrots
33	4	26	150.00	grams
34	4	27	3.00	tablespoons
35	4	28	2.00	tablespoons
36	4	29	1.00	tablespoon
37	4	3	2.00	cloves
38	4	7	0.00	to taste
39	4	8	0.00	to taste
40	5	30	1.00	cup
41	5	31	2.00	cups
42	5	32	1.00	medium
43	5	33	0.50	cup
44	5	34	0.25	cup
45	5	15	3.00	tablespoons
46	5	35	2.00	tablespoons
47	5	36	1.00	teaspoon
48	5	7	0.00	to taste
49	5	8	0.00	to taste
50	6	10	500.00	grams
51	6	37	1.00	packet
52	6	38	1.00	cup
53	6	39	1.00	cup
54	6	40	0.50	cup
55	6	41	0.25	cup
56	6	42	0.25	cup
57	6	43	8.00	pieces
58	6	44	1.00	lime
59	6	45	0.00	to taste
60	7	46	300.00	grams
61	7	6	200.00	grams
62	7	2	1.00	onion
63	7	3	2.00	cloves
64	7	47	750.00	milliliters
65	7	48	125.00	milliliters
66	7	49	50.00	grams
67	7	15	2.00	tablespoons
68	7	9	2.00	tablespoons
69	7	45	0.00	to taste
70	8	50	1.00	cup
71	8	51	0.75	cup
72	8	52	1.00	cup
73	8	53	2.00	large
74	8	54	1.00	teaspoon
75	8	55	3.00	cups
76	8	56	1.00	teaspoon
77	8	7	0.50	teaspoon
78	8	57	2.00	cups
79	8	7	0.00	to taste
80	9	39	4.00	large
81	9	58	200.00	grams
82	9	59	0.50	cup
83	9	60	3.00	tablespoons
84	9	61	3.00	tablespoons
85	9	7	0.00	to taste
86	9	8	0.00	to taste
87	10	62	400.00	grams
88	10	16	2.00	pieces
89	10	3	3.00	cloves
90	10	63	1.00	cup
91	10	18	0.75	cup
92	10	50	0.50	cup
93	10	15	1.00	tablespoon
94	10	7	1.00	teaspoon
95	10	8	0.50	teaspoon
96	10	64	0.00	to taste
97	11	65	1.00	chopped
98	11	3	2.00	cloves
99	11	29	1.00	inch piece
100	11	66	2.00	cups
101	11	67	1.00	can
102	11	68	400.00	milliliters
103	11	69	3.00	tablespoons
104	11	70	1.00	teaspoon
105	11	71	1.00	tablespoon
106	11	45	0.00	to taste
107	12	72	1.00	cup
108	12	73	1.00	cup
109	12	74	1.00	banana
110	12	75	0.25	cup
111	12	36	2.00	tablespoons
112	12	76	1.00	tablespoon
113	12	77	1.00	tablespoon
114	12	78	0.00	to taste
115	12	79	0.00	to taste
116	12	80	0.00	to taste
117	13	81	400.00	grams
118	13	82	1.00	pound
119	13	3	4.00	cloves
120	13	83	0.50	cup
121	13	84	3.00	tablespoons
122	13	34	0.25	cup
123	13	50	3.00	tablespoons
124	13	15	2.00	tablespoons
125	13	7	0.00	to taste
126	13	85	0.00	to taste
127	14	30	1.00	cup
128	14	24	1.00	bell pepper
129	14	86	1.00	zucchini
130	14	87	1.00	eggplant
131	14	88	1.00	red onion
132	14	15	3.00	tablespoons
133	14	89	1.00	teaspoon
134	14	90	1.00	teaspoon
135	14	7	0.00	to taste
136	14	60	0.00	to taste
137	15	55	2.00	cups
138	15	51	1.00	cup
139	15	91	1.00	cup
140	15	92	2.00	teaspoons
141	15	56	0.50	teaspoon
142	15	7	0.25	teaspoon
143	15	50	0.75	cup
144	15	53	2.00	large
145	15	93	1.00	cup
146	15	94	1.00	tablespoon
147	16	95	4.00	salmon fillets
148	16	27	0.50	cup
149	16	36	3.00	tablespoons
150	16	96	2.00	tablespoons
151	16	29	1.00	tablespoon
152	16	3	2.00	cloves
153	16	97	1.00	cup
154	16	98	1.00	carrot
155	16	99	2.00	cups
156	16	100	0.00	to taste
157	17	101	1.00	large mango
158	17	102	2.00	ripe avocados
159	17	88	0.50	red onion
160	17	103	1.00	jalape├▒o
161	17	42	0.25	cup
162	17	44	1.00	lime
163	17	104	1.00	teaspoon
164	17	7	0.00	to taste
165	17	8	0.00	to taste
166	18	105	1.00	medium butternut squash
167	18	2	1.00	onion
168	18	25	2.00	carrots
169	18	106	2.00	celery stalks
170	18	3	3.00	cloves
171	18	47	4.00	cups
172	18	107	1.00	teaspoon
173	18	108	1.00	teaspoon
174	18	7	0.00	to taste
175	18	15	2.00	tablespoons
176	19	82	1.00	pound
177	19	109	2.00	tablespoons
178	19	15	2.00	tablespoons
179	19	110	1.00	cup
180	19	41	0.25	cup
181	19	111	1.00	tablespoon
182	19	112	8.00	small
183	19	7	0.00	to taste
184	19	113	0.00	to taste
185	19	114	0.00	Optional: hot sauce for extra heat
186	20	67	2.00	cans
187	20	32	1.00	cucumber
188	20	31	1.00	cup
189	20	115	0.50	cup
190	20	88	0.25	cup
191	20	33	0.50	cup
192	20	15	3.00	tablespoons
193	20	116	2.00	tablespoons
194	20	13	1.00	teaspoon
195	20	7	0.00	to taste
196	20	8	0.00	to taste
197	21	117	400.00	grams
198	21	16	2.00	boneless, skinless chicken breasts
199	21	31	1.00	cup
200	21	118	0.50	cup
201	21	119	0.25	cup
202	21	59	1.00	cup
203	21	18	0.50	cup
204	21	120	3.00	tablespoons
205	21	15	2.00	tablespoons
206	21	7	0.00	to taste
207	21	113	0.00	to taste
208	22	121	500.00	grams
209	22	27	2.00	tablespoons
210	22	122	1.00	tablespoon
211	22	123	1.00	tablespoon
212	22	124	1.00	tablespoon
213	22	3	3.00	cloves
214	22	59	1.00	cup
215	22	125	1.00	red chili
216	22	71	2.00	tablespoons
217	22	7	0.00	to taste
218	22	113	0.00	to taste
219	23	126	1.00	cup
220	23	31	1.00	cup
221	23	32	1.00	cucumber
222	23	115	0.50	cup
223	23	127	0.50	cup
224	23	88	0.25	cup
225	23	33	0.50	cup
226	23	15	3.00	tablespoons
227	23	116	2.00	tablespoons
228	23	7	0.00	to taste
229	23	113	0.00	to taste
230	24	95	4.00	salmon fillets
231	24	128	2.00	tablespoons
232	24	36	2.00	tablespoons
233	24	27	1.00	tablespoon
234	24	15	1.00	tablespoon
235	24	129	1.00	teaspoon
236	24	89	1.00	teaspoon
237	24	94	1.00	teaspoon
238	24	7	0.00	to taste
239	24	113	0.00	to taste
240	24	34	0.00	to taste
241	25	16	4.00	boneless, skinless chicken breasts
242	25	130	2.00	cups
243	25	33	1.00	cup
244	25	131	0.50	cup
245	25	3	2.00	cloves
246	25	15	2.00	tablespoons
247	25	13	1.00	teaspoon
248	25	89	1.00	teaspoon
249	25	7	0.00	to taste
250	25	113	0.00	to taste
251	25	132	0.00	to taste
252	26	133	1.00	block
253	26	97	1.00	cup
254	26	24	1.00	bell pepper
255	26	98	1.00	carrot
256	26	26	1.00	cup
257	26	27	3.00	tablespoons
258	26	134	2.00	tablespoons
259	26	28	1.00	tablespoon
260	26	3	2.00	cloves
261	26	7	0.00	to taste
262	26	113	0.00	to taste
263	27	135	4.00	large portobello mushrooms
264	27	31	1.00	cup
265	27	58	1.00	cup
266	27	136	0.25	cup
267	27	60	2.00	tablespoons
268	27	15	2.00	tablespoons
269	27	3	2.00	cloves
270	27	7	0.00	to taste
271	27	113	0.00	to taste
272	27	49	0.00	to taste
273	28	81	400.00	grams
274	28	82	1.00	pound
275	28	3	3.00	cloves
276	28	21	1.00	lemon
277	28	31	0.50	cup
278	28	34	0.25	cup
279	28	15	2.00	tablespoons
280	28	9	2.00	tablespoons
281	28	7	0.00	to taste
282	28	113	0.00	to taste
283	28	85	0.00	to taste
284	29	30	1.00	cup
285	29	137	4.00	large
286	29	138	1.00	can
287	29	139	1.00	cup
288	29	140	1.00	cup
289	29	141	1.00	cup
290	29	104	1.00	teaspoon
291	29	142	1.00	teaspoon
292	29	7	0.00	to taste
293	29	113	0.00	to taste
294	29	42	0.00	for garnish
295	30	143	1.00	cup
296	30	68	2.00	cans
297	30	51	0.75	cup
298	30	54	1.00	teaspoon
299	30	144	1.00	cup
300	30	145	0.25	cup
301	30	146	0.25	cup
302	30	147	0.00	to taste
303	30	148	0.00	for garnish
304	31	149	2.00	cups
305	31	63	1.00	cup
306	31	18	1.00	cup
307	31	50	1.00	cup
308	31	150	3.00	cloves
309	31	7	1.00	teaspoon
310	31	8	1.00	teaspoon
311	31	15	1.00	tablespoon
312	31	62	500.00	grams
313	31	151	1.00	cup
314	31	152	1.00	tablespoon
315	32	138	1.00	cup
316	32	139	1.00	cup
317	32	140	1.00	cup
318	32	88	1.00	cup
319	32	153	1.00	cup
320	32	15	1.00	tablespoon
321	32	154	2.00	teaspoons
322	32	142	1.00	teaspoon
323	32	90	1.00	teaspoon
324	32	129	1.00	teaspoon
325	32	155	1.00	teaspoon
326	32	7	1.00	teaspoon
327	32	8	1.00	teaspoon
328	32	156	1.00	cup
329	32	141	1.00	cup
330	32	41	1.00	cup
331	32	157	1.00	cup
332	32	158	1.00	cup
333	32	42	1.00	cup
334	32	159	12.00	units
335	33	30	1.00	cup
336	33	160	2.00	cups
337	33	31	1.00	cup
338	33	32	1.00	cup
339	33	127	1.00	cup
340	33	161	1.00	cup
341	33	33	1.00	cup
342	33	115	1.00	cup
343	33	88	1.00	cup
344	33	34	1.00	cup
345	33	162	1.00	cup
346	33	116	1.00	tablespoon
347	33	128	1.00	teaspoon
348	33	36	1.00	teaspoon
349	33	7	1.00	teaspoon
350	33	8	1.00	teaspoon
351	34	163	1.00	lb
352	34	27	1.00	cup
353	34	52	1.00	cup
354	34	164	1.00	tablespoon
355	34	150	3.00	cloves
356	34	28	2.00	tablespoons
357	34	165	1.00	tablespoon
358	35	16	4.00	units
359	35	7	1.00	teaspoon
360	35	8	1.00	teaspoon
361	35	111	1.00	tablespoon
362	35	166	2.00	cups
363	35	88	1.00	cup
364	35	127	1.00	cup
365	35	167	1.00	cup
366	35	103	1.00	unit
367	35	44	1.00	unit
368	35	36	1.00	teaspoon
369	36	16	4.00	units
370	36	130	2.00	cups
371	36	33	1.00	cup
372	36	13	1.00	teaspoon
373	36	129	1.00	teaspoon
374	36	155	1.00	teaspoon
375	36	7	1.00	teaspoon
376	36	8	1.00	teaspoon
377	36	15	1.00	tablespoon
378	36	35	1.00	tablespoon
379	37	82	1.00	lb
380	37	81	500.00	grams
381	37	150	4.00	cloves
382	37	85	1.00	teaspoon
383	37	31	1.00	cup
384	37	5	1.00	cup
385	37	83	1.00	cup
386	37	49	1.00	cup
387	37	34	1.00	cup
388	37	21	1.00	unit
389	37	50	1.00	cup
390	38	168	4.00	units
391	38	58	1.00	lb
392	38	59	1.00	cup
393	38	7	1.00	teaspoon
394	38	8	1.00	teaspoon
395	38	60	1.00	cup
396	39	105	1.00	unit
397	39	65	1.00	unit
398	39	150	2.00	cloves
399	39	98	1.00	unit
400	39	169	1.00	unit
401	39	47	4.00	cups
402	39	154	1.00	teaspoon
403	39	170	1.00	teaspoon
404	39	90	1.00	teaspoon
405	39	7	1.00	teaspoon
406	39	8	1.00	teaspoon
407	40	30	1.00	cup
408	40	137	4.00	units
409	40	138	1.00	can
410	40	139	1.00	cup
411	40	140	1.00	cup
412	40	88	1.00	cup
413	40	141	1.00	cup
414	40	104	1.00	teaspoon
415	40	142	1.00	teaspoon
416	40	129	1.00	teaspoon
417	40	155	1.00	teaspoon
418	40	7	1.00	teaspoon
419	40	8	1.00	teaspoon
420	41	117	500.00	grams
421	41	31	1.00	cup
422	41	59	1.00	cup
423	41	18	1.00	cup
424	41	119	1.00	cup
425	41	150	2.00	cloves
426	41	162	1.00	cup
427	41	7	1.00	teaspoon
428	41	8	1.00	teaspoon
429	41	31	1.00	cup
430	42	171	500.00	grams
431	42	172	2.00	cups
432	42	10	1.00	lb
433	42	173	1.00	cup
434	42	174	2.00	cups
435	42	18	1.00	cup
436	42	13	1.00	teaspoon
437	42	14	1.00	teaspoon
438	42	129	1.00	teaspoon
439	42	155	1.00	teaspoon
440	42	7	1.00	teaspoon
441	42	8	1.00	teaspoon
442	43	82	1.00	lb
443	43	150	3.00	cloves
444	43	94	1.00	teaspoon
445	43	35	1.00	tablespoon
446	43	175	1.00	teaspoon
447	43	89	1.00	teaspoon
448	43	7	1.00	teaspoon
449	43	8	1.00	teaspoon
450	43	15	2.00	tablespoons
451	43	9	1.00	tablespoon
452	43	34	1.00	tablespoon
453	44	97	1.00	cup
454	44	153	1.00	cup
455	44	176	1.00	cup
456	44	25	1.00	cup
457	44	6	1.00	cup
458	44	177	1.00	cup
459	44	27	3.00	tablespoons
460	44	122	2.00	tablespoons
461	44	28	1.00	tablespoon
462	44	29	1.00	tablespoon
463	44	150	2.00	cloves
464	44	165	1.00	teaspoon
465	44	124	1.00	teaspoon
466	44	8	1.00	teaspoon
467	45	178	1.00	lb
468	45	179	2.00	tablespoons
469	45	180	1.00	cup
470	45	5	1.00	cup
471	45	52	1.00	tablespoon
472	45	181	1.00	tablespoon
473	45	129	1.00	teaspoon
474	45	155	1.00	teaspoon
475	45	90	1.00	teaspoon
476	45	7	1.00	teaspoon
477	45	8	1.00	teaspoon
478	45	89	1.00	teaspoon
479	45	182	1.00	teaspoon
480	45	183	6.00	units
481	46	184	2.00	units
482	46	185	2.00	cups
483	46	18	1.00	cup
484	46	13	1.00	teaspoon
485	46	14	1.00	teaspoon
486	46	129	1.00	teaspoon
487	46	155	1.00	teaspoon
488	46	7	1.00	teaspoon
489	46	8	1.00	teaspoon
490	46	172	4.00	cups
491	46	186	2.00	cups
492	46	59	1.00	cup
493	47	187	1.00	lb
494	47	31	1.00	cup
495	47	153	1.00	cup
496	47	88	1.00	cup
497	47	86	1.00	cup
498	47	188	1.00	cup
499	47	15	1.00	tablespoon
500	47	150	2.00	cloves
501	47	35	1.00	tablespoon
502	47	13	1.00	teaspoon
503	47	89	1.00	teaspoon
504	47	175	1.00	teaspoon
505	47	7	1.00	teaspoon
506	47	8	1.00	teaspoon
507	48	189	1.00	head
508	48	55	1.00	cup
509	48	190	1.00	cup
510	48	129	1.00	teaspoon
511	48	155	1.00	teaspoon
512	48	90	1.00	teaspoon
513	48	7	1.00	teaspoon
514	48	8	1.00	teaspoon
515	48	191	1.00	cup
516	48	192	2.00	tablespoons
517	48	181	1.00	tablespoon
518	48	36	1.00	tablespoon
519	48	193	1.00	teaspoon
520	49	102	2.00	units
521	49	194	1.00	cup
522	49	68	1.00	cup
523	49	195	1.00	cup
524	49	54	1.00	teaspoon
525	49	196	1.00	teaspoon
526	49	197	1.00	teaspoon
527	49	7	1.00	teaspoon
528	49	198	1.00	cup
529	49	148	1.00	tablespoon
530	50	30	1.00	cup
531	50	137	4.00	units
532	50	138	1.00	can
533	50	139	1.00	cup
534	50	140	1.00	cup
535	50	88	1.00	cup
536	50	141	1.00	cup
537	50	104	1.00	teaspoon
538	50	142	1.00	teaspoon
539	50	129	1.00	teaspoon
540	50	155	1.00	teaspoon
541	50	7	1.00	teaspoon
542	50	8	1.00	teaspoon
\.


--
-- Data for Name: recipe; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.recipe (recipe_id, recipe_name, instructions_desc, course, food_category, prep_time, cook_time, rating_avg, rating_count) FROM stdin;
1	Green Bean Casserole	Step 1: Blanche green beans. Step 2: ... Step 3: ...	Side Dish	Casserole	15	30	\N	0
2	Spaghetti Bolognese	Step 1: Cook spaghetti. Step 2: ... Step 3: ...	Main Dish	Pasta	20	45	\N	0
3	Chicken Caesar Salad	Step 1: Grill chicken. Step 2: ... Step 3: ...	Appetizer	Salad	25	20	\N	0
4	Vegetarian Stir-Fry	Step 1: Prepare vegetables. Step 2: ... Step 3: ...	Main Dish	Stir-Fry	15	20	\N	0
5	Quinoa Salad with Lemon Vinaigrette	Step 1: Cook quinoa. Step 2: ... Step 3: ...	Side Dish	Salad	20	15	\N	0
6	Taco Salad	Step 1: Cook ground beef. Step 2: ... Step 3: ...	Main Dish	Salad	20	15	\N	0
7	Mushroom Risotto	Step 1: Saut├⌐ mushrooms. Step 2: ... Step 3: ...	Main Dish	Risotto	25	30	\N	0
8	Chocolate Chip Cookies	Step 1: Mix ingredients. Step 2: ... Step 3: ...	Dessert	Cookies	15	12	\N	0
9	Caprese Salad	Step 1: Slice tomatoes and mozzarella. Step 2: ... Step 3: ...	Appetizer	Salad	10	0	\N	0
10	Chicken Alfredo Pasta	Step 1: Cook pasta. Step 2: ... Step 3: ...	Main Dish	Pasta	20	25	\N	0
11	Vegetable Curry	Step 1: Saut├⌐ vegetables. Step 2: ... Step 3: ...	Main Dish	Curry	30	25	\N	0
12	Berry Smoothie Bowl	Step 1: Blend berries and yogurt. Step 2: ... Step 3: ...	Breakfast	Smoothie Bowl	10	0	\N	0
13	Shrimp Scampi Pasta	Step 1: Cook pasta. Step 2: ... Step 3: ...	Main Dish	Seafood	15	20	\N	0
14	Roasted Vegetable Quinoa Bowl	Step 1: Roast vegetables. Step 2: ... Step 3: ...	Main Dish	Quinoa Bowl	25	30	\N	0
15	Lemon Blueberry Muffins	Step 1: Mix dry and wet ingredients. Step 2: ... Step 3: ...	Dessert	Muffins	15	25	\N	0
16	Teriyaki Salmon Bowl	Step 1: Marinate salmon. Step 2: ... Step 3: ...	Main Dish	Seafood	20	15	\N	0
17	Mango Avocado Salsa	Step 1: Dice mango and avocado. Step 2: ... Step 3: ...	Appetizer	Salsa	10	0	\N	0
18	Butternut Squash Soup	Step 1: Roast butternut squash. Step 2: ... Step 3: ...	Soup	Vegetarian	15	40	\N	0
19	Cajun Shrimp Tacos	Step 1: Season and cook shrimp. Step 2: ... Step 3: ...	Main Dish	Tacos	20	15	\N	0
20	Mediterranean Chickpea Salad	Step 1: Mix chickpeas and veggies. Step 2: ... Step 3: ...	Salad	Vegetarian	15	0	\N	0
21	Pesto Chicken Penne	Step 1: Cook penne. Step 2: ... Step 3: ...	Main Dish	Pasta	20	25	\N	0
22	Thai Basil Chicken Stir-Fry	Step 1: Stir-fry chicken. Step 2: ... Step 3: ...	Main Dish	Stir-Fry	20	15	\N	0
23	Greek Orzo Salad	Step 1: Cook orzo. Step 2: ... Step 3: ...	Side Dish	Salad	15	10	\N	0
24	Honey Mustard Glazed Salmon	Step 1: Glaze salmon. Step 2: ... Step 3: ...	Main Dish	Seafood	15	20	\N	0
25	Spinach and Feta Stuffed Chicken Breast	Step 1: Butterfly chicken breasts. Step 2: ... Step 3: ...	Main Dish	Chicken	25	30	\N	0
26	Vegetarian Tofu Stir-Fry	Step 1: Press and cube tofu. Step 2: ... Step 3: ...	Main Dish	Stir-Fry	20	15	\N	0
27	Caprese Stuffed Portobello Mushrooms	Step 1: Prep mushrooms. Step 2: ... Step 3: ...	Appetizer	Vegetarian	15	20	\N	0
28	Lemon Garlic Shrimp Pasta	Step 1: Cook pasta. Step 2: ... Step 3: ...	Main Dish	Pasta	15	20	\N	0
29	Quinoa and Black Bean Stuffed Peppers	Step 1: Cook quinoa. Step 2: ... Step 3: ...	Main Dish	Vegetarian	25	30	\N	0
30	Mango Coconut Rice Pudding	Step 1: Cook rice. Step 2: ... Step 3: ...	Dessert	Rice Pudding	20	40	\N	0
31	Chicken Alfredo Pasta	Step 1: Cook pasta according to package instructions. ... Step 3: Garnish with parsley and serve hot.	Main Course	Pasta Dish	\N	\N	\N	0
32	Vegetarian Tacos	Step 1: In a pan, saut├⌐ onions, bell peppers, and garlic. ... Step 3: Spoon the mixture into taco shells and top with desired toppings.	Main Course	Mexican Dish	\N	\N	\N	0
33	Quinoa Salad	Step 1: Rinse quinoa under cold water. ... Step 3: Drizzle the dressing over the salad and toss to combine.	Salad	Vegetarian Dish	15	20	\N	0
34	Teriyaki Chicken Skewers	Step 1: In a bowl, mix soy sauce, brown sugar, ginger, and garlic. ... Step 3: Grill skewers until chicken is cooked through, basting with teriyaki sauce.	Appetizer	Chicken Dish	30	15	\N	0
35	Mango Salsa Chicken	Step 1: Season chicken breasts with salt, pepper, and lime juice. ... Step 3: Spoon mango salsa over grilled chicken and serve.	Main Course	Chicken Dish	15	20	\N	0
36	Spinach and Feta Stuffed Chicken	Step 1: Butterfly chicken breasts and season with salt and pepper. ... Step 3: Bake until chicken is cooked through and cheese is melted.	Main Course	Chicken Dish	20	25	\N	0
37	Shrimp Scampi Pasta	Step 1: Cook pasta according to package instructions. ... Step 3: Toss the shrimp mixture with cooked pasta and garnish with parsley.	Main Course	Seafood Dish	\N	20	\N	0
38	Caprese Salad	Step 1: Slice tomatoes and mozzarella into rounds. ... Step 3: Drizzle balsamic glaze over the salad and garnish with fresh basil.	Salad	Vegetarian Dish	10	\N	\N	0
39	Butternut Squash Soup	Step 1: Roast butternut squash until tender. ... Step 3: Blend until smooth, and serve hot.	Soup	Vegetarian Dish	15	40	\N	0
40	Stuffed Bell Peppers	Step 1: Cook rice according to package instructions. ... Step 3: Bake until peppers are tender and filling is heated through.	Main Course	Vegetarian Dish	30	45	\N	0
41	Pesto Pasta with Cherry Tomatoes	Step 1: Cook pasta according to package instructions. ... Step 3: Toss pasta with pesto sauce, cherry tomatoes, and Parmesan cheese.	Main Course	Pasta Dish	\N	15	\N	0
42	Baked Ziti	Step 1: Cook ziti pasta according to package instructions. ... Step 3: Bake until the cheese is melted and bubbly.	Main Course	Pasta Dish	\N	30	\N	0
43	Lemon Garlic Shrimp	Step 1: Season shrimp with salt, pepper, and garlic powder. ... Step 3: Serve over cooked rice or pasta.	Main Course	Seafood Dish	10	10	\N	0
44	Vegetable Stir-Fry	Step 1: Heat oil in a wok and stir-fry vegetables until crisp-tender. ... Step 3: Serve over rice or noodles.	Main Course	Vegetarian Dish	15	10	\N	0
45	BBQ Pulled Pork Sandwiches	Step 1: Season pork shoulder with BBQ rub and slow-cook until tender. ... Step 3: Shred the pork, mix with BBQ sauce, and serve on buns.	Main Course	Pork Dish	15	8	\N	0
46	Eggplant Parmesan	Step 1: Bread and bake eggplant slices until golden. ... Step 3: Layer eggplant with marinara sauce and cheese, then bake until bubbly.	Main Course	Vegetarian Dish	30	45	\N	0
47	Chicken and Vegetable Skewers	Step 1: Marinate chicken in a lemon-herb marinade. ... Step 3: Grill skewers until chicken is cooked through and veggies are tender.	Main Course	Chicken Dish	20	15	\N	0
48	Cauliflower Buffalo Bites	Step 1: Coat cauliflower florets in a buffalo sauce mixture. ... Step 3: Bake until golden and serve with a side of ranch dressing.	Appetizer	Vegetarian Dish	15	25	\N	0
49	Chocolate Avocado Mousse	Step 1: Blend avocado, cocoa powder, and sweetener until smooth. ... Step 3: Chill in the refrigerator and serve topped with berries.	Dessert	Vegetarian Dish	10	\N	\N	0
50	Savory Quinoa Stuffed Peppers	Step 1: Cook quinoa according to package instructions. ... Step 3: Bake until peppers are tender and filling is heated through.	Main Course	Vegetarian Dish	30	45	\N	0
\.


--
-- Name: ingredient_ingredient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.ingredient_ingredient_id_seq', 198, true);


--
-- Name: quantity_quantity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.quantity_quantity_id_seq', 542, true);


--
-- Name: recipe_recipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.recipe_recipe_id_seq', 50, true);


--
-- Name: ingredient ingredient_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.ingredient
    ADD CONSTRAINT ingredient_pkey PRIMARY KEY (ingredient_id);


--
-- Name: quantity quantity_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.quantity
    ADD CONSTRAINT quantity_pkey PRIMARY KEY (quantity_id);


--
-- Name: recipe recipe_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_pkey PRIMARY KEY (recipe_id);


--
-- PostgreSQL database dump complete
--

