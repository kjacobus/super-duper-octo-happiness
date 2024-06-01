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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    num_guesses integer NOT NULL,
    secret_num integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 14, 946, 945);
INSERT INTO public.games VALUES (2, 14, 302, 301);
INSERT INTO public.games VALUES (3, 15, 986, 985);
INSERT INTO public.games VALUES (4, 15, 153, 152);
INSERT INTO public.games VALUES (5, 14, 62, 59);
INSERT INTO public.games VALUES (6, 14, 810, 808);
INSERT INTO public.games VALUES (7, 14, 454, 453);
INSERT INTO public.games VALUES (8, 2, 8, 546);
INSERT INTO public.games VALUES (9, 16, 807, 806);
INSERT INTO public.games VALUES (10, 16, 294, 293);
INSERT INTO public.games VALUES (11, 17, 903, 902);
INSERT INTO public.games VALUES (12, 17, 653, 652);
INSERT INTO public.games VALUES (13, 16, 222, 219);
INSERT INTO public.games VALUES (14, 16, 581, 579);
INSERT INTO public.games VALUES (15, 16, 784, 783);
INSERT INTO public.games VALUES (16, 18, 294, 293);
INSERT INTO public.games VALUES (17, 18, 607, 606);
INSERT INTO public.games VALUES (18, 19, 688, 687);
INSERT INTO public.games VALUES (19, 19, 463, 462);
INSERT INTO public.games VALUES (20, 18, 16, 13);
INSERT INTO public.games VALUES (21, 18, 316, 314);
INSERT INTO public.games VALUES (22, 18, 988, 987);
INSERT INTO public.games VALUES (23, 20, 282, 281);
INSERT INTO public.games VALUES (24, 20, 595, 594);
INSERT INTO public.games VALUES (25, 21, 886, 885);
INSERT INTO public.games VALUES (26, 21, 52, 51);
INSERT INTO public.games VALUES (27, 20, 723, 720);
INSERT INTO public.games VALUES (28, 20, 629, 627);
INSERT INTO public.games VALUES (29, 20, 335, 334);
INSERT INTO public.games VALUES (30, 22, 221, 220);
INSERT INTO public.games VALUES (31, 22, 777, 776);
INSERT INTO public.games VALUES (32, 23, 94, 93);
INSERT INTO public.games VALUES (33, 23, 658, 657);
INSERT INTO public.games VALUES (34, 22, 125, 122);
INSERT INTO public.games VALUES (35, 22, 288, 286);
INSERT INTO public.games VALUES (36, 22, 372, 371);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'anambe');
INSERT INTO public.users VALUES (2, 'asdf');
INSERT INTO public.users VALUES (3, 'user_1717250622745');
INSERT INTO public.users VALUES (4, 'user_1717250622744');
INSERT INTO public.users VALUES (5, 'adsf');
INSERT INTO public.users VALUES (6, 'f');
INSERT INTO public.users VALUES (7, 'a');
INSERT INTO public.users VALUES (8, 'k');
INSERT INTO public.users VALUES (9, 'user_1717252893687');
INSERT INTO public.users VALUES (10, 'user_1717252893686');
INSERT INTO public.users VALUES (11, 'adf');
INSERT INTO public.users VALUES (12, 'user_1717253123169');
INSERT INTO public.users VALUES (13, 'user_1717253123168');
INSERT INTO public.users VALUES (14, 'user_1717253237471');
INSERT INTO public.users VALUES (15, 'user_1717253237470');
INSERT INTO public.users VALUES (16, 'user_1717253309619');
INSERT INTO public.users VALUES (17, 'user_1717253309618');
INSERT INTO public.users VALUES (18, 'user_1717253360484');
INSERT INTO public.users VALUES (19, 'user_1717253360483');
INSERT INTO public.users VALUES (20, 'user_1717253396027');
INSERT INTO public.users VALUES (21, 'user_1717253396026');
INSERT INTO public.users VALUES (22, 'user_1717253502077');
INSERT INTO public.users VALUES (23, 'user_1717253502076');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 36, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 23, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

