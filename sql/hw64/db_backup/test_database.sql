--
-- PostgreSQL database dump
--

-- Dumped from database version 13.5 (Debian 13.5-1.pgdg110+1)
-- Dumped by pg_dump version 13.5 (Debian 13.5-1.pgdg110+1)

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
-- Name: orders; Type: TABLE; Schema: public; Owner: evgen
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    title character varying(80) NOT NULL,
    price integer DEFAULT 0,
    UNIQUE (title)
);


ALTER TABLE public.orders OWNER TO evgen;

--
-- Name: orders_0_499; Type: TABLE; Schema: public; Owner: evgen
--

CREATE TABLE public.orders_0_499 (
    CONSTRAINT orders_0_499_price_check CHECK ((price < 499))
)
INHERITS (public.orders);


ALTER TABLE public.orders_0_499 OWNER TO evgen;

--
-- Name: orders_499_1000; Type: TABLE; Schema: public; Owner: evgen
--

CREATE TABLE public.orders_499_1000 (
    CONSTRAINT orders_499_1000_price_check CHECK ((price >= 499))
)
INHERITS (public.orders);


ALTER TABLE public.orders_499_1000 OWNER TO evgen;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: evgen
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO evgen;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evgen
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: evgen
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: orders_0_499 id; Type: DEFAULT; Schema: public; Owner: evgen
--

ALTER TABLE ONLY public.orders_0_499 ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: orders_0_499 price; Type: DEFAULT; Schema: public; Owner: evgen
--

ALTER TABLE ONLY public.orders_0_499 ALTER COLUMN price SET DEFAULT 0;


--
-- Name: orders_499_1000 id; Type: DEFAULT; Schema: public; Owner: evgen
--

ALTER TABLE ONLY public.orders_499_1000 ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: orders_499_1000 price; Type: DEFAULT; Schema: public; Owner: evgen
--

ALTER TABLE ONLY public.orders_499_1000 ALTER COLUMN price SET DEFAULT 0;


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: evgen
--

COPY public.orders (id, title, price) FROM stdin;
1	War and peace	100
2	My little database	500
3	Adventure psql time	300
4	Server gravity falls	300
5	Log gossips	123
6	WAL never lies	900
7	Me and my bash-pet	499
8	Dbiezdmin	501
\.


--
-- Data for Name: orders_0_499; Type: TABLE DATA; Schema: public; Owner: evgen
--

COPY public.orders_0_499 (id, title, price) FROM stdin;
\.


--
-- Data for Name: orders_499_1000; Type: TABLE DATA; Schema: public; Owner: evgen
--

COPY public.orders_499_1000 (id, title, price) FROM stdin;
\.


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evgen
--

SELECT pg_catalog.setval('public.orders_id_seq', 8, true);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: evgen
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

