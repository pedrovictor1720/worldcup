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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (35, 2018, 'Final', 4, 508, 509, 2);
INSERT INTO public.games VALUES (36, 2018, 'Third Place', 2, 510, 511, 0);
INSERT INTO public.games VALUES (37, 2018, 'Semi-Final', 2, 509, 511, 1);
INSERT INTO public.games VALUES (38, 2018, 'Semi-Final', 1, 508, 510, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 3, 509, 512, 2);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 2, 511, 513, 0);
INSERT INTO public.games VALUES (41, 2018, 'Quarter-Final', 2, 510, 514, 1);
INSERT INTO public.games VALUES (42, 2018, 'Quarter-Final', 2, 508, 515, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 2, 511, 516, 1);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 1, 513, 517, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 3, 510, 518, 2);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 2, 514, 519, 0);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 2, 509, 520, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 2, 512, 521, 1);
INSERT INTO public.games VALUES (49, 2018, 'Eighth-Final', 2, 515, 522, 1);
INSERT INTO public.games VALUES (50, 2018, 'Eighth-Final', 4, 508, 523, 3);
INSERT INTO public.games VALUES (51, 2014, 'Final', 1, 524, 523, 0);
INSERT INTO public.games VALUES (52, 2014, 'Third Place', 3, 525, 514, 0);
INSERT INTO public.games VALUES (53, 2014, 'Semi-Final', 1, 523, 525, 0);
INSERT INTO public.games VALUES (54, 2014, 'Semi-Final', 7, 524, 514, 1);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 1, 525, 526, 0);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 1, 523, 510, 0);
INSERT INTO public.games VALUES (57, 2014, 'Quarter-Final', 2, 514, 516, 1);
INSERT INTO public.games VALUES (58, 2014, 'Quarter-Final', 1, 524, 508, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 2, 514, 527, 1);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 2, 516, 515, 0);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 2, 508, 528, 0);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 2, 524, 529, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 2, 525, 519, 1);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 2, 526, 530, 1);
INSERT INTO public.games VALUES (65, 2014, 'Eighth-Final', 1, 523, 517, 0);
INSERT INTO public.games VALUES (66, 2014, 'Eighth-Final', 2, 510, 531, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (508, 'France');
INSERT INTO public.teams VALUES (509, 'Croatia');
INSERT INTO public.teams VALUES (510, 'Belgium');
INSERT INTO public.teams VALUES (511, 'England');
INSERT INTO public.teams VALUES (512, 'Russia');
INSERT INTO public.teams VALUES (513, 'Sweden');
INSERT INTO public.teams VALUES (514, 'Brazil');
INSERT INTO public.teams VALUES (515, 'Uruguay');
INSERT INTO public.teams VALUES (516, 'Colombia');
INSERT INTO public.teams VALUES (517, 'Switzerland');
INSERT INTO public.teams VALUES (518, 'Japan');
INSERT INTO public.teams VALUES (519, 'Mexico');
INSERT INTO public.teams VALUES (520, 'Denmark');
INSERT INTO public.teams VALUES (521, 'Spain');
INSERT INTO public.teams VALUES (522, 'Portugal');
INSERT INTO public.teams VALUES (523, 'Argentina');
INSERT INTO public.teams VALUES (524, 'Germany');
INSERT INTO public.teams VALUES (525, 'Netherlands');
INSERT INTO public.teams VALUES (526, 'Costa Rica');
INSERT INTO public.teams VALUES (527, 'Chile');
INSERT INTO public.teams VALUES (528, 'Nigeria');
INSERT INTO public.teams VALUES (529, 'Algeria');
INSERT INTO public.teams VALUES (530, 'Greece');
INSERT INTO public.teams VALUES (531, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 66, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 531, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

