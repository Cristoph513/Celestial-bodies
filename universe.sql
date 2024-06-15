--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    age_in_millios_of_years numeric(20,2),
    distance_from_earth numeric(20,2),
    galaxy_types_id integer,
    number_stars integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    age_in_millios_of_years numeric(20,2),
    distance_from_earth numeric(20,2),
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    age_in_millios_of_years numeric(20,2),
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric(20,2),
    star_id integer,
    planet_types_id integer,
    number_moons integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    galaxy_id integer,
    age_in_millios_of_years numeric(20,2),
    distance_from_earth numeric(20,2)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nebulosa de andromeda', 150000.00, 120000.00, 1, 1000);
INSERT INTO public.galaxy VALUES (3, 'Messier 82', 'Conocida como cigarro', 350000.00, 220000.00, 3, 5000);
INSERT INTO public.galaxy VALUES (4, 'Nube de Magallanes', 'Parece una nebulosa', 3500000.00, 220000.00, 4, 51000);
INSERT INTO public.galaxy VALUES (5, 'Galaxia  IC 3583', 'Forma alargada', 3500000.00, 2120000.00, 3, 14000);
INSERT INTO public.galaxy VALUES (6, 'Galaxia NGC', 'Forma alargada', 3400000.00, 2320000.00, 1, 214000);
INSERT INTO public.galaxy VALUES (7, 'Galaxia NGC 3274', 'Forma en espiral', 8400000.00, 5320000.00, 2, 14000);
INSERT INTO public.galaxy VALUES (8, 'Via lactea', 'Hogar del planeta tierra', 4550000.00, 220000.00, 4, 4100);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Elípticas', 'Elipse');
INSERT INTO public.galaxy_types VALUES (2, 'Espirales', 'Espiral');
INSERT INTO public.galaxy_types VALUES (3, 'Lenticulares', 'Similar a un lente');
INSERT INTO public.galaxy_types VALUES (4, 'Irregulares', 'Forma no definida');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, NULL, NULL, false, true, 1);
INSERT INTO public.moon VALUES (2, 'Febo', NULL, NULL, NULL, false, true, 4);
INSERT INTO public.moon VALUES (3, 'Apolo', NULL, NULL, NULL, false, true, 4);
INSERT INTO public.moon VALUES (4, 'Io', NULL, NULL, NULL, false, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, NULL, NULL, false, true, 5);
INSERT INTO public.moon VALUES (6, 'Gaminedes', NULL, NULL, NULL, false, true, 5);
INSERT INTO public.moon VALUES (7, 'Calisto', NULL, NULL, NULL, false, true, 5);
INSERT INTO public.moon VALUES (8, 'Amaltea', NULL, NULL, NULL, false, true, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', NULL, NULL, NULL, false, true, 5);
INSERT INTO public.moon VALUES (10, 'Pasiphae', NULL, NULL, NULL, false, true, 5);
INSERT INTO public.moon VALUES (11, 'Mimas', NULL, NULL, NULL, false, true, 6);
INSERT INTO public.moon VALUES (12, 'Encelado', NULL, NULL, NULL, false, true, 6);
INSERT INTO public.moon VALUES (13, 'Tetis', NULL, NULL, NULL, false, true, 6);
INSERT INTO public.moon VALUES (14, 'Dione', NULL, NULL, NULL, false, true, 6);
INSERT INTO public.moon VALUES (15, 'Rea', NULL, NULL, NULL, false, true, 6);
INSERT INTO public.moon VALUES (16, 'Titán', NULL, NULL, NULL, false, true, 6);
INSERT INTO public.moon VALUES (17, 'Japeto', NULL, NULL, NULL, false, true, 6);
INSERT INTO public.moon VALUES (18, 'Hyperion', NULL, NULL, NULL, false, true, 6);
INSERT INTO public.moon VALUES (19, 'Ariel', NULL, NULL, NULL, false, true, 7);
INSERT INTO public.moon VALUES (20, 'Umbriel', NULL, NULL, NULL, false, true, 7);
INSERT INTO public.moon VALUES (21, 'Titania', NULL, NULL, NULL, false, true, 7);
INSERT INTO public.moon VALUES (22, 'Oberon', NULL, NULL, NULL, false, true, 7);
INSERT INTO public.moon VALUES (23, 'Miranda', NULL, NULL, NULL, false, true, 7);
INSERT INTO public.moon VALUES (24, 'Tritón', NULL, NULL, NULL, false, true, 8);
INSERT INTO public.moon VALUES (25, 'Nereida', NULL, NULL, NULL, false, true, 8);
INSERT INTO public.moon VALUES (26, 'Náyade', NULL, NULL, NULL, false, true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 'Planeta verde y azul.', NULL, true, true, NULL, 1, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Mercurio', 'Planeta 1', NULL, false, true, NULL, 1, NULL, 0);
INSERT INTO public.planet VALUES (3, 'Venus', 'Planeta 2', NULL, false, true, NULL, 1, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Marte', 'Planeta 4', NULL, false, true, NULL, 1, NULL, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Planeta 5', NULL, false, true, NULL, 1, NULL, 79);
INSERT INTO public.planet VALUES (6, 'Saturno', 'Planeta 6', NULL, false, true, NULL, 1, NULL, 82);
INSERT INTO public.planet VALUES (7, 'Urano', 'Planeta 7', NULL, false, true, NULL, 1, NULL, 28);
INSERT INTO public.planet VALUES (8, 'Neptuno', 'Planeta 8', NULL, false, true, NULL, 1, NULL, 14);
INSERT INTO public.planet VALUES (9, 'Plutón', 'Planeta 9', NULL, false, true, NULL, 1, NULL, 5);
INSERT INTO public.planet VALUES (10, 'Proxima centauri b', 'Planeta alfa centauri', NULL, false, true, NULL, 5, NULL, 0);
INSERT INTO public.planet VALUES (11, 'Proxima centauri b-1', 'Planeta alfa centauri b', NULL, false, true, NULL, 5, NULL, 0);
INSERT INTO public.planet VALUES (12, 'Teegarden', 'Planeta Keppler', NULL, false, true, NULL, 7, NULL, 0);
INSERT INTO public.planet VALUES (13, 'Pandora', 'Planeta avatar  Keppler', NULL, false, true, NULL, 4, NULL, 0);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Solidos', 'Superficie sólida');
INSERT INTO public.planet_types VALUES (2, 'Líquidos', 'Superficie en materia líquida');
INSERT INTO public.planet_types VALUES (3, 'Gaseoso', 'Cumulo de gases sin superficie sólida o en materia líquida visible');
INSERT INTO public.planet_types VALUES (4, 'Otros tipos', 'Composición del núcleo, superficie y/o atmósfera desconocida.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'Sistema solar del planera tierra', 8, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Groombridge', 'Ubicada en andromeda', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'alfa centauri', ' Proxima centauri', 4, NULL, NULL);
INSERT INTO public.star VALUES (4, 'alfa centauri A', ' Proxima centauri a', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'alfa centauri B', ' Proxima centauri b', 4, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Wolf 359', ' Leonis', 5, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Sirio A', 'Sirios Canis A Majoris', 3, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Sirio B', 'Sirios Canis B', 3, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_galaxy_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_types_id_fkey FOREIGN KEY (planet_types_id) REFERENCES public.planet_types(planet_types_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

