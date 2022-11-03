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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    month_best_viewed character varying(30),
    galaxy_id integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth numeric,
    diameter integer,
    description text
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
    name character varying(50) NOT NULL,
    description text,
    is_only_moon boolean,
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
    name character varying(50) NOT NULL,
    has_life boolean,
    description text,
    star_id integer,
    diameter integer
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
    name character varying(50) NOT NULL,
    type character varying(30),
    constellation character varying(50),
    galaxy_id integer,
    magnitude integer
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Sagittarius', 'The Archer', 'June', 1);
INSERT INTO public.constellation VALUES (2, 'Andromeda', 'The Chained Woman', 'October', 2);
INSERT INTO public.constellation VALUES (3, 'Ursa Major', 'The Great Bear', 'ALL', 3);
INSERT INTO public.constellation VALUES (4, 'Corvius', 'The Crow', 'May', 4);
INSERT INTO public.constellation VALUES (5, 'Centaurus', 'The Centaur', 'May', 5);
INSERT INTO public.constellation VALUES (6, 'Sculptor', 'The Sculptor', 'November', 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 26996, 87400, 'Barred spiral galaxy containing earth''s solar system and up to 400 billion stars');
INSERT INTO public.galaxy VALUES (3, 'Bode''s Galaxy', 12000000, 90000, 'Named for Johann Elert Bode, who discovered this galaxy in 1774.');
INSERT INTO public.galaxy VALUES (4, 'Antennae Galaxies', 45000000, 500000, 'The Antennae Galaxies are undergoing a galactic collision and resemble an insect''s antennae.');
INSERT INTO public.galaxy VALUES (5, 'Backward Galaxy', 111000000, NULL, 'It appears to rotate backwards, as the tips of the spiral arms point in the direction of rotation.');
INSERT INTO public.galaxy VALUES (6, 'Cartwheel Galaxy', 500000000, 144300, 'Its visual appearance is similar to that of a spoked cartwheel.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2500000, 152000, 'Andromeda is the closest galaxy to the Milky Way.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Moon of Earth', true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Moon of Mars', false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Moon of Mars', false, 4);
INSERT INTO public.moon VALUES (4, 'Europa', 'Moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'Moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (6, 'Io', 'Moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (12, 'Tethys', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (13, 'Enceladus', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (14, 'Mimas', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (15, 'Hyperion', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (16, 'Naiad', 'Moon of Neptune', false, 8);
INSERT INTO public.moon VALUES (17, 'Thalassa', 'Moon of Neptune', false, 8);
INSERT INTO public.moon VALUES (18, 'Galatea', 'Moon of Neptune', false, 8);
INSERT INTO public.moon VALUES (19, 'Larissa', 'Moon of Neptune', false, 8);
INSERT INTO public.moon VALUES (20, 'Hippocamp', 'Moon of Neptune', false, 8);
INSERT INTO public.moon VALUES (21, 'Proteus', 'Moon of Neptune', false, 8);
INSERT INTO public.moon VALUES (22, 'Miranda', 'Moon of Uranus', false, 7);
INSERT INTO public.moon VALUES (23, 'Ariel', 'Moon of Uranus', false, 7);
INSERT INTO public.moon VALUES (24, 'Umbriel', 'Moon of Uranus', false, 7);
INSERT INTO public.moon VALUES (25, 'Titania', 'Moon of Uranus', false, 7);
INSERT INTO public.moon VALUES (26, 'Oberon', 'Moon of Uranus', false, 7);
INSERT INTO public.moon VALUES (27, 'Styx', 'Moon of Pluto', false, 9);
INSERT INTO public.moon VALUES (28, 'Nix', 'Moon of Pluto', false, 9);
INSERT INTO public.moon VALUES (29, 'Kerberos', 'Moon of Pluto', false, 9);
INSERT INTO public.moon VALUES (30, 'Hydra', 'Moon of Pluto', false, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 'first planet in the solar system', 1, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', false, 'second planet in the solar system', 1, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', true, 'third planet in the solar system', 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', false, 'fourth planet in the solar system', 1, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 'fifth planet in the solar system', 1, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 'sixth planet in the solar system', 1, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 'seventh planet in the solar system', 1, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 'eighth planet in the solar system', 1, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 'non planet in the solar system', 1, NULL);
INSERT INTO public.planet VALUES (10, 'Eris', false, 'dwarf planet', 1, NULL);
INSERT INTO public.planet VALUES (11, 'Makemake', false, 'dwarf planet', 1, NULL);
INSERT INTO public.planet VALUES (12, 'Haumea', false, 'dwarf planet', 1, NULL);
INSERT INTO public.planet VALUES (13, 'Ceres', false, 'dwarf planet', 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 'yellow dwarf', 'Cassiopeia', 1, 5);
INSERT INTO public.star VALUES (2, 'Alpheratz', 'mercury magnese', 'Pegasus', 2, 1);
INSERT INTO public.star VALUES (3, 'Lyra', 'blue tinged white', 'Lyra', 1, 0);
INSERT INTO public.star VALUES (4, 'Antares', 'red supergiant', 'Scorpius', 1, 1);
INSERT INTO public.star VALUES (5, 'Polaris', 'yellow supergiant', 'Ursa Minor', 1, 9);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 'red supergiant', 'Orion', 1, 2);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 30, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 22, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellation constellation_constellation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_constellation_id_key UNIQUE (constellation_id);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: constellation constellation_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

