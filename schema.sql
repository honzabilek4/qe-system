--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.4

-- Started on 2018-10-11 20:10:45 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12544)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2582 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 207 (class 1259 OID 16469)
-- Name: build; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.build (
    id integer NOT NULL
);


ALTER TABLE public.build OWNER TO janbilek;

--
-- TOC entry 206 (class 1259 OID 16467)
-- Name: build_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.build_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.build_id_seq OWNER TO janbilek;

--
-- TOC entry 2583 (class 0 OID 0)
-- Dependencies: 206
-- Name: build_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.build_id_seq OWNED BY public.build.id;


--
-- TOC entry 221 (class 1259 OID 24705)
-- Name: build_requirement; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.build_requirement (
    id integer NOT NULL,
    build_id integer,
    requirement_id integer
);


ALTER TABLE public.build_requirement OWNER TO janbilek;

--
-- TOC entry 220 (class 1259 OID 24703)
-- Name: build_requirement_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.build_requirement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.build_requirement_id_seq OWNER TO janbilek;

--
-- TOC entry 2584 (class 0 OID 0)
-- Dependencies: 220
-- Name: build_requirement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.build_requirement_id_seq OWNED BY public.build_requirement.id;


--
-- TOC entry 205 (class 1259 OID 16461)
-- Name: component; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.component (
    id integer NOT NULL
);


ALTER TABLE public.component OWNER TO janbilek;

--
-- TOC entry 204 (class 1259 OID 16459)
-- Name: component_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.component_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.component_id_seq OWNER TO janbilek;

--
-- TOC entry 2585 (class 0 OID 0)
-- Dependencies: 204
-- Name: component_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.component_id_seq OWNED BY public.component.id;


--
-- TOC entry 215 (class 1259 OID 24652)
-- Name: component_requirement; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.component_requirement (
    id integer NOT NULL,
    component_id integer,
    requirement_id integer
);


ALTER TABLE public.component_requirement OWNER TO janbilek;

--
-- TOC entry 213 (class 1259 OID 24634)
-- Name: component_version; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.component_version (
    id integer NOT NULL,
    component_id integer,
    version_id integer
);


ALTER TABLE public.component_version OWNER TO janbilek;

--
-- TOC entry 212 (class 1259 OID 24632)
-- Name: component_version_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.component_version_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.component_version_id_seq OWNER TO janbilek;

--
-- TOC entry 2586 (class 0 OID 0)
-- Dependencies: 212
-- Name: component_version_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.component_version_id_seq OWNED BY public.component_version.id;


--
-- TOC entry 214 (class 1259 OID 24650)
-- Name: componet_requirement_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.componet_requirement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.componet_requirement_id_seq OWNER TO janbilek;

--
-- TOC entry 2587 (class 0 OID 0)
-- Dependencies: 214
-- Name: componet_requirement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.componet_requirement_id_seq OWNED BY public.component_requirement.id;


--
-- TOC entry 201 (class 1259 OID 16445)
-- Name: environment; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.environment (
    id integer NOT NULL,
    environment_group_id integer
);


ALTER TABLE public.environment OWNER TO janbilek;

