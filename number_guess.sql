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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 262, 1);
INSERT INTO public.games VALUES (2, 399, 1);
INSERT INTO public.games VALUES (3, 203, 2);
INSERT INTO public.games VALUES (4, 478, 2);
INSERT INTO public.games VALUES (5, 382, 1);
INSERT INTO public.games VALUES (6, 246, 1);
INSERT INTO public.games VALUES (7, 141, 1);
INSERT INTO public.games VALUES (8, 820, 3);
INSERT INTO public.games VALUES (9, 111, 3);
INSERT INTO public.games VALUES (10, 731, 4);
INSERT INTO public.games VALUES (11, 840, 4);
INSERT INTO public.games VALUES (12, 168, 3);
INSERT INTO public.games VALUES (13, 961, 3);
INSERT INTO public.games VALUES (14, 380, 3);
INSERT INTO public.games VALUES (15, 211, 5);
INSERT INTO public.games VALUES (16, 242, 5);
INSERT INTO public.games VALUES (17, 824, 6);
INSERT INTO public.games VALUES (18, 927, 6);
INSERT INTO public.games VALUES (19, 746, 5);
INSERT INTO public.games VALUES (20, 727, 5);
INSERT INTO public.games VALUES (21, 124, 5);
INSERT INTO public.games VALUES (22, 344, 7);
INSERT INTO public.games VALUES (23, 727, 7);
INSERT INTO public.games VALUES (24, 87, 8);
INSERT INTO public.games VALUES (25, 182, 8);
INSERT INTO public.games VALUES (26, 497, 7);
INSERT INTO public.games VALUES (27, 923, 7);
INSERT INTO public.games VALUES (28, 436, 7);
INSERT INTO public.games VALUES (29, 364, 9);
INSERT INTO public.games VALUES (30, 921, 9);
INSERT INTO public.games VALUES (31, 608, 10);
INSERT INTO public.games VALUES (32, 907, 10);
INSERT INTO public.games VALUES (33, 303, 9);
INSERT INTO public.games VALUES (34, 341, 9);
INSERT INTO public.games VALUES (35, 228, 9);
INSERT INTO public.games VALUES (36, 312, 11);
INSERT INTO public.games VALUES (37, 996, 11);
INSERT INTO public.games VALUES (38, 537, 12);
INSERT INTO public.games VALUES (39, 143, 12);
INSERT INTO public.games VALUES (40, 272, 11);
INSERT INTO public.games VALUES (41, 647, 11);
INSERT INTO public.games VALUES (42, 844, 11);
INSERT INTO public.games VALUES (43, 75, 13);
INSERT INTO public.games VALUES (44, 945, 13);
INSERT INTO public.games VALUES (45, 926, 14);
INSERT INTO public.games VALUES (46, 406, 14);
INSERT INTO public.games VALUES (47, 440, 13);
INSERT INTO public.games VALUES (48, 510, 13);
INSERT INTO public.games VALUES (49, 158, 13);
INSERT INTO public.games VALUES (50, 417, 15);
INSERT INTO public.games VALUES (51, 692, 15);
INSERT INTO public.games VALUES (52, 296, 16);
INSERT INTO public.games VALUES (53, 584, 16);
INSERT INTO public.games VALUES (54, 532, 15);
INSERT INTO public.games VALUES (55, 818, 15);
INSERT INTO public.games VALUES (56, 433, 15);
INSERT INTO public.games VALUES (57, 299, 17);
INSERT INTO public.games VALUES (58, 700, 17);
INSERT INTO public.games VALUES (59, 845, 18);
INSERT INTO public.games VALUES (60, 3, 18);
INSERT INTO public.games VALUES (61, 921, 17);
INSERT INTO public.games VALUES (62, 904, 17);
INSERT INTO public.games VALUES (63, 987, 17);
INSERT INTO public.games VALUES (64, 737, 19);
INSERT INTO public.games VALUES (65, 684, 19);
INSERT INTO public.games VALUES (66, 20, 20);
INSERT INTO public.games VALUES (67, 645, 20);
INSERT INTO public.games VALUES (68, 811, 19);
INSERT INTO public.games VALUES (69, 371, 19);
INSERT INTO public.games VALUES (70, 490, 19);
INSERT INTO public.games VALUES (71, 290, 21);
INSERT INTO public.games VALUES (72, 198, 21);
INSERT INTO public.games VALUES (73, 29, 22);
INSERT INTO public.games VALUES (74, 351, 22);
INSERT INTO public.games VALUES (75, 624, 21);
INSERT INTO public.games VALUES (76, 450, 21);
INSERT INTO public.games VALUES (77, 485, 21);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1739714039910');
INSERT INTO public.users VALUES (2, 'user_1739714039909');
INSERT INTO public.users VALUES (3, 'user_1739714047942');
INSERT INTO public.users VALUES (4, 'user_1739714047941');
INSERT INTO public.users VALUES (5, 'user_1739714158356');
INSERT INTO public.users VALUES (6, 'user_1739714158355');
INSERT INTO public.users VALUES (7, 'user_1739714296827');
INSERT INTO public.users VALUES (8, 'user_1739714296826');
INSERT INTO public.users VALUES (9, 'user_1739714793067');
INSERT INTO public.users VALUES (10, 'user_1739714793066');
INSERT INTO public.users VALUES (11, 'user_1739714814646');
INSERT INTO public.users VALUES (12, 'user_1739714814645');
INSERT INTO public.users VALUES (13, 'user_1739714865496');
INSERT INTO public.users VALUES (14, 'user_1739714865495');
INSERT INTO public.users VALUES (15, 'user_1739714868475');
INSERT INTO public.users VALUES (16, 'user_1739714868474');
INSERT INTO public.users VALUES (17, 'user_1739714923151');
INSERT INTO public.users VALUES (18, 'user_1739714923150');
INSERT INTO public.users VALUES (19, 'user_1739714931016');
INSERT INTO public.users VALUES (20, 'user_1739714931015');
INSERT INTO public.users VALUES (21, 'user_1739714944357');
INSERT INTO public.users VALUES (22, 'user_1739714944356');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 77, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 22, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

