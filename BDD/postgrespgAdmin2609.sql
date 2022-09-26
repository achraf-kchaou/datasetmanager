--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.2

-- Started on 2022-08-11 16:00:16

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
-- TOC entry 209 (class 1259 OID 16395)
-- Name: assoc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.assoc (
    label_id bigint NOT NULL,
    entry_id bigint NOT NULL
);


ALTER TABLE public.assoc OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16433)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    customer_id bigint NOT NULL,
    email_id character varying(255),
    first_name character varying(255),
    last_name character varying(255)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16438)
-- Name: customer_clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_clients (
    customer_customer_id bigint NOT NULL,
    clients_customer_id bigint NOT NULL
);


ALTER TABLE public.customer_clients OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16441)
-- Name: customer_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_customer_id_seq OWNER TO postgres;

--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 218
-- Name: customer_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;


--
-- TOC entry 211 (class 1259 OID 16401)
-- Name: entry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entry (
    id bigint NOT NULL,
    id_ext bigint,
    text character varying(255)
);


ALTER TABLE public.entry OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16400)
-- Name: entry_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.entry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.entry_id_seq OWNER TO postgres;

--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 210
-- Name: entry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.entry_id_seq OWNED BY public.entry.id;


--
-- TOC entry 213 (class 1259 OID 16408)
-- Name: label; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.label (
    id bigint NOT NULL,
    id_ext bigint,
    name character varying(255)
);


ALTER TABLE public.label OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16442)
-- Name: label_entrys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.label_entrys (
    label_id bigint NOT NULL,
    entrys_id bigint NOT NULL
);


ALTER TABLE public.label_entrys OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16407)
-- Name: label_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.label_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.label_id_seq OWNER TO postgres;

--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 212
-- Name: label_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.label_id_seq OWNED BY public.label.id;


--
-- TOC entry 215 (class 1259 OID 16415)
-- Name: tenant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tenant (
    id bigint NOT NULL,
    email character varying(255),
    id_ext bigint,
    name character varying(255)
);


ALTER TABLE public.tenant OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16414)
-- Name: tenant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tenant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tenant_id_seq OWNER TO postgres;

--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 214
-- Name: tenant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tenant_id_seq OWNED BY public.tenant.id;


--
-- TOC entry 3194 (class 2604 OID 16474)
-- Name: customer customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);


--
-- TOC entry 3191 (class 2604 OID 16475)
-- Name: entry id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entry ALTER COLUMN id SET DEFAULT nextval('public.entry_id_seq'::regclass);


--
-- TOC entry 3192 (class 2604 OID 16476)
-- Name: label id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.label ALTER COLUMN id SET DEFAULT nextval('public.label_id_seq'::regclass);


--
-- TOC entry 3193 (class 2604 OID 16418)
-- Name: tenant id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tenant ALTER COLUMN id SET DEFAULT nextval('public.tenant_id_seq'::regclass);


--
-- TOC entry 3352 (class 0 OID 16395)
-- Dependencies: 209
-- Data for Name: assoc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.assoc (label_id, entry_id) FROM stdin;
\.


--
-- TOC entry 3359 (class 0 OID 16433)
-- Dependencies: 216
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (customer_id, email_id, first_name, last_name) FROM stdin;
\.


--
-- TOC entry 3360 (class 0 OID 16438)
-- Dependencies: 217
-- Data for Name: customer_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_clients (customer_customer_id, clients_customer_id) FROM stdin;
\.


--
-- TOC entry 3354 (class 0 OID 16401)
-- Dependencies: 211
-- Data for Name: entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entry (id, id_ext, text) FROM stdin;
1	278	salut 
2	278	salut 
3	278	comment sava 
\.


--
-- TOC entry 3356 (class 0 OID 16408)
-- Dependencies: 213
-- Data for Name: label; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.label (id, id_ext, name) FROM stdin;
1	15	greetings
2	15	greetings
\.


--
-- TOC entry 3362 (class 0 OID 16442)
-- Dependencies: 219
-- Data for Name: label_entrys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.label_entrys (label_id, entrys_id) FROM stdin;
4	6
\.


--
-- TOC entry 3358 (class 0 OID 16415)
-- Dependencies: 215
-- Data for Name: tenant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tenant (id, email, id_ext, name) FROM stdin;
\.


--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 218
-- Name: customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_customer_id_seq', 1, false);


--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 210
-- Name: entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.entry_id_seq', 6, true);


--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 212
-- Name: label_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.label_id_seq', 4, true);


--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 214
-- Name: tenant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tenant_id_seq', 1, false);


--
-- TOC entry 3196 (class 2606 OID 16399)
-- Name: assoc assoc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assoc
    ADD CONSTRAINT assoc_pkey PRIMARY KEY (entry_id, label_id);


--
-- TOC entry 3206 (class 2606 OID 16449)
-- Name: customer_clients customer_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_clients
    ADD CONSTRAINT customer_clients_pkey PRIMARY KEY (customer_customer_id, clients_customer_id);


--
-- TOC entry 3204 (class 2606 OID 16451)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 3198 (class 2606 OID 16406)
-- Name: entry entry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entry
    ADD CONSTRAINT entry_pkey PRIMARY KEY (id);


--
-- TOC entry 3208 (class 2606 OID 16453)
-- Name: label_entrys label_entrys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.label_entrys
    ADD CONSTRAINT label_entrys_pkey PRIMARY KEY (label_id, entrys_id);


--
-- TOC entry 3200 (class 2606 OID 16413)
-- Name: label label_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.label
    ADD CONSTRAINT label_pkey PRIMARY KEY (id);


--
-- TOC entry 3202 (class 2606 OID 16422)
-- Name: tenant tenant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tenant
    ADD CONSTRAINT tenant_pkey PRIMARY KEY (id);


--
-- TOC entry 3209 (class 2606 OID 16423)
-- Name: assoc fk1y8b1834jnigq8l6vi0c00w2e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assoc
    ADD CONSTRAINT fk1y8b1834jnigq8l6vi0c00w2e FOREIGN KEY (entry_id) REFERENCES public.entry(id);


--
-- TOC entry 3211 (class 2606 OID 16454)
-- Name: customer_clients fk6islj6t50cmvckouxb7mpwtvc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_clients
    ADD CONSTRAINT fk6islj6t50cmvckouxb7mpwtvc FOREIGN KEY (clients_customer_id) REFERENCES public.customer(customer_id);


--
-- TOC entry 3210 (class 2606 OID 16428)
-- Name: assoc fk80bwouv91uulykvogormtdhn5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assoc
    ADD CONSTRAINT fk80bwouv91uulykvogormtdhn5 FOREIGN KEY (label_id) REFERENCES public.label(id);


--
-- TOC entry 3212 (class 2606 OID 16469)
-- Name: customer_clients fkpx9d19dd62ikocyvjo77yelw2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_clients
    ADD CONSTRAINT fkpx9d19dd62ikocyvjo77yelw2 FOREIGN KEY (customer_customer_id) REFERENCES public.customer(customer_id);


-- Completed on 2022-08-11 16:00:16

--
-- PostgreSQL database dump complete
--

