--
-- PostgreSQL database dump
--

\restrict MvfdMXc8xGdNbQVxgWv0KaemfYID5geMEFkQQeLhyWDckFamcJwFsXTbkOCOZn2

-- Dumped from database version 16.16
-- Dumped by pg_dump version 16.16

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

ALTER TABLE IF EXISTS ONLY public.visits DROP CONSTRAINT IF EXISTS visits_pkey;
ALTER TABLE IF EXISTS public.visits ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.visits_id_seq;
DROP TABLE IF EXISTS public.visits;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: visits; Type: TABLE; Schema: public; Owner: appuser
--

CREATE TABLE public.visits (
    id integer NOT NULL,
    ts timestamp without time zone DEFAULT now()
);


ALTER TABLE public.visits OWNER TO appuser;

--
-- Name: visits_id_seq; Type: SEQUENCE; Schema: public; Owner: appuser
--

CREATE SEQUENCE public.visits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.visits_id_seq OWNER TO appuser;

--
-- Name: visits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: appuser
--

ALTER SEQUENCE public.visits_id_seq OWNED BY public.visits.id;


--
-- Name: visits id; Type: DEFAULT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public.visits ALTER COLUMN id SET DEFAULT nextval('public.visits_id_seq'::regclass);


--
-- Data for Name: visits; Type: TABLE DATA; Schema: public; Owner: appuser
--

COPY public.visits (id, ts) FROM stdin;
1	2026-11-22 19:05:51.87195
2	2026-11-22 19:05:54.865236
3	2026-11-22 19:05:54.899882
4	2026-11-22 19:05:54.927267
5	2026-11-22 19:10:59.906431
38	2026-11-22 19:16:37.447572
\.


--
-- Name: visits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: appuser
--

SELECT pg_catalog.setval('public.visits_id_seq', 38, true);


--
-- Name: visits visits_pkey; Type: CONSTRAINT; Schema: public; Owner: appuser
--

ALTER TABLE ONLY public.visits
    ADD CONSTRAINT visits_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict MvfdMXc8xGdNbQVxgWv0KaemfYID5geMEFkQQeLhyWDckFamcJwFsXTbkOCOZn2

