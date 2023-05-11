--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: home_car; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_car (
    id bigint NOT NULL,
    name character varying(250) NOT NULL,
    slug character varying(250) NOT NULL,
    discription text NOT NULL,
    main_image character varying(100) NOT NULL,
    price_1_2 character varying(250) NOT NULL,
    price_3_10 character varying(250) NOT NULL,
    price_11_20 character varying(250) NOT NULL,
    acceleration double precision,
    power integer,
    oil character varying(250),
    wd character varying(250),
    year character varying(250)
);


ALTER TABLE public.home_car OWNER TO postgres;

--
-- Name: home_car_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_car_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_car_id_seq OWNER TO postgres;

--
-- Name: home_car_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_car_id_seq OWNED BY public.home_car.id;


--
-- Name: home_car_secondary_img; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_car_secondary_img (
    id bigint NOT NULL,
    name character varying(250) NOT NULL,
    image character varying(100) NOT NULL,
    "N" integer NOT NULL,
    car_id bigint NOT NULL
);


ALTER TABLE public.home_car_secondary_img OWNER TO postgres;

--
-- Name: home_car_secondary_img_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_car_secondary_img_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_car_secondary_img_id_seq OWNER TO postgres;

--
-- Name: home_car_secondary_img_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_car_secondary_img_id_seq OWNED BY public.home_car_secondary_img.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: home_car id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_car ALTER COLUMN id SET DEFAULT nextval('public.home_car_id_seq'::regclass);


