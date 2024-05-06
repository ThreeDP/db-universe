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
    name character varying(30) NOT NULL,
    known_planets integer,
    description text,
    age_in_millions_of_years integer,
    is_spherical boolean
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
    galaxy_id integer NOT NULL,
    types_id integer NOT NULL,
    name character varying(30),
    galaxy_types_id integer NOT NULL
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
    name character varying(30),
    description text,
    has_life boolean,
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
    name character varying(30) NOT NULL,
    orbit_of_the_star_in_earth_days integer,
    distance_from_earth numeric(20,4),
    description text,
    has_life boolean NOT NULL,
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_id integer NOT NULL,
    types_id integer NOT NULL,
    name character varying(30),
    planet_types_id integer NOT NULL
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
    name character varying(30),
    galaxy_id integer NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric(20,4)
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
-- Name: types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.types (
    types_id integer NOT NULL,
    type character varying(30) NOT NULL,
    name character varying(30)
);


ALTER TABLE public.types OWNER TO freecodecamp;

--
-- Name: types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.types_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_type_id_seq OWNER TO freecodecamp;

--
-- Name: types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.types_type_id_seq OWNED BY public.types.types_id;


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
-- Name: types types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types ALTER COLUMN types_id SET DEFAULT nextval('public.types_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 4000, 'Barred spiral galaxy that contains our Solar System. Home to billions of stars, dust, and gas.', 13600, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda (M31)', 400, 'Giant spiral galaxy and closest neighbor to the Milky Way. Has a prominent disk and a bright halo.', 2500, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy (M33)', 60, 'Barred spiral galaxy in the local Group. Smaller than the Milky Way and Andromeda, but still impressive.', 3000, true);
INSERT INTO public.galaxy VALUES (4, 'NGC 1052', 0, 'Unusual lenticular galaxy with a ring-like structure. Has a supermassive black hole at its center.', 10000, true);
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 150, 'Giant elliptical galaxy in the Virgo Cluster. Home to one of the best-studied supermassive black holes.', 12500, true);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A (NGC 5128)', 60, 'A giant elliptical galaxy in the constelation Centaurus. It is the nearest giant elliptical galaxy to the Milky Way and contains a supermassive black hole at its center. The galaxy is also home to a large amount of dust and gas, which has led to the formation of many new stars.', 13000, true);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 1, NULL, 1);
INSERT INTO public.galaxy_types VALUES (2, 1, NULL, 2);
INSERT INTO public.galaxy_types VALUES (3, 1, NULL, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth"s only natural satellite, it is a rocky body with craters and maria.', true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'A moon of Mars, it is a potato-shaped rock covered in craters.', false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars" other moon, it is an even smaller potato-shaped rock than Phobos.', false, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'A moon of Jupiter with active volcanoes and a sulfur-coated surface.', false, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'A moon of Jupiter with a subsurface ocean of liquid water.', true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'The largest moon in the solar system, Ganymede is a moon of Jupiter with a magnetic field and possibly a subsurface ocean.', false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'A moon of Jupiter with a dark, cratered surface.', false, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn"s largest moon, Titan is the only moon in the solar system with a dense atmosphere and may have lakes of hydrocarbons on its surface.', true, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 'A moon of Saturn with a ring and a cratered surface.', false, 6);
INSERT INTO public.moon VALUES (10, 'Janus', 'A moon of Saturn with two distinct faces, one light and one dark.', false, 6);
INSERT INTO public.moon VALUES (11, 'Mimas', 'A moon of Saturn with a giant crater called Herschel that is almost the size of the moon itself.', false, 6);
INSERT INTO public.moon VALUES (12, 'Ariel', 'A moon of Uranus with a bright surface and many craters.', false, 7);
INSERT INTO public.moon VALUES (13, 'Umbriel', 'A moon of Uranus with a dark surface and many craters.', false, 7);
INSERT INTO public.moon VALUES (14, 'Miranda', 'A moon of Uranus with a strange, chaotic surface.', false, 7);
INSERT INTO public.moon VALUES (15, 'Oberon', 'A moon of Uranus with a dark surface and many craters.', false, 7);
INSERT INTO public.moon VALUES (16, 'Titania', 'The largest moon of Uranus, Titania is a dark, cratered moon.', false, 7);
INSERT INTO public.moon VALUES (17, 'Triton', 'Neptune"s largest moon, Triton is the only large moon in the solar system that orbits in a retrograde direction.', false, 8);
INSERT INTO public.moon VALUES (18, 'Nereid', 'A moon of Neptune with a very eccentric orbit.', false, 8);
INSERT INTO public.moon VALUES (19, 'Proteus', 'A moon of Neptune with an irregular shape and a cratered surface.', false, 8);
INSERT INTO public.moon VALUES (20, 'Larissa', 'A moon of Neptune with a dark, cratered surface.', false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 365, 0.0000, 'A rocky planet with liquid water on its surface and an oxygen-rich atmosphere.', true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 88, 36000000.0000, 'A hot, arid rocky planet with many craters.', false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 225, 26000000.0000, 'A hot, dense planet with a thick, toxic atmosphere.', false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 687, 141000000.0000, 'A cold, dry planet with a thin atmosphere. It has water ice in its polar caps and evidence of past liquid water.', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 11862, 484000000.0000, 'A gas giant with a thick, colorful atmosphere and a Great Red Spot.', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 29459, 887000000.0000, 'A gas giant with prominent rings and many moons.', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 84073, 1792000000.0000, 'A tilted gas giant with a blue-green atmosphere and many moons.', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 164795, 2775000000.0000, 'A cold gas giant with a dark blue atmosphere and many strong winds.', false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 248572, 3948000000.0000, 'An icy dwarf planet with a dark surface and many moons.', false, 1);
INSERT INTO public.planet VALUES (10, 'Eris', 255736, 4247000000.0000, 'An icy dwarf planet with a bright surface and one moon.', false, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', 28319, 3532000000.0000, 'An egg-shaped dwarf planet with a bright surface and two moons.', false, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', 36592, 4227000000.0000, 'An icy dwarf planet with a dark surface and one moon.', false, 1);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 2, NULL, 1);
INSERT INTO public.planet_types VALUES (3, 2, NULL, 2);
INSERT INTO public.planet_types VALUES (6, 3, NULL, 3);
INSERT INTO public.planet_types VALUES (7, 3, NULL, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'Our closest star and the center of our solar system. A Yellow dwar
f star tha provides light and heat for Earth.', 4650, 0.0000);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 'The Brightest star in the night sky. A blue-white main sequence star
that is twice as massive as the Sun.', 250, 8.6000);
INSERT INTO public.star VALUES (3, 'Canopus', 1, 'The second-brightest star in the night sky. A yellow giant star that
 is about 10 times more massive than the Sun.', 7500, 313.0000);
INSERT INTO public.star VALUES (4, 'Rigel', 1, 'The brightest star in the Orion constellation. A bluesupergiant
star that is about 20 times more massive than the Sun.', 120000, 860.0000);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 1, 'A red supergiant star that is one of the largest know than the SU
n and is expected to go supernova in the next few million years.', 600, 640.0000);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 1, 'The closest star to the Sun, located just 4.24 light-years
away. It us a red dwarf star that is too faint to be seen with the naked eye.', 4850, 4.2400);


--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.types VALUES (1, 'Barred Spiral', NULL);
INSERT INTO public.types VALUES (2, 'Terrestrial', NULL);
INSERT INTO public.types VALUES (3, 'Gas Giant', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.types_type_id_seq', 3, true);


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
-- Name: galaxy_types galaxy_types_galaxy_id_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_id_types_id_key UNIQUE (galaxy_id, types_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: planet_types planet_types_planet_id_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_planet_id_types_id_key UNIQUE (planet_id, types_id);


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
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (types_id);


--
-- Name: types types_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_types_id_key UNIQUE (types_id);


--
-- Name: galaxy_types galaxy_types_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy_types galaxy_types_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_type_id_fkey FOREIGN KEY (types_id) REFERENCES public.types(types_id);


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
-- Name: planet_types planet_types_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet_types planet_types_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_type_id_fkey FOREIGN KEY (types_id) REFERENCES public.types(types_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

