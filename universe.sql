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
-- Name: discoverer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.discoverer (
    discoverer_id integer NOT NULL,
    name character varying(30) NOT NULL,
    birth_year integer
);


ALTER TABLE public.discoverer OWNER TO freecodecamp;

--
-- Name: discoverer_discoverer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.discoverer_discoverer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discoverer_discoverer_id_seq OWNER TO freecodecamp;

--
-- Name: discoverer_discoverer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.discoverer_discoverer_id_seq OWNED BY public.discoverer.discoverer_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year_discovery integer,
    year_birth integer,
    age_billions numeric(10,1),
    description text,
    is_life boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    year_discovery integer,
    year_birth integer,
    age_billions numeric(10,1),
    description text,
    is_life boolean,
    planet_id integer NOT NULL
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
    name character varying(30),
    year_discovery integer,
    year_birth integer,
    age_billions numeric(10,1),
    description text,
    is_life boolean,
    star_id integer NOT NULL
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year_discovery integer,
    year_birth integer,
    age_billions numeric(10,1),
    description text,
    is_life boolean,
    galaxy_id integer NOT NULL
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
-- Name: discoverer discoverer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discoverer ALTER COLUMN discoverer_id SET DEFAULT nextval('public.discoverer_discoverer_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: discoverer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.discoverer VALUES (1, 'Galileo Galilei', 1564);
INSERT INTO public.discoverer VALUES (2, 'Nicolaus Copernicus', 1473);
INSERT INTO public.discoverer VALUES (3, 'Johannes Kepler', 1571);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 1610, 14000000, 14.0, 'Contains solar system', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 965, 10000000, 10.0, 'Near Milky Way', false);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 1519, 1000000, 1.0, 'Black hole found inside November 2021', false);
INSERT INTO public.galaxy VALUES (4, 'Small Magellanic Cloud', 1519, 6500000, 6.5, 'Discovered in the same period by Magallanes', false);
INSERT INTO public.galaxy VALUES (5, 'Messier 81', 1974, 13000000, 13.1, 'Located in Ursa Major constellation', false);
INSERT INTO public.galaxy VALUES (6, 'CartWheel Galaxy', 1941, 2, 0.2, 'Created by collision', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 1960, NULL, NULL, 'only one', false, 4);
INSERT INTO public.moon VALUES (2, 'Adrastea', 1979, NULL, NULL, 'Discovered by Voyager Science team', false, 6);
INSERT INTO public.moon VALUES (3, 'Amaltea', 1892, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (4, 'Ananke', 1951, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (5, 'Aoede', 2003, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (6, 'Autonoe', 2001, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (7, 'Callirrhoe', 1999, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (8, 'Carme', 1938, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (9, 'Carpo', 2003, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (10, 'Chaldene', 2000, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (11, 'Cyllene', 2003, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (12, 'Eirene', 2003, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (13, 'Elara', 1905, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (14, 'Erinome', 2000, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (15, 'Ersa', 2017, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (16, 'Euanthe', 2001, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (17, 'Eukelade', 2003, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (18, 'Eupheme', 2003, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (19, 'Euporie', 2001, NULL, NULL, 'no info', false, 6);
INSERT INTO public.moon VALUES (20, 'Eurydome', 2001, NULL, NULL, 'no info', false, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'PA-99-N2', 1999, NULL, NULL, 'Detected in lensing event', false, 8);
INSERT INTO public.planet VALUES (2, 'Mercury', 1631, NULL, NULL, 'first position', false, 2);
INSERT INTO public.planet VALUES (3, 'Venus', 1610, NULL, NULL, 'Second  position', false, 2);
INSERT INTO public.planet VALUES (4, 'Earth', 0, NULL, NULL, 'Third  position', true, 2);
INSERT INTO public.planet VALUES (5, 'Mars', 1610, NULL, NULL, 'Fourth position', false, 2);
INSERT INTO public.planet VALUES (6, 'Jupiter', 1610, NULL, NULL, 'Fifth position', false, 2);
INSERT INTO public.planet VALUES (7, 'Saturn', 1610, NULL, NULL, 'sixth position', false, 2);
INSERT INTO public.planet VALUES (8, 'Uranus', 1781, NULL, NULL, 'seventh position', false, 2);
INSERT INTO public.planet VALUES (9, 'Neptune', 1846, NULL, NULL, 'Eigth position', false, 2);
INSERT INTO public.planet VALUES (10, 'Saffar', 1996, NULL, NULL, 'Also call b', false, 9);
INSERT INTO public.planet VALUES (11, 'Samh', 1999, NULL, NULL, 'Also call c', false, 9);
INSERT INTO public.planet VALUES (12, 'Majriti', 1999, NULL, NULL, 'Also call d', false, 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 1543, 4600000, 4.6, 'Discovered 150 B.C', false, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1836, 10000000, 10.1, 'It can be seen without telescope', false, 1);
INSERT INTO public.star VALUES (5, 'Sirius', 1862, 23, 0.2, 'the name means glowing', false, 1);
INSERT INTO public.star VALUES (6, 'Alpha Andromedae', 1991, 6, 0.1, '97 lightyears from de sun', false, 2);
INSERT INTO public.star VALUES (7, 'Beta Andromedae', 1784, 6, 0.1, '197 lightyears from de sun', false, 2);
INSERT INTO public.star VALUES (8, 'Delta Andromedae', 1784, 6, 0.1, '105 lightyears from de sun', false, 2);
INSERT INTO public.star VALUES (9, 'Upsilon  Andromedae', 1999, NULL, NULL, '44 lightyears from de sun', false, 2);


--
-- Name: discoverer_discoverer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.discoverer_discoverer_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: discoverer discoverer_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discoverer
    ADD CONSTRAINT discoverer_name_key UNIQUE (name);


--
-- Name: discoverer discoverer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discoverer
    ADD CONSTRAINT discoverer_pkey PRIMARY KEY (discoverer_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