--
-- Name: home_car_secondary_img id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_car_secondary_img ALTER COLUMN id SET DEFAULT nextval('public.home_car_secondary_img_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add car	7	add_car
26	Can change car	7	change_car
27	Can delete car	7	delete_car
28	Can view car	7	view_car
29	Can add car_secondary_img	8	add_car_secondary_img
30	Can change car_secondary_img	8	change_car_secondary_img
31	Can delete car_secondary_img	8	delete_car_secondary_img
32	Can view car_secondary_img	8	view_car_secondary_img
33	Can add request	9	add_request
34	Can change request	9	change_request
35	Can delete request	9	delete_request
36	Can view request	9	view_request
37	Can add order	9	add_order
38	Can change order	9	change_order
39	Can delete order	9	delete_order
40	Can view order	9	view_order
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$bbQ5IRQr3MiND9PPcDBDvt$x4BkOtx5ucacLjkL0w/8dfmagQSn3zZZ3g4KKhik4jo=	2022-07-05 17:58:13.47383+03	t	teSedge			teSedge99@gmail.com	t	t	2022-05-15 15:41:46.34762+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-05-24 15:58:54.173515+03	1	BMW M5	1	[{"added": {}}]	7	1
2	2022-06-11 20:30:24.990903+03	1	BMW M5	2	[{"changed": {"fields": ["Image"]}}]	7	1
3	2022-06-11 21:26:16.16349+03	2	BMW_M5_2	1	[{"added": {}}]	8	1
4	2022-06-11 21:26:45.138744+03	3	BMW_M5_3	1	[{"added": {}}]	8	1
5	2022-06-11 21:27:00.712714+03	4	BMW_M5_4	1	[{"added": {}}]	8	1
6	2022-06-11 21:27:10.753721+03	5	BMW_M5_5	1	[{"added": {}}]	8	1
7	2022-06-11 21:27:37.461851+03	6	BMW_M5_6	1	[{"added": {}}]	8	1
8	2022-06-11 21:27:49.790352+03	7	BMW_M5_7	1	[{"added": {}}]	8	1
9	2022-06-11 21:28:11.737555+03	8	BMW_M5_8	1	[{"added": {}}]	8	1
10	2022-06-11 21:55:05.207768+03	2	BMW_M5_2	2	[{"changed": {"fields": ["N"]}}]	8	1
11	2022-06-11 21:55:21.700386+03	2	BMW_M5_2	2	[{"changed": {"fields": ["N"]}}]	8	1
12	2022-06-11 21:55:27.404734+03	3	BMW_M5_3	2	[{"changed": {"fields": ["N"]}}]	8	1
13	2022-06-11 21:55:33.225761+03	3	BMW_M5_3	2	[{"changed": {"fields": ["N"]}}]	8	1
14	2022-06-11 21:55:38.832168+03	4	BMW_M5_4	2	[{"changed": {"fields": ["N"]}}]	8	1
15	2022-06-11 21:55:44.364827+03	5	BMW_M5_5	2	[{"changed": {"fields": ["N"]}}]	8	1
16	2022-06-11 21:55:49.514109+03	6	BMW_M5_6	2	[{"changed": {"fields": ["N"]}}]	8	1
17	2022-06-11 21:55:54.129058+03	7	BMW_M5_7	2	[{"changed": {"fields": ["N"]}}]	8	1
18	2022-06-11 21:55:58.590162+03	6	BMW_M5_6	2	[]	8	1
19	2022-06-11 21:56:01.271946+03	7	BMW_M5_7	2	[]	8	1
20	2022-06-11 21:56:05.491279+03	8	BMW_M5_8	2	[{"changed": {"fields": ["N"]}}]	8	1
21	2022-06-11 22:40:46.928597+03	1	BMW M5	2	[{"changed": {"fields": ["Wd"]}}]	7	1
22	2022-06-11 22:43:14.198692+03	1	BMW M5	2	[{"changed": {"fields": ["Main image", "Power"]}}]	7	1
23	2022-06-11 22:45:02.147456+03	9	BMW_M5_9	1	[{"added": {}}]	8	1
24	2022-06-11 22:45:29.973048+03	10	BMW_M5_10	1	[{"added": {}}]	8	1
25	2022-06-12 19:32:05.664925+03	1	BMW M5	2	[{"changed": {"fields": ["Discription"]}}]	7	1
26	2022-06-12 19:33:03.56291+03	1	BMW M5	2	[{"changed": {"fields": ["Discription"]}}]	7	1
27	2022-06-12 19:40:13.895554+03	1	BMW M5	2	[]	7	1
28	2022-06-12 19:42:21.258998+03	1	BMW M5	2	[{"changed": {"fields": ["Discription"]}}]	7	1
29	2022-06-17 17:58:26.502169+03	1	BMW M5	2	[{"changed": {"fields": ["Acceleration", "Power", "Wd"]}}]	7	1
30	2022-06-17 18:07:57.868366+03	1	BMW M5	2	[{"changed": {"fields": ["Main image"]}}]	7	1
31	2022-06-17 18:17:57.938975+03	1	BMW M5	2	[{"changed": {"fields": ["Main image"]}}]	7	1
32	2022-06-17 18:19:09.625923+03	2	BMW_M5_2	2	[{"changed": {"fields": ["Image"]}}]	8	1
33	2022-06-17 19:13:17.038487+03	2	BMW M4	1	[{"added": {}}]	7	1
34	2022-06-17 19:16:49.763247+03	2	BMW M4	2	[{"changed": {"fields": ["Discription", "Acceleration", "Power", "Oil", "Wd", "Year"]}}]	7	1
35	2022-06-17 19:32:13.199933+03	2	BMW M4	2	[{"changed": {"fields": ["Main image"]}}]	7	1
36	2022-06-17 19:33:30.748926+03	2	BMW M4	2	[{"changed": {"fields": ["Main image"]}}]	7	1
37	2022-06-17 19:36:21.156656+03	1	BMW M5	2	[{"changed": {"fields": ["Main image"]}}]	7	1
38	2022-06-17 19:42:47.080611+03	2	BMW M4	2	[{"changed": {"fields": ["Main image"]}}]	7	1
39	2022-06-17 19:43:08.197786+03	1	BMW M5	2	[{"changed": {"fields": ["Main image"]}}]	7	1
40	2022-06-17 19:44:30.959187+03	11	BMW_M5_1	1	[{"added": {}}]	8	1
41	2022-06-17 19:49:13.965732+03	2	BMW_M5_2	2	[]	8	1
42	2022-06-17 19:51:14.805968+03	12	BMW M4	1	[{"added": {}}]	8	1
43	2022-06-17 19:53:38.449784+03	12	BMW M4_1	2	[{"changed": {"fields": ["Name", "Image", "N"]}}]	8	1
44	2022-06-17 19:54:33.734098+03	13	BMW M4_2	1	[{"added": {}}]	8	1
45	2022-06-17 19:54:50.620231+03	14	BMW M4_3	1	[{"added": {}}]	8	1
46	2022-06-17 19:55:42.377963+03	15	BMW_M4_4	1	[{"added": {}}]	8	1
47	2022-06-17 19:55:58.886704+03	12	BMW_M4_1	2	[{"changed": {"fields": ["Name"]}}]	8	1
48	2022-06-17 19:56:08.273158+03	13	BMW_M4_2	2	[{"changed": {"fields": ["Name"]}}]	8	1
49	2022-06-17 19:56:20.462207+03	14	BMW_M4_3	2	[{"changed": {"fields": ["Name"]}}]	8	1
50	2022-06-17 19:57:22.328016+03	16	BMW_M4_5	1	[{"added": {}}]	8	1
51	2022-06-17 20:05:02.651282+03	11	BMW_M5_1	2	[{"changed": {"fields": ["Image"]}}]	8	1
52	2022-06-17 20:06:33.193241+03	11	BMW_M5_1	2	[{"changed": {"fields": ["Image"]}}]	8	1
53	2022-06-17 20:10:47.226289+03	11	BMW_M5_01	2	[{"changed": {"fields": ["Name"]}}]	8	1
54	2022-06-17 20:11:00.852553+03	2	BMW_M5_02	2	[{"changed": {"fields": ["Name"]}}]	8	1
55	2022-06-17 20:11:10.83684+03	3	BMW_M5_03	2	[{"changed": {"fields": ["Name"]}}]	8	1
56	2022-06-17 20:11:18.175556+03	4	BMW_M5_04	2	[{"changed": {"fields": ["Name"]}}]	8	1
57	2022-06-17 20:11:26.434977+03	5	BMW_M5_05	2	[{"changed": {"fields": ["Name"]}}]	8	1
58	2022-06-17 20:11:32.190064+03	6	BMW_M5_06	2	[{"changed": {"fields": ["Name"]}}]	8	1
59	2022-06-17 20:11:36.400891+03	7	BMW_M5_7	2	[]	8	1
60	2022-06-17 20:11:41.584479+03	7	BMW_M5_07	2	[{"changed": {"fields": ["Name"]}}]	8	1
61	2022-06-17 20:11:46.086834+03	8	BMW_M5_08	2	[{"changed": {"fields": ["Name"]}}]	8	1
62	2022-06-17 20:11:52.182971+03	9	BMW_M5_09	2	[{"changed": {"fields": ["Name"]}}]	8	1
63	2022-06-17 20:11:58.735269+03	12	BMW_M4_01	2	[{"changed": {"fields": ["Name"]}}]	8	1
64	2022-06-17 20:12:03.407585+03	13	BMW_M4_02	2	[{"changed": {"fields": ["Name"]}}]	8	1
65	2022-06-17 20:12:07.220297+03	14	BMW_M4_03	2	[{"changed": {"fields": ["Name"]}}]	8	1
66	2022-06-17 20:12:11.175098+03	15	BMW_M4_04	2	[{"changed": {"fields": ["Name"]}}]	8	1
67	2022-06-17 20:12:14.649565+03	16	BMW_M4_05	2	[{"changed": {"fields": ["Name"]}}]	8	1
68	2022-06-17 20:24:43.40735+03	11	BMW_M5_01	2	[]	8	1
69	2022-06-17 20:40:15.890031+03	16	BMW_M4_05	2	[{"changed": {"fields": ["Car"]}}]	8	1
70	2022-06-17 20:59:17.929705+03	11	BMW_M5_01	2	[]	8	1
71	2022-06-17 20:59:24.132969+03	12	BMW_M4_01	2	[{"changed": {"fields": ["N"]}}]	8	1
72	2022-06-17 20:59:29.880039+03	13	BMW_M4_02	2	[{"changed": {"fields": ["N"]}}]	8	1
73	2022-06-17 20:59:35.46404+03	13	BMW_M4_02	2	[{"changed": {"fields": ["N"]}}]	8	1
74	2022-06-17 20:59:42.263608+03	14	BMW_M4_03	2	[]	8	1
75	2022-06-17 20:59:47.83036+03	15	BMW_M4_04	2	[]	8	1
76	2022-06-17 22:02:47.832029+03	2	BMW M4	2	[{"changed": {"fields": ["Discription"]}}]	7	1
77	2022-06-17 22:04:02.856219+03	2	BMW M4	2	[{"changed": {"fields": ["Wd"]}}]	7	1
78	2022-06-17 22:05:04.674056+03	1	BMW M5	2	[{"changed": {"fields": ["Acceleration"]}}]	7	1
79	2022-06-17 22:49:44.013848+03	2	BMW M4	2	[{"changed": {"fields": ["Discription", "Acceleration"]}}]	7	1
80	2022-06-17 22:53:49.687402+03	1	BMW M5 COMPETITION	2	[{"changed": {"fields": ["Name", "Slug", "Discription", "Price"]}}]	7	1
81	2022-06-17 22:53:49.805487+03	1	BMW M5 COMPETITION	2	[]	7	1
82	2022-06-17 22:54:16.195297+03	2	BMW M4 COMPETITION	2	[{"changed": {"fields": ["Name", "Slug", "Discription"]}}]	7	1
83	2022-06-17 23:44:44.106219+03	1	BMW M5 COMPETITION	1	[{"added": {}}]	7	1
84	2022-06-17 23:44:55.979246+03	1	BMW M5 COMPETITION	2	[]	7	1
85	2022-06-17 23:47:41.253212+03	2	BMW M4 COMPETITION	1	[{"added": {}}]	7	1
86	2022-06-17 23:48:26.868132+03	1	BMW_M5_COMPETITION_1	1	[{"added": {}}]	8	1
87	2022-06-17 23:48:40.95929+03	2	BMW_M5_COMPETITION_2	1	[{"added": {}}]	8	1
88	2022-06-17 23:49:00.056259+03	3	BMW_M5_COMPETITION_3	1	[{"added": {}}]	8	1
89	2022-06-17 23:49:50.383144+03	4	BMW_M5_COMPETITION_4	1	[{"added": {}}]	8	1
90	2022-06-17 23:50:19.430917+03	5	BMW_M5_COMPETITION_5	1	[{"added": {}}]	8	1
91	2022-06-17 23:50:45.08424+03	6	BMW_M5_COMPETITION_6	1	[{"added": {}}]	8	1
92	2022-06-17 23:51:08.606403+03	7	BMW_M5_COMPETITION_7	1	[{"added": {}}]	8	1
93	2022-06-17 23:51:27.469149+03	8	BMW_M5_COMPETITION_8	1	[{"added": {}}]	8	1
94	2022-06-17 23:51:47.100489+03	9	BMW_M5_COMPETITION_9	1	[{"added": {}}]	8	1
95	2022-06-17 23:52:04.030373+03	10	BMW_M5_COMPETITION_10	1	[{"added": {}}]	8	1
96	2022-06-17 23:52:27.187572+03	11	BMW_M4_COMPETITION_1	1	[{"added": {}}]	8	1
97	2022-06-17 23:52:51.194329+03	12	BMW_M4_COMPETITION_2	1	[{"added": {}}]	8	1
98	2022-06-17 23:53:19.514015+03	13	BMW_M4_COMPETITION_3	1	[{"added": {}}]	8	1
99	2022-06-17 23:53:53.493183+03	14	BMW_M4_COMPETITION_4	1	[{"added": {}}]	8	1
100	2022-06-17 23:54:14.69451+03	15	BMW_M4_COMPETITION_5	1	[{"added": {}}]	8	1
101	2022-06-17 23:54:26.327764+03	11	BMW_M4_COMPETITION_01	2	[{"changed": {"fields": ["Name"]}}]	8	1
102	2022-06-17 23:54:30.849009+03	12	BMW_M4_COMPETITION_02	2	[{"changed": {"fields": ["Name"]}}]	8	1
103	2022-06-17 23:54:34.785633+03	13	BMW_M4_COMPETITION_03	2	[{"changed": {"fields": ["Name"]}}]	8	1
104	2022-06-17 23:54:38.762357+03	14	BMW_M4_COMPETITION_04	2	[{"changed": {"fields": ["Name"]}}]	8	1
105	2022-06-17 23:54:42.198107+03	15	BMW_M4_COMPETITION_05	2	[{"changed": {"fields": ["Name"]}}]	8	1
106	2022-06-17 23:54:45.746054+03	1	BMW_M5_COMPETITION_01	2	[{"changed": {"fields": ["Name"]}}]	8	1
107	2022-06-17 23:54:50.153094+03	3	BMW_M5_COMPETITION_03	2	[{"changed": {"fields": ["Name"]}}]	8	1
108	2022-06-17 23:54:53.644631+03	2	BMW_M5_COMPETITION_02	2	[{"changed": {"fields": ["Name"]}}]	8	1
109	2022-06-17 23:54:56.884997+03	4	BMW_M5_COMPETITION_04	2	[{"changed": {"fields": ["Name"]}}]	8	1
110	2022-06-17 23:54:59.860346+03	5	BMW_M5_COMPETITION_05	2	[{"changed": {"fields": ["Name"]}}]	8	1
111	2022-06-17 23:55:03.780271+03	6	BMW_M5_COMPETITION_06	2	[{"changed": {"fields": ["Name"]}}]	8	1
112	2022-06-17 23:55:07.180795+03	8	BMW_M5_COMPETITION_08	2	[{"changed": {"fields": ["Name"]}}]	8	1
113	2022-06-17 23:55:10.41486+03	7	BMW_M5_COMPETITION_07	2	[{"changed": {"fields": ["Name"]}}]	8	1
114	2022-06-17 23:55:14.542903+03	9	BMW_M5_COMPETITION_09	2	[{"changed": {"fields": ["Name"]}}]	8	1
115	2022-06-19 00:40:20.264097+03	2	BMW M4 COMPETITION	2	[{"changed": {"fields": ["Discription"]}}]	7	1
116	2022-06-19 19:23:48.55217+03	3	MERCEDES-BENZ E63 AMG	1	[{"added": {}}]	7	1
117	2022-06-19 19:29:04.593633+03	3	MERCEDES-BENZ E63 AMG	2	[{"changed": {"fields": ["Price 3 10", "Price 11 20", "Acceleration", "Power", "Oil", "Wd", "Year"]}}]	7	1
118	2022-06-19 19:30:55.629289+03	3	MERCEDES-BENZ E63 AMG	2	[{"changed": {"fields": ["Acceleration", "Power"]}}]	7	1
119	2022-06-19 19:36:57.92006+03	16	MERCEDES-BENZ_E63_AMG_01	1	[{"added": {}}]	8	1
120	2022-06-19 19:37:19.110697+03	17	MERCEDES-BENZ_E63_AMG_02	1	[{"added": {}}]	8	1
121	2022-06-19 19:37:41.528846+03	18	MERCEDES-BENZ_E63_AMG_03	1	[{"added": {}}]	8	1
122	2022-06-19 19:38:02.944158+03	19	MERCEDES-BENZ_E63_AMG_04	1	[{"added": {}}]	8	1
123	2022-06-19 19:38:20.883752+03	20	MERCEDES-BENZ_E63_AMG_05	1	[{"added": {}}]	8	1
124	2022-06-19 19:38:44.01661+03	21	MERCEDES-BENZ_E63_AMG_06	1	[{"added": {}}]	8	1
125	2022-06-19 19:39:01.386191+03	22	MERCEDES-BENZ_E63_AMG_07	1	[{"added": {}}]	8	1
126	2022-06-19 19:39:17.79794+03	23	MERCEDES-BENZ_E63_AMG_08	1	[{"added": {}}]	8	1
127	2022-06-19 19:39:33.044062+03	24	MERCEDES-BENZ_E63_AMG_09	1	[{"added": {}}]	8	1
128	2022-06-19 19:42:56.657012+03	3	MERCEDES-BENZ E63 AMG	2	[{"changed": {"fields": ["Discription", "Main image"]}}]	7	1
129	2022-06-19 19:43:30.184196+03	3	MERCEDES-BENZ E63 AMG	2	[{"changed": {"fields": ["Slug"]}}]	7	1
130	2022-06-19 19:44:48.853712+03	3	MERCEDES-BENZ E63 AMG	2	[]	7	1
131	2022-07-05 14:15:20.425163+03	2	BMW M4 COMPETITION	2	[{"changed": {"fields": ["Price 1 2", "Price 3 10", "Price 11 20"]}}]	7	1
132	2022-07-05 14:19:20.159916+03	3	MERCEDES-BENZ E63 AMG	2	[{"changed": {"fields": ["Discription", "Price 1 2", "Price 3 10", "Price 11 20"]}}]	7	1
133	2022-07-05 17:50:44.138348+03	4	MERCEDES-BENZ G-CLASS	1	[{"added": {}}]	7	1
134	2022-07-05 17:56:13.483474+03	4	MERCEDES-BENZ G63	2	[{"changed": {"fields": ["Name", "Price 3 10", "Acceleration", "Power"]}}]	7	1
135	2022-07-05 17:56:55.103667+03	4	MERCEDES-BENZ G63 AMG	2	[{"changed": {"fields": ["Name", "Slug", "Discription"]}}]	7	1
136	2022-07-05 17:58:53.72385+03	25	MERCEDES-BENZ_G63_AMG_01	1	[{"added": {}}]	8	1
137	2022-07-05 17:59:15.016465+03	26	MERCEDES-BENZ_G63_AMG_02	1	[{"added": {}}]	8	1
138	2022-07-05 17:59:33.777283+03	27	MERCEDES-BENZ_G63_AMG_03	1	[{"added": {}}]	8	1
139	2022-07-05 17:59:49.892668+03	28	MERCEDES-BENZ_G63_AMG_04	1	[{"added": {}}]	8	1
140	2022-07-05 18:00:05.545829+03	29	MERCEDES-BENZ_G63_AMG_05	1	[{"added": {}}]	8	1
141	2022-07-05 18:00:23.481591+03	30	MERCEDES-BENZ_G63_AMG_06	1	[{"added": {}}]	8	1
142	2022-07-05 18:00:47.978909+03	31	MERCEDES-BENZ_G63_AMG_07	1	[{"added": {}}]	8	1
143	2022-07-05 18:01:11.247028+03	32	MERCEDES-BENZ_G63_AMG_08	1	[{"added": {}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	home	car
8	home	car_secondary_img
9	home	order
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-05-13 22:11:34.843763+03
2	auth	0001_initial	2022-05-13 22:11:35.321292+03
3	admin	0001_initial	2022-05-13 22:11:35.415093+03
4	admin	0002_logentry_remove_auto_add	2022-05-13 22:11:35.446314+03
5	admin	0003_logentry_add_action_flag_choices	2022-05-13 22:11:35.461939+03
6	contenttypes	0002_remove_content_type_name	2022-05-13 22:11:35.493161+03
7	auth	0002_alter_permission_name_max_length	2022-05-13 22:11:35.508802+03
8	auth	0003_alter_user_email_max_length	2022-05-13 22:11:35.508802+03
9	auth	0004_alter_user_username_opts	2022-05-13 22:11:35.524426+03
10	auth	0005_alter_user_last_login_null	2022-05-13 22:11:35.540052+03
11	auth	0006_require_contenttypes_0002	2022-05-13 22:11:35.540052+03
12	auth	0007_alter_validators_add_error_messages	2022-05-13 22:11:35.555676+03
13	auth	0008_alter_user_username_max_length	2022-05-13 22:11:35.586927+03
14	auth	0009_alter_user_last_name_max_length	2022-05-13 22:11:35.586927+03
15	auth	0010_alter_group_name_max_length	2022-05-13 22:11:35.602559+03
16	auth	0011_update_proxy_permissions	2022-05-13 22:11:35.618178+03
17	auth	0012_alter_user_first_name_max_length	2022-05-13 22:11:35.633804+03
18	sessions	0001_initial	2022-05-13 22:11:35.680701+03
20	home	0002_car_acceleration_car_oil_car_power_car_wd_car_year	2022-05-24 15:56:12.852235+03
21	home	0003_rename_image_car_main_image_car_secondary_img	2022-06-11 21:02:11.457903+03
22	home	0004_car_secondary_img_added_car_secondary_img_image	2022-06-11 21:12:04.590117+03
23	home	0005_car_secondary_img_name	2022-06-11 21:25:43.609001+03
24	home	0006_car_secondary_img_n	2022-06-11 21:54:51.354815+03
25	home	0007_request	2022-06-16 22:00:04.305118+03
26	home	0008_remove_request_phone_number	2022-06-16 22:29:07.096381+03
27	home	0009_request_phone_number	2022-06-16 22:36:26.331398+03
28	home	0010_alter_request_phone_number	2022-06-16 23:04:55.797373+03
29	home	0011_rename_request_order	2022-06-17 00:03:52.764507+03
30	home	0012_delete_order	2022-06-17 12:44:36.020875+03
31	home	0013_alter_car_secondary_img_options_and_more	2022-06-17 20:28:34.02415+03
32	home	0001_initial	2022-06-17 23:37:39.824796+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
p4shrjatsb0rxplm0ci557zd1lmwvs66	.eJxVjEEOwiAQRe_C2pAOEAou3XsGMp0ZpGpKUtpV490NSRe6_e-9f6iE-1bS3mRNM6urAnX53Saklywd8BOXR9VUl22dJ90VfdKm75XlfTvdv4OCrfTaSQADASASeh8wG_HGOqaI1g1ZrDhrwOcxI0ViGgeYBiY23rOMoD5f3oY4Jw:1nqDZk:EJzhAPK8uku3e2iKhr1JERrD0razyT3kHIMqbLBu5Ss	2022-05-29 15:42:20.156981+03
0h761fkv1yxhgxweuz1noprrczqshrkq	.eJxVjEEOwiAQRe_C2pAOEAou3XsGMp0ZpGpKUtpV490NSRe6_e-9f6iE-1bS3mRNM6urAnX53Saklywd8BOXR9VUl22dJ90VfdKm75XlfTvdv4OCrfTaSQADASASeh8wG_HGOqaI1g1ZrDhrwOcxI0ViGgeYBiY23rOMoD5f3oY4Jw:1o04kP:D3_jkuLwl7Wk1s-yqd9-itMzYWVbLPEx14DhTFxyCLc	2022-06-25 20:18:05.178318+03
e51kqkvhj427b29aexxyima0f3xngg7b	.eJxVjEEOwiAQRe_C2pAOEAou3XsGMp0ZpGpKUtpV490NSRe6_e-9f6iE-1bS3mRNM6urAnX53Saklywd8BOXR9VUl22dJ90VfdKm75XlfTvdv4OCrfTaSQADASASeh8wG_HGOqaI1g1ZrDhrwOcxI0ViGgeYBiY23rOMoD5f3oY4Jw:1o8gAy:3vFjWDygnSe098Ph4cFUf7R425_7gY0AlcJ39rSfLXc	2022-07-19 13:53:04.015049+03
p2ag38so5y0vwn29xq1tw7c1yvarsx18	.eJxVjEEOwiAQRe_C2pAOEAou3XsGMp0ZpGpKUtpV490NSRe6_e-9f6iE-1bS3mRNM6urAnX53Saklywd8BOXR9VUl22dJ90VfdKm75XlfTvdv4OCrfTaSQADASASeh8wG_HGOqaI1g1ZrDhrwOcxI0ViGgeYBiY23rOMoD5f3oY4Jw:1o8jnF:vTtG6JvvXymnLoj8cEZ7vUNnCBuhApwkgLx0vp3LcNw	2022-07-19 17:44:49.295703+03
ox78j2zhgz4is2m1gprkicv6p8mw30i7	.eJxVjEEOwiAQRe_C2pAOEAou3XsGMp0ZpGpKUtpV490NSRe6_e-9f6iE-1bS3mRNM6urAnX53Saklywd8BOXR9VUl22dJ90VfdKm75XlfTvdv4OCrfTaSQADASASeh8wG_HGOqaI1g1ZrDhrwOcxI0ViGgeYBiY23rOMoD5f3oY4Jw:1o8k0D:ZHo5KqjHp5Kz-CY2PM5xWSUyWQS0s4GlsuhcZ_mLfIg	2022-07-19 17:58:13.483836+03
\.


--
-- Data for Name: home_car; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_car (id, name, slug, discription, main_image, price_1_2, price_3_10, price_11_20, acceleration, power, oil, wd, year) FROM stdin;
1	BMW M5 COMPETITION	BMW_M5_COMPETITION	BMW М5 COMPETITION один из самых быстрых в мире серийных спортседанов. Идеальное сочетание скорости, комфорта и потрясающей управляемости. \r\nШикарный звук выхлопа и умопомрачающая динамика не оставят равнодушным никого. \r\n\r\nОщутите ярчайшие эмоции от вождения.	car/BMW_M5_0.jpeg	39 000	34 000	30 000	3.3	625	бензин	полный	2022
2	BMW M4 COMPETITION	BMW_M4_COMPETITION	BMW M4 COMPETITION. Задний привод и легкость данного автомобиля подарят вам невероятные ощущения, а яркий эксклюзивный цвет обратит на себя много внимания на дороге.	car/BMW_M4_0.jpg	38 000	33 000	29 000	3.8	510	бензин	задний	2022
3	MERCEDES-BENZ E63 AMG	MERCEDES-BENZ_E63_AMG	E63s 4Matic+ Мощный спортседан с двигателем V8 Biturbo.\r\nОбновленная модель, комфортабельный салон, выполнен из дорогих материалов, полный привод с возможностью переключения на задний и превосходная динамика.	car/MERCEDES-BENZ_E63_0.jpg	40 000	35 000	31 000	3.4	612	бензин	полный	2022
4	MERCEDES-BENZ G63 AMG	MERCEDES-BENZ_G63_AMG	Mercedes-Benz G63 AMG машина, не имеющая аналога. Характер, мощь и брутальный звук выхлопа данного авто заставят Вас прочувствовать его уникальность.	car/G_wagon_0.jpg	42 000	36 000	32 000	4.5	585	бензин	полный	2022
\.


--
-- Data for Name: home_car_secondary_img; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_car_secondary_img (id, name, image, "N", car_id) FROM stdin;
10	BMW_M5_COMPETITION_10	car/BMW_M5_10.jpeg	9	1
11	BMW_M4_COMPETITION_01	car/BMW_M4_1.jpg	0	2
12	BMW_M4_COMPETITION_02	car/BMW_M4_2.jpg	1	2
13	BMW_M4_COMPETITION_03	car/BMW_M4_3.jpg	2	2
14	BMW_M4_COMPETITION_04	car/BMW_M4_4.jpg	3	2
15	BMW_M4_COMPETITION_05	car/BMW_M4_5.jpg	4	2
1	BMW_M5_COMPETITION_01	car/BMW_M5_1.jpeg	0	1
3	BMW_M5_COMPETITION_03	car/BMW_M5_3.jpeg	2	1
2	BMW_M5_COMPETITION_02	car/BMW_M5_2.jpeg	1	1
4	BMW_M5_COMPETITION_04	car/BMW_M5_4.jpeg	3	1
5	BMW_M5_COMPETITION_05	car/BMW_M5_5.jpeg	4	1
6	BMW_M5_COMPETITION_06	car/BMW_M5_6.jpeg	5	1
8	BMW_M5_COMPETITION_08	car/BMW_M5_8.jpeg	7	1
7	BMW_M5_COMPETITION_07	car/BMW_M5_7.jpeg	6	1
9	BMW_M5_COMPETITION_09	car/BMW_M5_9.jpeg	8	1
16	MERCEDES-BENZ_E63_AMG_01	car/MERCEDES-BENZ_E63_1.jpg	0	3
17	MERCEDES-BENZ_E63_AMG_02	car/MERCEDES-BENZ_E63_2.jpg	1	3
18	MERCEDES-BENZ_E63_AMG_03	car/MERCEDES-BENZ_E63_3.jpg	2	3
19	MERCEDES-BENZ_E63_AMG_04	car/MERCEDES-BENZ_E63_4.jpg	3	3
20	MERCEDES-BENZ_E63_AMG_05	car/MERCEDES-BENZ_E63_5.jpg	4	3
21	MERCEDES-BENZ_E63_AMG_06	car/MERCEDES-BENZ_E63_6.jpg	5	3
22	MERCEDES-BENZ_E63_AMG_07	car/MERCEDES-BENZ_E63_7.jpg	6	3
23	MERCEDES-BENZ_E63_AMG_08	car/MERCEDES-BENZ_E63_8.jpg	7	3
24	MERCEDES-BENZ_E63_AMG_09	car/MERCEDES-BENZ_E63_9.jpg	8	3
25	MERCEDES-BENZ_G63_AMG_01	car/G_wagon_1.jpg	0	4
26	MERCEDES-BENZ_G63_AMG_02	car/G_wagon_2.jpg	1	4
27	MERCEDES-BENZ_G63_AMG_03	car/G_wagon_3.jpg	2	4
28	MERCEDES-BENZ_G63_AMG_04	car/G_wagon_4.jpg	3	4
29	MERCEDES-BENZ_G63_AMG_05	car/G_wagon_5.jpg	4	4
30	MERCEDES-BENZ_G63_AMG_06	car/G_wagon_6.jpg	5	4
31	MERCEDES-BENZ_G63_AMG_07	car/G_wagon_7.jpg	6	4
32	MERCEDES-BENZ_G63_AMG_08	car/G_wagon_8.jpg	7	4
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 143, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 32, true);


--
-- Name: home_car_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_car_id_seq', 4, true);


--
-- Name: home_car_secondary_img_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_car_secondary_img_id_seq', 32, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: home_car home_car_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_car
    ADD CONSTRAINT home_car_pkey PRIMARY KEY (id);


--
-- Name: home_car_secondary_img home_car_secondary_img_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_car_secondary_img
    ADD CONSTRAINT home_car_secondary_img_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: home_car_secondary_img_car_id_74be35a5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_car_secondary_img_car_id_74be35a5 ON public.home_car_secondary_img USING btree (car_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_car_secondary_img home_car_secondary_img_car_id_74be35a5_fk_home_car_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_car_secondary_img
    ADD CONSTRAINT home_car_secondary_img_car_id_74be35a5_fk_home_car_id FOREIGN KEY (car_id) REFERENCES public.home_car(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

