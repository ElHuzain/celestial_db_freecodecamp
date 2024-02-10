--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: creature; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.creature (
    creature_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_dangerous boolean
);


ALTER TABLE public.creature OWNER TO freecodecamp;

--
-- Name: creature_creature_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.creature_creature_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.creature_creature_id_seq OWNER TO freecodecamp;

--
-- Name: creature_creature_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.creature_creature_id_seq OWNED BY public.creature.creature_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    has_life boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_gid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_gid_seq OWNER TO freecodecamp;

--
-- Name: galaxy_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_gid_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth numeric(10,3),
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_mid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_mid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_mid_seq OWNER TO freecodecamp;

--
-- Name: moon_mid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_mid_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_pid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_pid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_pid_seq OWNER TO freecodecamp;

--
-- Name: planet_pid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_pid_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_sid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_sid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_sid_seq OWNER TO freecodecamp;

--
-- Name: star_sid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_sid_seq OWNED BY public.star.star_id;


--
-- Name: creature creature_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.creature ALTER COLUMN creature_id SET DEFAULT nextval('public.creature_creature_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_gid_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_mid_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_pid_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_sid_seq'::regclass);


--
-- Data for Name: creature; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.creature VALUES (1, 'Kamatos', true);
INSERT INTO public.creature VALUES (2, 'Sanuo', false);
INSERT INTO public.creature VALUES (3, 'Omgavia', false);
INSERT INTO public.creature VALUES (4, 'Sha-chin', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Bullaton', 34, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Whirlpool', 40, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Pinwheel', 28, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 25, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 35, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Andromeda', 30, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moondom', 'This moon is very moon-like. It moons during the night, and dismoons during daytime.', 43.150, true, false, 10);
INSERT INTO public.moon VALUES (80, 'Lunaland', 'A mysterious moon with ancient ruins and a rich history.', 38.250, false, true, 8);
INSERT INTO public.moon VALUES (81, 'Celestia', 'A beautiful moon with breathtaking landscapes.', 41.800, true, true, 5);
INSERT INTO public.moon VALUES (82, 'Stellaris', 'A small moon with a bright surface and unusual magnetic fields.', 47.600, false, true, 12);
INSERT INTO public.moon VALUES (83, 'Orbitus', 'A moon known for its unique orbit around its planet.', 35.900, false, true, 2);
INSERT INTO public.moon VALUES (84, 'Galactica', 'A moon with vast plains and towering mountains.', 39.750, false, true, 9);
INSERT INTO public.moon VALUES (85, 'Astrum', 'A moon shrouded in mystery and surrounded by cosmic phenomena.', 42.300, false, true, 7);
INSERT INTO public.moon VALUES (86, 'Nebula', 'A moon with swirling clouds and ever-changing colors.', 44.200, false, true, 11);
INSERT INTO public.moon VALUES (87, 'Infinity', 'A moon that seems to stretch to infinity with its vast expanses.', 40.500, false, true, 4);
INSERT INTO public.moon VALUES (88, 'Cosmos', 'A moon with an ethereal beauty and serene atmosphere.', 37.450, true, true, 6);
INSERT INTO public.moon VALUES (89, 'Eclipse', 'A moon that experiences frequent eclipses due to its unique position.', 46.800, false, true, 1);
INSERT INTO public.moon VALUES (90, 'Radiance', 'A moon that emits a radiant glow visible from afar.', 36.700, false, true, 10);
INSERT INTO public.moon VALUES (91, 'Lumina', 'A moon bathed in perpetual light, never experiencing darkness.', 33.900, true, true, 2);
INSERT INTO public.moon VALUES (92, 'Spectra', 'A moon with colorful auroras dancing across its skies.', 48.200, false, true, 5);
INSERT INTO public.moon VALUES (93, 'Nightscape', 'A moon with breathtaking views of the cosmos during the night.', 34.600, false, true, 9);
INSERT INTO public.moon VALUES (94, 'Twilight', 'A moon that transitions between light and darkness in its perpetual twilight.', 45.100, false, true, 11);
INSERT INTO public.moon VALUES (95, 'Lunaris', 'A moon with a mysterious energy source deep within its core.', 39.200, true, true, 1);
INSERT INTO public.moon VALUES (96, 'Harmony', 'A moon where different celestial phenomena coexist in harmony.', 41.300, false, true, 7);
INSERT INTO public.moon VALUES (97, 'Tranquility', 'A moon known for its peaceful and serene atmosphere.', 37.800, false, true, 12);
INSERT INTO public.moon VALUES (98, 'Astrotopia', 'A moon that serves as a haven for astronomers and stargazers.', 43.700, false, true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earthes', 300, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Neroium', 105, false, true, 4);
INSERT INTO public.planet VALUES (4, 'Ruckus', 300, true, true, 1);
INSERT INTO public.planet VALUES (5, 'Armada', 105, false, true, 4);
INSERT INTO public.planet VALUES (6, 'Venus', 400, false, true, 1);
INSERT INTO public.planet VALUES (7, 'Mars', 200, false, true, 2);
INSERT INTO public.planet VALUES (8, 'Jupiter', 1000, false, true, 3);
INSERT INTO public.planet VALUES (9, 'Saturn', 900, false, true, 4);
INSERT INTO public.planet VALUES (10, 'Uranus', 800, false, true, 5);
INSERT INTO public.planet VALUES (11, 'Neptune', 700, false, true, 6);
INSERT INTO public.planet VALUES (12, 'Pluto', 600, false, true, 1);
INSERT INTO public.planet VALUES (13, 'Mercury', 500, false, true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Starrious', 4, false, 1);
INSERT INTO public.star VALUES (2, 'Zatteri', 1, true, 1);
INSERT INTO public.star VALUES (3, 'Odum', 99, true, 2);
INSERT INTO public.star VALUES (4, 'Farre', 2, true, 3);
INSERT INTO public.star VALUES (5, 'Raddos', 4, false, 5);
INSERT INTO public.star VALUES (6, 'Rak', 4, false, 6);


--
-- Name: creature_creature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.creature_creature_id_seq', 4, true);


--
-- Name: galaxy_gid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_gid_seq', 6, true);


--
-- Name: moon_mid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_mid_seq', 98, true);


--
-- Name: planet_pid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_pid_seq', 13, true);


--
-- Name: star_sid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_sid_seq', 6, true);


--
-- Name: creature creature_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.creature
    ADD CONSTRAINT creature_name_key UNIQUE (name);


--
-- Name: creature creature_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.creature
    ADD CONSTRAINT creature_pkey PRIMARY KEY (creature_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