--
-- TOC entry 219 (class 1259 OID 24688)
-- Name: environment_group; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.environment_group (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.environment_group OWNER TO janbilek;

--
-- TOC entry 218 (class 1259 OID 24686)
-- Name: environment_group_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.environment_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.environment_group_id_seq OWNER TO janbilek;

--
-- TOC entry 2588 (class 0 OID 0)
-- Dependencies: 218
-- Name: environment_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.environment_group_id_seq OWNED BY public.environment_group.id;


--
-- TOC entry 200 (class 1259 OID 16443)
-- Name: environment_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.environment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.environment_id_seq OWNER TO janbilek;

--
-- TOC entry 2589 (class 0 OID 0)
-- Dependencies: 200
-- Name: environment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.environment_id_seq OWNED BY public.environment.id;


--
-- TOC entry 203 (class 1259 OID 16453)
-- Name: product; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.product (
    id integer NOT NULL
);


ALTER TABLE public.product OWNER TO janbilek;

--
-- TOC entry 202 (class 1259 OID 16451)
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_seq OWNER TO janbilek;

--
-- TOC entry 2590 (class 0 OID 0)
-- Dependencies: 202
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- TOC entry 197 (class 1259 OID 16426)
-- Name: requirement; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.requirement (
    id integer NOT NULL,
    name character varying,
    description character varying
);


ALTER TABLE public.requirement OWNER TO janbilek;

--
-- TOC entry 196 (class 1259 OID 16424)
-- Name: request_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.request_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.request_id_seq OWNER TO janbilek;

--
-- TOC entry 2591 (class 0 OID 0)
-- Dependencies: 196
-- Name: request_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.request_id_seq OWNED BY public.requirement.id;


--
-- TOC entry 229 (class 1259 OID 24767)
-- Name: requirement_test_case; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.requirement_test_case (
    id integer NOT NULL,
    requirement_id integer,
    test_case_id integer
);


ALTER TABLE public.requirement_test_case OWNER TO janbilek;

--
-- TOC entry 228 (class 1259 OID 24765)
-- Name: requirement_test_case_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.requirement_test_case_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.requirement_test_case_id_seq OWNER TO janbilek;

--
-- TOC entry 2592 (class 0 OID 0)
-- Dependencies: 228
-- Name: requirement_test_case_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.requirement_test_case_id_seq OWNED BY public.requirement_test_case.id;


--
-- TOC entry 217 (class 1259 OID 24670)
-- Name: requirement_version; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.requirement_version (
    id integer NOT NULL,
    requirement_id integer,
    version_id integer
);


ALTER TABLE public.requirement_version OWNER TO janbilek;

--
-- TOC entry 216 (class 1259 OID 24668)
-- Name: requirement_version_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.requirement_version_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.requirement_version_id_seq OWNER TO janbilek;

--
-- TOC entry 2593 (class 0 OID 0)
-- Dependencies: 216
-- Name: requirement_version_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.requirement_version_id_seq OWNED BY public.requirement_version.id;


--
-- TOC entry 209 (class 1259 OID 24618)
-- Name: test_case; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.test_case (
    id integer NOT NULL
);


ALTER TABLE public.test_case OWNER TO janbilek;

--
-- TOC entry 208 (class 1259 OID 24616)
-- Name: test_case_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.test_case_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_case_id_seq OWNER TO janbilek;

--
-- TOC entry 2594 (class 0 OID 0)
-- Dependencies: 208
-- Name: test_case_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.test_case_id_seq OWNED BY public.test_case.id;


--
-- TOC entry 227 (class 1259 OID 24749)
-- Name: test_case_test_suite; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.test_case_test_suite (
    id integer NOT NULL,
    test_case_id integer,
    test_suite_id integer
);


ALTER TABLE public.test_case_test_suite OWNER TO janbilek;

--
-- TOC entry 226 (class 1259 OID 24747)
-- Name: test_case_test_suite_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.test_case_test_suite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_case_test_suite_id_seq OWNER TO janbilek;

--
-- TOC entry 2595 (class 0 OID 0)
-- Dependencies: 226
-- Name: test_case_test_suite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.test_case_test_suite_id_seq OWNED BY public.test_case_test_suite.id;


--
-- TOC entry 223 (class 1259 OID 24723)
-- Name: test_results; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.test_results (
    id integer NOT NULL,
    test_case_id integer,
    test_run_id integer
);


ALTER TABLE public.test_results OWNER TO janbilek;

--
-- TOC entry 222 (class 1259 OID 24721)
-- Name: test_results_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.test_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_results_id_seq OWNER TO janbilek;

--
-- TOC entry 2596 (class 0 OID 0)
-- Dependencies: 222
-- Name: test_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.test_results_id_seq OWNED BY public.test_results.id;


--
-- TOC entry 211 (class 1259 OID 24626)
-- Name: test_run; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.test_run (
    id integer NOT NULL
);


ALTER TABLE public.test_run OWNER TO janbilek;

--
-- TOC entry 210 (class 1259 OID 24624)
-- Name: test_run_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.test_run_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_run_id_seq OWNER TO janbilek;

--
-- TOC entry 2597 (class 0 OID 0)
-- Dependencies: 210
-- Name: test_run_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.test_run_id_seq OWNED BY public.test_run.id;


--
-- TOC entry 225 (class 1259 OID 24741)
-- Name: test_suite; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.test_suite (
    id integer NOT NULL
);


ALTER TABLE public.test_suite OWNER TO janbilek;

--
-- TOC entry 224 (class 1259 OID 24739)
-- Name: test_suite_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.test_suite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_suite_id_seq OWNER TO janbilek;

--
-- TOC entry 2598 (class 0 OID 0)
-- Dependencies: 224
-- Name: test_suite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.test_suite_id_seq OWNED BY public.test_suite.id;


--
-- TOC entry 199 (class 1259 OID 16437)
-- Name: version; Type: TABLE; Schema: public; Owner: janbilek
--

CREATE TABLE public.version (
    id integer NOT NULL
);


ALTER TABLE public.version OWNER TO janbilek;

--
-- TOC entry 198 (class 1259 OID 16435)
-- Name: version_id_seq; Type: SEQUENCE; Schema: public; Owner: janbilek
--

CREATE SEQUENCE public.version_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.version_id_seq OWNER TO janbilek;

--
-- TOC entry 2599 (class 0 OID 0)
-- Dependencies: 198
-- Name: version_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: janbilek
--

ALTER SEQUENCE public.version_id_seq OWNED BY public.version.id;


--
-- TOC entry 2392 (class 2604 OID 16472)
-- Name: build id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.build ALTER COLUMN id SET DEFAULT nextval('public.build_id_seq'::regclass);


--
-- TOC entry 2399 (class 2604 OID 24708)
-- Name: build_requirement id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.build_requirement ALTER COLUMN id SET DEFAULT nextval('public.build_requirement_id_seq'::regclass);


--
-- TOC entry 2391 (class 2604 OID 16464)
-- Name: component id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.component ALTER COLUMN id SET DEFAULT nextval('public.component_id_seq'::regclass);


--
-- TOC entry 2396 (class 2604 OID 24655)
-- Name: component_requirement id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.component_requirement ALTER COLUMN id SET DEFAULT nextval('public.componet_requirement_id_seq'::regclass);


--
-- TOC entry 2395 (class 2604 OID 24637)
-- Name: component_version id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.component_version ALTER COLUMN id SET DEFAULT nextval('public.component_version_id_seq'::regclass);


--
-- TOC entry 2389 (class 2604 OID 16448)
-- Name: environment id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.environment ALTER COLUMN id SET DEFAULT nextval('public.environment_id_seq'::regclass);


--
-- TOC entry 2398 (class 2604 OID 24691)
-- Name: environment_group id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.environment_group ALTER COLUMN id SET DEFAULT nextval('public.environment_group_id_seq'::regclass);


--
-- TOC entry 2390 (class 2604 OID 16456)
-- Name: product id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- TOC entry 2387 (class 2604 OID 16429)
-- Name: requirement id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.requirement ALTER COLUMN id SET DEFAULT nextval('public.request_id_seq'::regclass);


--
-- TOC entry 2403 (class 2604 OID 24770)
-- Name: requirement_test_case id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.requirement_test_case ALTER COLUMN id SET DEFAULT nextval('public.requirement_test_case_id_seq'::regclass);


--
-- TOC entry 2397 (class 2604 OID 24673)
-- Name: requirement_version id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.requirement_version ALTER COLUMN id SET DEFAULT nextval('public.requirement_version_id_seq'::regclass);


--
-- TOC entry 2393 (class 2604 OID 24621)
-- Name: test_case id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.test_case ALTER COLUMN id SET DEFAULT nextval('public.test_case_id_seq'::regclass);


--
-- TOC entry 2402 (class 2604 OID 24752)
-- Name: test_case_test_suite id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.test_case_test_suite ALTER COLUMN id SET DEFAULT nextval('public.test_case_test_suite_id_seq'::regclass);


--
-- TOC entry 2400 (class 2604 OID 24726)
-- Name: test_results id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.test_results ALTER COLUMN id SET DEFAULT nextval('public.test_results_id_seq'::regclass);


--
-- TOC entry 2394 (class 2604 OID 24629)
-- Name: test_run id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.test_run ALTER COLUMN id SET DEFAULT nextval('public.test_run_id_seq'::regclass);


--
-- TOC entry 2401 (class 2604 OID 24744)
-- Name: test_suite id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.test_suite ALTER COLUMN id SET DEFAULT nextval('public.test_suite_id_seq'::regclass);


--
-- TOC entry 2388 (class 2604 OID 16440)
-- Name: version id; Type: DEFAULT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.version ALTER COLUMN id SET DEFAULT nextval('public.version_id_seq'::regclass);


--
-- TOC entry 2416 (class 2606 OID 16474)
-- Name: build build_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.build
    ADD CONSTRAINT build_pkey PRIMARY KEY (id);


--
-- TOC entry 2430 (class 2606 OID 24710)
-- Name: build_requirement build_requirement_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.build_requirement
    ADD CONSTRAINT build_requirement_pkey PRIMARY KEY (id);


--
-- TOC entry 2414 (class 2606 OID 16466)
-- Name: component component_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT component_pkey PRIMARY KEY (id);


--
-- TOC entry 2422 (class 2606 OID 24639)
-- Name: component_version component_version_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.component_version
    ADD CONSTRAINT component_version_pkey PRIMARY KEY (id);


--
-- TOC entry 2424 (class 2606 OID 24657)
-- Name: component_requirement componet_requirement_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.component_requirement
    ADD CONSTRAINT componet_requirement_pkey PRIMARY KEY (id);


--
-- TOC entry 2428 (class 2606 OID 24696)
-- Name: environment_group environment_group_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.environment_group
    ADD CONSTRAINT environment_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2409 (class 2606 OID 16450)
-- Name: environment environment_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.environment
    ADD CONSTRAINT environment_pkey PRIMARY KEY (id);


--
-- TOC entry 2412 (class 2606 OID 16458)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 2405 (class 2606 OID 16431)
-- Name: requirement request_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.requirement
    ADD CONSTRAINT request_pkey PRIMARY KEY (id);


--
-- TOC entry 2438 (class 2606 OID 24772)
-- Name: requirement_test_case requirement_test_case_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.requirement_test_case
    ADD CONSTRAINT requirement_test_case_pkey PRIMARY KEY (id);


--
-- TOC entry 2426 (class 2606 OID 24675)
-- Name: requirement_version requirement_version_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.requirement_version
    ADD CONSTRAINT requirement_version_pkey PRIMARY KEY (id);


--
-- TOC entry 2418 (class 2606 OID 24623)
-- Name: test_case test_case_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.test_case
    ADD CONSTRAINT test_case_pkey PRIMARY KEY (id);


--
-- TOC entry 2436 (class 2606 OID 24754)
-- Name: test_case_test_suite test_case_test_suite_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.test_case_test_suite
    ADD CONSTRAINT test_case_test_suite_pkey PRIMARY KEY (id);


--
-- TOC entry 2432 (class 2606 OID 24728)
-- Name: test_results test_results_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.test_results
    ADD CONSTRAINT test_results_pkey PRIMARY KEY (id);


--
-- TOC entry 2420 (class 2606 OID 24631)
-- Name: test_run test_run_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.test_run
    ADD CONSTRAINT test_run_pkey PRIMARY KEY (id);


--
-- TOC entry 2434 (class 2606 OID 24746)
-- Name: test_suite test_suite_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.test_suite
    ADD CONSTRAINT test_suite_pkey PRIMARY KEY (id);


--
-- TOC entry 2407 (class 2606 OID 16442)
-- Name: version version_pkey; Type: CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.version
    ADD CONSTRAINT version_pkey PRIMARY KEY (id);


--
-- TOC entry 2410 (class 1259 OID 24702)
-- Name: fki_environment_group_fkey; Type: INDEX; Schema: public; Owner: janbilek
--

CREATE INDEX fki_environment_group_fkey ON public.environment USING btree (environment_group_id);


--
-- TOC entry 2446 (class 2606 OID 24711)
-- Name: build_requirement build_fkey; Type: FK CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.build_requirement
    ADD CONSTRAINT build_fkey FOREIGN KEY (build_id) REFERENCES public.build(id);


--
-- TOC entry 2440 (class 2606 OID 24640)
-- Name: component_version component_fkey; Type: FK CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.component_version
    ADD CONSTRAINT component_fkey FOREIGN KEY (component_id) REFERENCES public.component(id);


--
-- TOC entry 2442 (class 2606 OID 24658)
-- Name: component_requirement component_fkey; Type: FK CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.component_requirement
    ADD CONSTRAINT component_fkey FOREIGN KEY (component_id) REFERENCES public.component(id);


--
-- TOC entry 2439 (class 2606 OID 24697)
-- Name: environment environment_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.environment
    ADD CONSTRAINT environment_group_fkey FOREIGN KEY (environment_group_id) REFERENCES public.environment_group(id);


--
-- TOC entry 2443 (class 2606 OID 24663)
-- Name: component_requirement requirement_fkey; Type: FK CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.component_requirement
    ADD CONSTRAINT requirement_fkey FOREIGN KEY (requirement_id) REFERENCES public.requirement(id);


--
-- TOC entry 2444 (class 2606 OID 24676)
-- Name: requirement_version requirement_fkey; Type: FK CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.requirement_version
    ADD CONSTRAINT requirement_fkey FOREIGN KEY (requirement_id) REFERENCES public.requirement(id);


--
-- TOC entry 2447 (class 2606 OID 24716)
-- Name: build_requirement requirement_fkey; Type: FK CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.build_requirement
    ADD CONSTRAINT requirement_fkey FOREIGN KEY (requirement_id) REFERENCES public.requirement(id);


--
-- TOC entry 2452 (class 2606 OID 24773)
-- Name: requirement_test_case requirement_fkey; Type: FK CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.requirement_test_case
    ADD CONSTRAINT requirement_fkey FOREIGN KEY (requirement_id) REFERENCES public.requirement(id);


--
-- TOC entry 2448 (class 2606 OID 24729)
-- Name: test_results test_case_fkey; Type: FK CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.test_results
    ADD CONSTRAINT test_case_fkey FOREIGN KEY (test_case_id) REFERENCES public.test_case(id);


--
-- TOC entry 2450 (class 2606 OID 24755)
-- Name: test_case_test_suite test_case_fkey; Type: FK CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.test_case_test_suite
    ADD CONSTRAINT test_case_fkey FOREIGN KEY (test_case_id) REFERENCES public.test_case(id);


--
-- TOC entry 2453 (class 2606 OID 24778)
-- Name: requirement_test_case test_case_fkey; Type: FK CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.requirement_test_case
    ADD CONSTRAINT test_case_fkey FOREIGN KEY (test_case_id) REFERENCES public.test_case(id);


--
-- TOC entry 2449 (class 2606 OID 24734)
-- Name: test_results test_run_fkey; Type: FK CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.test_results
    ADD CONSTRAINT test_run_fkey FOREIGN KEY (test_run_id) REFERENCES public.test_run(id);


--
-- TOC entry 2451 (class 2606 OID 24760)
-- Name: test_case_test_suite test_suite_fkey; Type: FK CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.test_case_test_suite
    ADD CONSTRAINT test_suite_fkey FOREIGN KEY (test_suite_id) REFERENCES public.test_suite(id);


--
-- TOC entry 2441 (class 2606 OID 24645)
-- Name: component_version version_fkey; Type: FK CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.component_version
    ADD CONSTRAINT version_fkey FOREIGN KEY (version_id) REFERENCES public.version(id);


--
-- TOC entry 2445 (class 2606 OID 24681)
-- Name: requirement_version version_fkey; Type: FK CONSTRAINT; Schema: public; Owner: janbilek
--

ALTER TABLE ONLY public.requirement_version
    ADD CONSTRAINT version_fkey FOREIGN KEY (version_id) REFERENCES public.version(id);


-- Completed on 2018-10-11 20:10:46 CEST

--
-- PostgreSQL database dump complete
--

