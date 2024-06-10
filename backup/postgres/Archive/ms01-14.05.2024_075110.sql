--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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
-- Name: blutdruck; Type: TABLE; Schema: public; Owner: mspruck
--

CREATE TABLE public.blutdruck (
    datum character varying(30),
    zeit character varying(10),
    sys character varying(5),
    dia character varying(5),
    kommentar character varying(50),
    key_column bigint NOT NULL
);


ALTER TABLE public.blutdruck OWNER TO mspruck;

--
-- Name: blutdruck_key_column_seq; Type: SEQUENCE; Schema: public; Owner: mspruck
--

CREATE SEQUENCE public.blutdruck_key_column_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blutdruck_key_column_seq OWNER TO mspruck;

--
-- Name: blutdruck_key_column_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mspruck
--

ALTER SEQUENCE public.blutdruck_key_column_seq OWNED BY public.blutdruck.key_column;


--
-- Name: depot; Type: TABLE; Schema: public; Owner: mspruck
--

CREATE TABLE public.depot (
    key integer NOT NULL,
    datum character varying(10) NOT NULL,
    bezeichnung character varying(50) NOT NULL,
    wert character varying(80) NOT NULL,
    kosten character varying(50) NOT NULL
);


ALTER TABLE public.depot OWNER TO mspruck;

--
-- Name: depot_key_seq; Type: SEQUENCE; Schema: public; Owner: mspruck
--

CREATE SEQUENCE public.depot_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.depot_key_seq OWNER TO mspruck;

--
-- Name: depot_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mspruck
--

ALTER SEQUENCE public.depot_key_seq OWNED BY public.depot.key;


--
-- Name: dkv; Type: TABLE; Schema: public; Owner: mspruck
--

CREATE TABLE public.dkv (
    rechnungs_datum character varying(30) NOT NULL,
    rechnungs_steller character varying(40) NOT NULL,
    leistungs_datum character varying(30) NOT NULL,
    rezept_datum character varying(30) NOT NULL,
    leistungs_geber character varying(30) NOT NULL,
    leistung character varying(80) NOT NULL,
    betrag character varying(8) NOT NULL,
    dkv_abrechnungs_datum character varying(20),
    dkv_abrechnungs_betrag character varying(8) NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.dkv OWNER TO mspruck;

--
-- Name: dkv_id_seq; Type: SEQUENCE; Schema: public; Owner: mspruck
--

CREATE SEQUENCE public.dkv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dkv_id_seq OWNER TO mspruck;

--
-- Name: dkv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mspruck
--

ALTER SEQUENCE public.dkv_id_seq OWNED BY public.dkv.id;


--
-- Name: journalnew; Type: TABLE; Schema: public; Owner: mspruck
--

CREATE TABLE public.journalnew (
    key integer NOT NULL,
    datum character varying(10) NOT NULL,
    erfolg character varying(100) NOT NULL,
    sport character varying(80) NOT NULL,
    buch character varying(50) NOT NULL,
    erkenntnis character varying(100) NOT NULL
);


ALTER TABLE public.journalnew OWNER TO mspruck;

--
-- Name: journalnew_key_seq; Type: SEQUENCE; Schema: public; Owner: mspruck
--

CREATE SEQUENCE public.journalnew_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.journalnew_key_seq OWNER TO mspruck;

--
-- Name: journalnew_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mspruck
--

ALTER SEQUENCE public.journalnew_key_seq OWNED BY public.journalnew.key;


--
-- Name: journal_klon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.journal_klon (
    key integer DEFAULT nextval('public.journalnew_key_seq'::regclass) NOT NULL,
    datum character varying(30) NOT NULL,
    erfolg character varying(100) NOT NULL,
    sport character varying(80) NOT NULL,
    buch character varying(50) NOT NULL,
    erkenntnis character varying(100) NOT NULL
);


ALTER TABLE public.journal_klon OWNER TO postgres;

--
-- Name: km; Type: TABLE; Schema: public; Owner: mspruck
--

CREATE TABLE public.km (
    datum character varying(10) NOT NULL,
    typ character varying(40) NOT NULL,
    kennzeichen character varying(10) NOT NULL,
    km character varying(8) NOT NULL,
    bemerkung character varying(50) NOT NULL,
    von character varying(8) NOT NULL,
    bis character varying(8) NOT NULL,
    km_monat character varying(10),
    km_saison character varying(10) NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.km OWNER TO mspruck;

--
-- Name: km_id_seq; Type: SEQUENCE; Schema: public; Owner: mspruck
--

CREATE SEQUENCE public.km_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.km_id_seq OWNER TO mspruck;

--
-- Name: km_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mspruck
--

ALTER SEQUENCE public.km_id_seq OWNED BY public.km.id;


--
-- Name: reisekosten; Type: TABLE; Schema: public; Owner: mspruck
--

CREATE TABLE public.reisekosten (
    datum character varying(15),
    hotel character varying(50),
    strecke character varying(50),
    km character varying(5),
    kosten character varying(10),
    key bigint NOT NULL
);


ALTER TABLE public.reisekosten OWNER TO mspruck;

--
-- Name: reisekosten_key_seq; Type: SEQUENCE; Schema: public; Owner: mspruck
--

CREATE SEQUENCE public.reisekosten_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reisekosten_key_seq OWNER TO mspruck;

--
-- Name: reisekosten_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mspruck
--

ALTER SEQUENCE public.reisekosten_key_seq OWNED BY public.reisekosten.key;


--
-- Name: blutdruck key_column; Type: DEFAULT; Schema: public; Owner: mspruck
--

ALTER TABLE ONLY public.blutdruck ALTER COLUMN key_column SET DEFAULT nextval('public.blutdruck_key_column_seq'::regclass);


--
-- Name: depot key; Type: DEFAULT; Schema: public; Owner: mspruck
--

ALTER TABLE ONLY public.depot ALTER COLUMN key SET DEFAULT nextval('public.depot_key_seq'::regclass);


--
-- Name: dkv id; Type: DEFAULT; Schema: public; Owner: mspruck
--

ALTER TABLE ONLY public.dkv ALTER COLUMN id SET DEFAULT nextval('public.dkv_id_seq'::regclass);


--
-- Name: journalnew key; Type: DEFAULT; Schema: public; Owner: mspruck
--

ALTER TABLE ONLY public.journalnew ALTER COLUMN key SET DEFAULT nextval('public.journalnew_key_seq'::regclass);


--
-- Name: km id; Type: DEFAULT; Schema: public; Owner: mspruck
--

ALTER TABLE ONLY public.km ALTER COLUMN id SET DEFAULT nextval('public.km_id_seq'::regclass);


--
-- Name: reisekosten key; Type: DEFAULT; Schema: public; Owner: mspruck
--

ALTER TABLE ONLY public.reisekosten ALTER COLUMN key SET DEFAULT nextval('public.reisekosten_key_seq'::regclass);


--
-- Data for Name: blutdruck; Type: TABLE DATA; Schema: public; Owner: mspruck
--

COPY public.blutdruck (datum, zeit, sys, dia, kommentar, key_column) FROM stdin;
 01. April 2024	08:49	161	100	ohne Tablette	1
24. April 2024	11:04	152	88	 	106
1. April 2024	12:27	143	87	Ergometere	2
1. April 2024	17:37	160	94	na	3
2. April 2024	09:24	162	95	na	4
2. April 2024	13:00	144	89	nach Ergometer	5
2. April 2024	14.34	141	78	na	6
2. April 2024	16:08	141	82	na	7
3. April 2024	08:31	167	98	mit Tablette	8
3. April 2024	09:53	142	83	na	9
3. April 2024	12:49	140	76	na	10
3. April 2024	17:57	146	80	na	11
4. April 2024	08:23	157	83	na	12
4. April 2024	11:42	159	84	na	13
4. April 2024	13:12	141	82	nach Ergometer	14
5. April 2024	08:23	172	94	mit Tablette	15
5. April 2024	10.49	143	87	na	16
5. April 2024	12:12	141	77	nach Übungen	17
5. April 2024	14:03	171	95	na	18
5. April 2024	15:07	151	83	na	19
6. April 2024	08:07	142	87	½ Tablette	20
6. April 2024	09:28	141	84	na	21
6. April 2024	17:10	143	86	na	22
7. April 2024	10:33	155	85	na	23
7. April 2024	19:02	143	83	na	24
8. April 2024	07:41	148	91	na	25
8. April 2024	10:47	150	90	na	26
8. April 2024	13:09	144	92	nach Übungen	27
8. April 2024	16:03	149	82	na	28
8. April 2024	18:58	143	81	na	29
14. April 2024	16:00	135	77	na	30
15. April 2024	09:09	170	94	na	31
15. April 2024	09:32	151	91	na	32
15. April 2024	12:33	140	81	na	33
15. April 2024	19:23	157	87	na	34
16. April 2024	08:14	160	85	na	35
16. April 2024	10:06	148	84	na	36
16. April 2024	12:42	142	82	na	37
16. April 2024	15:06	143	83	na	38
17. April 2024	08:21	152	89	na	39
17. April 2024	10:01	150	89	na	40
17. April 2024	14:36	145	81	na	41
18. April 2024	07:20	152	95	ohne Tablette	42
18. April 2024	12:07	148	87	na	43
19. April 2024	08:45	156	96	na	44
19. April 2024	10:45	162	91	na	45
19. April 2024	13:09	141	79	na	46
20. April 2024	10:17	143	83	na	47
21. April 2024	09:39	133	76	na	48
21. April 2024	10:42	140	87	na	49
21. April 2024	12:38	136	79	mit HCT	50
21. April 2024	16:26	129	79	na	51
22. April 2024	07:19	141	85	na	52
22. April 2024	10:12	139	87	na	53
22. April 2024	12.03	145	89	na	54
22. April 2024	19:33	140	78	na	55
23. April 2024	07:28	151	91	na	56
23. April 2024	10:21	144	87	na	57
24. April 2024	16:49	150	88	\N	108
25. April 2024	08:08	159	90	 	110
25. April 2024	13:14	130	74		112
26. April 2024	09:14	150	91	 	114
26. April 2024	14:27	135	83	Ergometer	116
27. April 2024	10:41	128	78	 	118
27. April 2024	17:28	140	77	 	120
28. April 2024	11:16	147	81	Ergometer	122
28. April 2024	18:20	147	84	 	124
30. April 2024	09:22	153	87	Ergometer	126
01. Mai 2024	08:45	149	98	 	128
01. Mai 2024	16:12	147	93	 	130
02. Mai 2024	12:37	138	78	Ergometer, Übungen 	132
03. Mai 2024	11:36	136	77	Ergometer	134
04. Mai 2024	10:50	137	82	Ergometer	135
05. Mai 2024	11:02	128	79	Ergometer	137
07. Mai 2024	10:10	144	87	 	139
09.Mai 2024	15:51	142	81	Ergometer	143
11.Mai 2024	09:54	130	84	Ergometer	145
13.Mai 2024	07:15	155	93	 	147
13.Mai 2024	17:15	135	83	Ergometer	149
23. April 2024	15:20	137	81	na	58
23. April 2024	17:12	135	74	nach Ergometer	59
24. April 2024	07:30	156	98	ohne Tablette	60
24. April 2024	09:55	153	92	 	61
24. April 2024	13:58	131	83	nach Ergometer	107
25. April 2024	10:12	160	96		111
25. April 2024	17:08	148	84	 	113
26. April 2024	10:03	154	97	 	115
27. April 2024	09:04	133	88	Sildel	117
27. April 2024	14:17	130	73	 	119
28. April 2024	09:49	156	94	 	121
28. April 2024	12:16	146	81	 	123
29. April 2024	07:20	152	92	 	125
30. April 2024	10:08	153	84	 	127
01. Mai 2024	11:34	159	93	 	129
02. Mai 2024	08:41	152	94	 	131
03. Mai 2024	09:09	147	90	 	133
04. Mai 2024	17:38	150	88	 	136
06. Mai 2024	12:44	136	81	Ergometer	138
08. Mai 2024	13:07	144	85	Ergometer	140
09.Mai 2024	11:33	138	78	Ergometer	142
10.Mai 2024	11:02	140	81	Ergometer	144
12.Mai 2024	10:46	137	75	Ergometer	146
13.Mai 2024	11:20	144	88	 	148
\.


--
-- Data for Name: depot; Type: TABLE DATA; Schema: public; Owner: mspruck
--

COPY public.depot (key, datum, bezeichnung, wert, kosten) FROM stdin;
1	15.02.2018	ETF	100,00	101,00
2	15.02.2018	 	100,00	101,00
3	13.04.2018	 	114,02	129,02
4	16.04.2018	 	100,00	101,00
5	27.04.2018	 	115,12	130,36
6	30.04.2018	 	115,24	130,78
7	15.05.2018	 	100,00	101,00
8	15.06.2018	 	100,00	101,00
9	16.07.2018	 	100,00	101,00
10	15.08.2018	 	100,00	101,00
11	17.09.2018	 	100,00	101,00
12	15.10.2018	 	100,00	101,00
13	15.11.2018	 	100,00	101,00
14	17.12.2018	 	100,00	101,00
15	15.01.2019	 	100,00	101,00
16	15.02.2019	 	100,00	101,00
17	15.03.2019	 	100,00	101,00
18	15.04.2019	 	100,00	101,00
19	03.05.2019	 	112,96	128,57
20	15.05.2019	 	100,00	101,00
21	17.06.2019	 	100,00	101,00
22	15.07.2019	 	100,00	101,00
23	15.08.2019	 	100,00	101,00
24	16.09.2019	 	100,00	101,00
25	15.10.2019	 	100,00	101,00
26	15.11.2019	 	100,00	101,00
27	16.12.2019	 	100,00	101,00
28	15.01.2020	 	100,00	101,00
29	17.02.2020	 	100,00	101,00
30	16.03.2020	 	100,00	101,00
31	25.03.2020	Pepsi Aktien	535,50	551,91
32	25.03.2020	Coca Cola Aktien	375,90	391,98
33	25.03.2020	amadeus Aktien	438,24	576,12
34	14.04.2020	Ballarad Aktien	447,00	461,75
35	15.04.2020	 	100,00	101,00
36	15.05.2020	 	100,00	101,00
37	15.06.2020	 	100,00	101,00
38	15.07.2020	 	100,00	101,00
39	15.08.2020	 	100,00	101,00
40	15.09.2020	 	200,00	202,00
41	15.10.2020	 	200,00	202,00
42	28.10.2020	SAP Aktien	483,45	495,92
43	15.11.2020	 	200,00	202,00
44	17.11.2020	Apple Aktien	1009,40	1022,92
45	17.11.2020	Procter & Gamble Aktien	1.195,80	 1.209,69
46	17.11.2020	Munich Re	1.211,00	1.225,50
47	17.11.2020	Microsoft	1.798,00	1.813,90
49	23.11.2020	Abbott Laboratories	940,10	953,48
50	06.12.2020	Danone Aktien	787,50	802,94
51	06.12.2020	Harley Davidson Aktien	322,40	334,54
52	15.12.2020	 	200,00	202,00
53	31.12.2020	Stand	16.693,70	15.710,83
54	20.01.2021	 	100,00	101,00
55	20.07.2021	Nexus	961,50	978,17
57	26.08.2021	 	100,00	101,00
58	20.09.2021	 	100,00	101,00
59	26.08.2021	 	100,00	101,00
60	20.09.2021	 	50,00	50,75
61	20.10.2021	 	50,00	50,75
62	20.11.2021	 	50,00	50,75
63	20.12.2021	 	50,00	50,75
64	20.01.2022	 	50,00	50,75
65	20.02.2022	 	50,00	50,75
66	20.03.2022	 	50,00	50,75
56	26.07.2021	ALBEMARLE CORP.	806,50	819,61
48	20.11.2020	MORPHOSYS AG	902,00	915,30
67	07.12.2023	Stand	 23094	18.278,58
\.


--
-- Data for Name: dkv; Type: TABLE DATA; Schema: public; Owner: mspruck
--

COPY public.dkv (rechnungs_datum, rechnungs_steller, leistungs_datum, rezept_datum, leistungs_geber, leistung, betrag, dkv_abrechnungs_datum, dkv_abrechnungs_betrag, id) FROM stdin;
09.12.2012	Seemueller Apotheke	9.17.2012	09.12.2012	Dr. Doerr	Blutdrucktabletten - Vocado, Jodid	109,78	5.31.2013		1
10.20.2012	Dr. Huber	12.09.  18.09. 16.10. 		Dr. Huber	Parodondose, etc	1215,82	11.27.2012	1215,82	2
01.08.2013	Apotheke	01.08.2013	01.08.2013	Dr. Doerr	Blutdrucktabletten - Vocado, Jodid	110,18	5.31.2013		3
1.17.2013	Dr. Huber	1.15.2013	1.15.2013	Dr. Huber	Kontrolle, Rezept ausgestellt	212,07	5.31.2013		4
1.21.2013	Apotheke	1.16.2013	1.15.2013	Dr. Huber	Gum Paraoex	9,34	5.31.2013	0	5
4.18.2013	Apotheke	4.19.2013	4.18.2013	Dr. Doerr	Rezept Blutdrucktabletten - Vocado, Jodid, Einlagen	110,08	5.31.2013		6
4.18.2013	Bonleitner	05.07.2013	4.18.2013	Dr. Doerr	Einlagen	135,00	5.31.2013		7
4.18.2013	Dr. Huber	4.18.2013		Dr. Huber	Zahnreinigung	117,07	5.31.2013	804,43	8
6.18.2013	Dr. Doerr	2013-06-18 , 2013-07-29 		Dr. Doerr	Untersuchung wg Achilles Sehne, Schulter Verspannung	78,27	11.08.2013		9
6.18.2013	Seemueller Apotheke	6.18.2013	6.18.2013	Dr. Doerr	Arcoxia, Wobenzym	55,16	11.08.2013		10
6.18.2013	Seemueller Apotheke	6.18.2013	6.18.2013	Dr. Doerr	Vocado	103,46	11.08.2013		11
7.31.2013	Physio Schmidts	6.18.2013	6.18.2013	Dr. Doerr	Rezept 1, MT, Ultraschall Ferse	415,00	11.08.2013		12
8.15.2013	Dr. Huber	8.14.2013		Dr. Huber	Check	283,45	11.08.2013		13
7.29.2013	Dr. Doerr		7.29.2013	Dr. Doerr	Rezept 2, MT, Ultraschall Ferse, Jodid	6,62	11.08.2013		14
10.27.2013	Physio Schmidts		7.29.2013	Dr. Doerr	Rezept 2, MT, Ultraschall Ferse	381,00	11.08.2013	1322,96	15
11.11.2013	Dr. Huber	11.07.2013		Dr. Huber	Zahnreinigung	216,16	1.13.2014		16
12.30.2013	Dr. Berkmann	11.07.2013	11.07.2013	Dr. Berkmann	Achilles Sehne Spritze, Ultraschall, Rezept MT, Rezept Einlagen	298,04	02.03.2014		17
11.05.2013	Seemueller Apotheke		11.05.2013	Dr. Doerr	Rezept Vocado, Jodid	110,27	06.02.2014		18
1.29.2014	Physio Schmidts			Dr. Berkmann	MT	410,00	02.03.2014		19
11.22.2013	Stadt Apotheke Miesbach	11.22.2013	11.22.2013	Dr. Berkmann	Arcoxia	38,32	02.03.2014		20
	Bonleitner		12.06.2013	Dr. Berkmann	Einlagen				21
12.12.2013	Seemueller Apotheke	12.12.2013	12.09.2013	HNO	Gingium	25,88	1.13.2014		22
02.04.2014	Seemueller Apotheke	2.17.2013	02.04.2013	Dr. Doerr	Rezept Vocado, Jodid	110,27	06.02.2014		23
5.27.2014	Physio Schmidts		02.04.2013	Dr. Doerr	MT	330,00	06.02.2014		24
03.05.2014	Dr. Huber	03.05.2014		Dr. Huber	Zahnreinigung	223,59	06.02.2014		25
04.09.2014	Dr. Huber	2014-04-02, 2014-04-		Dr. Huber	Inlay oben links	177,03	06.02.2014		26
05.12.2014	Seemueller Apotheke		05.12.2014	Dr. Doerr	Rezept Vocado, Jodid	103,65	06.02.2014	1028,28	27
5.14.2014	Dr. Doerr	2014-04-14 , 2014-07-02		Dr. Doerr	Furunkel, Oberschenkel-Leiste, links, Check-Up, Blutdruck	41,56			28
5.14.2014	Seemueller Apotheke		5.13.2014	Dr. Doerr	Betaisadona	27,15			29
5.14.2014	Seemueller Apotheke		5.14.2014	Dr. Doerr	Amoxiclav	31,49			30
07.02.2014	Dr. Doerr	2014-07-02, 2014-07-07		Dr. Doerr	Checkup, Blutuntersuchung	318,29			31
07.02.2014	Seemueller Apotheke		07.02.2014	Dr. Doerr	Jodid	16,62			32
7.25.2014	Seemueller Apotheke		07.02.2014	Dr. Doerr	Impfserum	42,57			33
7.21.2014	Labor	07.02.2014		Dr. Doerr	Labor	42,42			34
7.28.2014	Dr. Doerr	7.28.2014		Dr. Doerr	impfen, Rezept Vodado	14,77			35
7.28.2014	Seemueller Apotheke		7.28.2014	Dr. Doerr	Vocado	103,65			36
10.14.2014	Dr. Huber	10.14.2014		Dr. Huber	Kontrolle	56,13			37
10.20.2014	Dr. Doerr	10.14.2014		Dr. Doerr	Rezept Vocado, Jodi und Einlagen				38
12.08.2014	Seemueller Apotheke	12.08.2014	10.14.2014	Dr. Doerr	Rezept Vocado, Jodi	110,37	5.20.2015		39
	Bonleitner		10.14.2014	Dr. Doerr	Einlagen				40
03.03.2015	Dr. Huber	03.04.2014		Dr. Huber	Zahnreinigung	262,03	5.20.2015		41
03.03.2015	Dr. Huber				Kostenvoranschlag wg Inlays	4072,34	xxxx		42
3.18.2015	Dr. Doerr	3.18.2015	3.18.2015	Dr. Doerr	Rezept Vocado, Jodi 	3,15	5.20.2015		43
3.18.2015	Seemueller Apotheke	3.18.2015	3.18.2015	Dr. Doerr		110,37	5.20.2015		44
06.01.2015	Dr. Huber	5.21.2015		Dr. Huber	Kronen	6466,01			45
12.15.2015	Dr. Doerr	12.15.2015	12.15.2015	Dr. Doerr	Rezept Vocado, Jodi 				46
7.27.2016	Dr. Doerr	7.27.2016	7.27.2016	Dr. Doerr	aerztl. Attest fuer FS und Rezept Vocado, Jodi	46,99	eingereicht 		47
11.07.2016	Dr. Doerr		11.07.2016		Rezept Vocado, Jodid				48
02. Feb 17	Dr. Huber	02. Feb 17	02. Feb 17	Dr. Huber	Zahnreinigung	280,40	20. Feb 17		49
06. Feb 17	Seemueller Apotheke		02. Feb 17	Dr. Huber	Rezept Chlorhexamed	10,36	20. Feb 17		50
06. Feb 17	Seemueller Apotheke		02. Feb 17	Dr. Doerr	Rezept Vocado, Jodid	110,37	10. Mrz 17		51
23. Mrz 17	Dr. Berkmann	03. Mrz 17	03. Mrz 17	Dr. Berkmann	Rezept Arcoxia, Rezept MT, UEW MRT	127,57	05. Mai 17	127,57	52
27. Jul 17	Physio Schmidts		03. Mrz 17	Dr. Berkmann	Rezept MT	355,00	24. Aug 17	355	53
03. Mrz 17	Alte Stadtapotheke		03. Mrz 17	Dr. Berkmann	Rezept Arcoxia	83,20	14. Mrz 17		54
28. Mrz 17	KH Agatharied-Radiologie Oberland	06. Mrz 17		Radiologie Oberland	MRT	616,80	12. Apr 17	616,8	55
08. Apr 17	Dr. Doerr	05. Apr 17	05. Apr 17	Dr. Doerr	Untersuchung, Rezept MT	303,79	10. Mai 17	303,79	56
	Physio Schmidts		05. Apr 17	Dr. Doerr	Rezept MT	216,00	24. Aug 17	216	57
25. Apr 17	Labor	05. Apr 17		Dr. Doerr	Laboruntersuchung	42,42	04. Mai 17	42,42	58
05. Mai 17	Dr. Doerr	05. Mai 17	05. Mai 17	Dr. Doerr	24h Blutdruckmessung	55,96	29. Jun 17	55,96	59
09. Mai 17	Seemueller Apotheke		05. Mai 17	Dr. Doerr	Rezept Vocado, Arcoxia, Rezept MT	104,53	22. Mai 17	104,53	60
24. Aug 17	Physio Schmidts		05. Mai 17	Dr. Doerr	Rezept MT	192,00	19. Sep 17	192	61
19. Mai 17	Dr. Kau	12. Mai 17		Dr. Kau	Augendruck messen	127,53	31. Mai 17	127,53	62
29. Jun 17	Dr. Doerr		29. Jun 17	Dr. Doerr	Rezept Vocado	103,65	20. Jul 17	103,65	63
29. Jun 17	Dr. Doerr	29. Jun 17		Dr. Doerr	Rezept 	21,44	16. Aug 17	21,44	64
18. Sep 17	KH Agatharied-Radiologie Oberland	31. Aug 17		Radiologie Oberland	Roentgen	64,59	12. Okt 17	64,59	65
19. Sep 17	KH Agatharied - Chirugie	31. Aug 17		KH Agatharied		49,60	12. Okt 17	49,6	66
26. Okt 17	Dr. Huber	24. Okt 17		Dr. Huber	Zahnreinigung	290,88	10. Nov 17	290,88	67
08. Nov 17	Dr.  Bachmaier	24. Okt 17	24. Okt 17	Dr.  Bachmaier	Blutdurckmessung, Rezept Vocado und Amlodipin	32,18	15. Nov 17	32,18	68
25. Okt 17	Seemueller Apotheke		24. Okt 17	Dr.  Bachmaier	Rezept Vocado und Amlodipin	117,48	21. Nov 17	117,48	69
02. Dez 17	Dr. Doerr	23. Nov 17	23. Nov 17	Dr. Doerr	24h Blutdruckmessung, Ueberweisung Kardiologe, 6 MT Fuss	46,55	16. Dez 17	46,55	70
	Physio		23. Nov 17		Rezept				71
15. Feb 18	Kardiologe -  Monika Hoegl	15Jan2018 , 12Feb2018		Monika Hoegl	 Kad-Ultraschall, Belastungs EKG	266,69	22. Feb 18	266,69	72
	Dr. Doerr		22. Jan 18	Dr. Doerr	Rezept Vocado und Amlodipin				73
23. Jan 18	Seemueller Apotheke		22. Jan 18		Rezept Vocado und Amlodipin	117,48	01. Feb 18	117,48	74
	Dr. Doerr		24. Apr 18	Dr. Doerr	Rezept Vocado und Amlodipin				75
27. Apr 18	Seemueller Apotheke		24. Apr 18		Rezept Vocado und Amlodipin	117,48	03. Mai 18	117,48	76
03. Mai 18	Dr. Huber	21. Mrz 18		Dr. Huber	Zahnreinigung				77
	Dr. Huber	02. Mai 18		Dr. Huber	Fissuren	587,38	25. Mai 18	587,38	78
03. Mai 18	Dr. Huber	03. Mai 18		Dr. Huber	Heil und Kostenplan 1.218,54	1473,94	25. Jul 18	1146,52	79
	Dr. Doerr		06. Aug 18	Dr. Doerr	Rezept Vocado und Amlodipin			?	80
06. Aug 18	Seemueller Apotheke		06. Aug 18		Rezept Vocado und Amlodipin	117,48	08. Aug 18	117,48	81
	Dr. Doerr		19. Nov 18	Dr. Doerr	Rezept Vocado und Amlodipin				82
23. Nov 18	Seemueller Apotheke		19. Nov 18		Rezept Vocado und Amlodipin	108,21	28. Nov 18	108,21	83
11. Dez 18	Dr. Huber	11. Dez 18		Dr. Huber	Zahnreinigung	373,83	04. Jan 19	373,83	84
13. Dez 18	Dr. Doerr	13. Dez 18		Dr. Doerr	24h Blutdruck, Blutabnahme				85
15. Dez 18	Dr. Doerr		13. Dez 18	Dr. Doerr	Trimiparmin-Neurax	11,95	19. Dez 18	11,95	86
	Dr. Doerr		13. Dez 18	Dr. Doerr	Spironolacton	16,09	19. Dez 18	16,09	87
	Dr. Doerr		13. Dez 18	Dr. Doerr	Rezept MT	309,51	11. Feb 19	309,51	88
15. Dez 18	Labor Muenchen	12. Dez 18		Dr. Doerr	Labor	15,83	11. Feb 19	15,83	89
15. Dez 18	Synlab	12. Dez 18		Dr. Doerr	Labor	47,65	22. Mrz 19	47,65	90
07. Mrz 19	Dr. Doerr	07. Mrz 19	07. Mrz 19	Dr. Doerr	Rezept Vocado, MT	?	?	?	91
07. Mrz 19	Seemueller Apotheke		07. Mrz 19		Rezept Vocado	94,83	12. Mrz 19	94,83	92
08. Mrz 19	Dr.Mueller	08. Mrz 19	08. Mrz 19	Dr. Mueller	Rezept Amoxi, MT	142,25	20. Apr 19		93
08. Mrz 19	Seemueller Apotheke		08. Mrz 19		Rezept Amoxi	50,27	12. Mrz 19	50,27	94
28. Mrz 19	Synlab	08. Mrz 19		Dr. Mueller	Labor	52,71	04. Apr 19	52,71	95
23. Mai 19	Physio Schmidts		12. Dez 18	Dr. Doerr	MT Rezept -  12.13.2018	216,00	04. Jun 19		96
30. Jul 19	Physio Schmidts		07. Mrz 19	Dr. Doerr	MT Rezept -  3.7.2019	237,00	21. Aug 19	237	97
31. Okt 19	Physio Schmidts		08. Mrz 19	Dr. Mueller	MT Rezept - 3.8.2019	336,00	14. Nov 19	312	98
05. Jun 19	Dr. Doerr	05. Jun 19	05. Jun 19	Dr. Doerr	Rezept Vocado				99
11. Jun 19	Seemueller Apotheke		11. Jun 19	Dr. Doerr	Rezept Vocado	94,38	14. Jun 19	94,38	100
10. Sep 19	Dr. Doerr		10. Sep 19	Dr. Doerr	Rezept Vocado	94,38	18. Sep 19	94,38	101
22. Okt 19	Dr. Doerr		22. Okt 19	Dr. Doerr	MT Rezept 				102
29. Jan 20	Physio Schmidts		22. Okt 19	Dr. Doerr	MT Rezept 	237,00	28. Feb 20	237	103
17. Dez 19	Dr. Doerr		17. Dez 19	Dr. Doerr	Rezept Vocado	94,38	02. Jan 20	94,38	104
23. Feb 20	Dr. Doerr					18,05	05. Mrz 20	18,05	105
27. Mrz 20	Dr. Huber	10. Mrz 20		Dr. Huber	Zahnreinigung	281,05	16. Apr 20	281,05	106
10. Mrz 20	Dr. Doerr		10. Mrz 20		Rezept Vocado,MT				107
24. Mai 20	Physio Schmidts		10. Mrz 20	Dr. Doerr	MT Rezept 	237,00	08. Jun 20	237	108
17. Mrz 20	Seemueller Apotheke		10. Mrz 20	Dr. Doerr	Rezept Vocado	94,44	18. Mrz 20	94,44	109
15. Jul 20	Dr. Bloch		15. Jul 20		Rezept Vocado				110
16. Jul 20	Sempt Apotheke		15. Jul 20	Dr. Bloch	Rezept Vocado	92,06	17. Jul 20	92,06	111
11. Sep 20	Fielmann	11. Sep 20		Fielmann	Brille	669,50	22. Okt 20	669,5	112
02. Okt 20	Dr. Huber	23. Sep 20		Dr. Huber	Zahnreinigung	317,93	10. Okt 20	317,93	113
25. Nov 20	Dr. Bloch		25. Nov 20		Rezept Vocado				114
28. Nov 20	Sempt Apotheke		25. Nov 20	Dr. Bloch	Rezept Vocado	92,06	01. Dez 20	92,06	115
02. Mrz 21	Augenarzt	01. Mrz 21		Dr. Widmann	Attest Fuehrerschein	291,32	08. Mrz 21	291,32	116
03. Apr 21	Dr.Bloch	3.4.2021, 3.25.2021	25. Mrz 21	Dr. Doerr	Labor, aerztl. Attest Fuehrerschein, Untersuchung, Vocado	433,65	14. Apr 21	433,65	117
16. Mrz 21	Dr. Huber	11. Mrz 21		Dr. Huber	Zahnreinigung	299,17	22. Mrz 21	300,17	118
26. Mrz 21	Rathaus Apotheke		25. Mrz 21	Dr. Doerr	Vocado, Rosuvastatin	121,41	29. Mrz 21	121,41	119
24. Mrz 21	Labor				Labor	43,03	29. Mrz 21	43,03	120
12. Mai 21	Rathaus Apotheke		07. Mai 21	Dr. Bloch	Rezept Rosuvastatin	14,49	30. Jun 21	14,49	121
20. Mai 21	Chiropraktiker	12..18..20. Mai		Rainer		220,00	15. Jul 21	220	122
	Dr.Bloch	17. Mai 21		Dr. Bloch	Corona Impfung				123
02. Jun 21	Chiropraktiker	25..27..31. Mai, 02.Juni		Rainer		220,00	15. Jul 21	220	124
17. Jun 21	Chiropraktiker	09..15..17. Juni		Rainer		165,00	15. Jul 21	165	125
16. Jul 21	Rathaus Apotheke		16. Jul 21	Dr.Bloch	Vocado	109,25	28. Jul 21	109,25	126
24. Sep 21	Dr. Huber	24. Sep 21		Dr. Huber	Zahnreinigung	273,65	02. Okt 21	273,65	127
	Dr.Bloch		22. Nov 21	Dr.Bloch	Vocado	109,25	03. Dez 21	109,25	128
12. Feb 22	Dr.Bloch	21. Jan 22		Dr.Bloch		166,75			129
15. Feb 22	Dr. Huber	10. Feb 22		Dr. Huber	Zahnreinigung	275,13	22. Feb 22	275,13	130
11. Apr 22	Dr.Bloch		11. Apr 22	Dr.Bloch	Vocado	109,49	15. Apr 22		131
17. Aug 22	Dr.Bloch		17. Aug 22	Dr.Bloch	Vocado	109,49	30. Aug 22		132
28. Sep 22	Dr. Huber	28. Sep 22		Dr. Huber	Zahnreinigung	287,14	05. Okt 22		133
14. Dez 22	Dr.Bloch		14. Dez 22	Dr.Bloch	Vocado	109,49	20. Dez 23		134
									135
26.01.2023	Dr. Bloch	26.01.2023	26.03.2023	Dr. Doerr	Checkup, Tadalafil Tabletten	354,84	06.03.2023	354,84	136
26.01.2023	SYNLAB	26.01.2023	 	Dr. Doerr	Labor	44,15	22.02.2023	44,15	137
06.02.2023	Rathaus Apotheke	 	26.01.2023 	Dr. Doerr	Rezept	41,48	06.03.2023	41,48	138
28.04.2023	Rathaus Apotheke	 	27.04.2023 	Dr. Bloch	Rezept Vocado	109.49	06.05.2023	109,49	140
09.06.2023	Fielmann	09.06.2023	 	Fielmann		648,90	30.06.2023	648,90	142
08.10.2023	Dr. Bloch	16.08.2023	16.08.2023	Dr. Bloch	Vocado	27,74	10.10.2023	27,74	150
20.07.2023	Rathaus Apotheke	0	20.07.2023	Dr. Huber	Tabletten, Salbe	28,88	19.01.2024	28,88	145
29.12.2023	Hautarzt	20.07.2023		Dr. Huber		89,95	19.01.2024	89,95	147
09.08.2023	Med. Labor Passau	20.07.2023		Dr. Huber	Labor	61,87	19.01.2024	61,87	149
							 	 	162
							 	 	163
10.07.2023	Augenarzt	10.07.2023	10.07.2023	Dr. Widmann	Tropfen	0.00	 	 	141
11.03.2024	Rathaus Apotheke		06.03.2024	Dr. Bloch	Rezept Vocado	109,54	20.03.2024	109,54	156
30.03.2023	Dr. Huber	30.03.2023		Dr. Huber	Zahnreinigung	261,27	17.04.2023	261,27	139
01.04.2024	Dr. Bloch	28.03.2024		Dr. Bloch	Checkup 28.03.2024; 18.04.2024	336,94	02.05.2024	336,94	158
15.04.2024	Synlad Labor	28.03.2024			Labor	57,56	02.05.2024	57,56	159
01.04.2024	Dr. Bloch	18.04.2024	18.04.2024	Dr. Bloch	EKG, Laborwerte besprechen		 	 	160
21.08.2023	Apotheke		16.08.2023	Dr. Bloch	Vocado	109,49	29.08.2023	109,49	151
19.04.2024	Rathaus Apotheke		18.04.2024	Dr. Bloch	HCT Rezept	12,48	02.05.2024	12,48	161
18.07.2023	Augenarzt	20.07.2023		Dr. Widmann		67,19	07.09.2023	67,19	146
31.07.2023	Augenarzt	20.07.2023		Dr. Widmann		24,13	07.09.2023	24,13	148
10.07.2023	Rathaus Apotheke	0	10.07.2023	Dr. Widmann	Augentropfen	19,83	12.09.2023	19,83	143
14.07.2023	Rathaus Apotheke	0	12.07.2023	Dr. Widmann	Antibiotika Tabletten	27,51	12.09.2023	27,51	144
16.11.2023	Dr. Huber	16.11.2023		Dr. Huber	Zahnreinigung	263,85	29.11.2023	 263,85	155
21.11.2023	Dr. Stolz	24.08.2023	24.08.2023	Dr. Stolz		122,45	07.12.2023	122,45	152
24.08.2023	Apotheke		24.08.2023	Dr. Stolz		56,13	07.11.2023	0,30	153
16.11.2023	Dr. Bloch		16.11.2023	Dr. Bloch	Vocado	109,54	02.12.2023	109,54	154
\.


--
-- Data for Name: journal_klon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.journal_klon (key, datum, erfolg, sport, buch, erkenntnis) FROM stdin;
542	1. November 2015	Pino gassi			
543	2. November 2015	Pino gassi, Gindelalm			
544	3. November 2015	Pino gassi, Tauchen			
545	4. November 2015	Pino gassi			
546	5. November 2015	Pino gassi, Rosenheim einkaufen		Die Menschen, die es nicht verdienen	
547	6. November 2015	Pino gassi, McTrek Rosenheim einkaufen		Die Menschen, die es nicht verdienen	
548	7. November 2015	Pino gassi, Fliesen kaufen		Die Menschen, die es nicht verdienen	
549	8. November 2015	Pino gassi, Geitau		Die Menschen, die es nicht verdienen	
550	9. November 2015	Pino gassi		Die Menschen, die es nicht verdienen	
551	10. November 2015	Maria Stundenhotel, Java programmieren		Die Menschen, die es nicht verdienen	
552	11. November 2015	Maria Stundenhotel, Java programmieren		Die Menschen, die es nicht verdienen	
553	12. November 2015	Java programmieren		Die Menschen, die es nicht verdienen	
554	13. November 2015	Pino gassi, Java programmieren, Sauna Bad Wiessee		Die Menschen, die es nicht verdienen	
555	14. November 2015	Pino gassi, Therme Bad Aibling		Die Menschen, die es nicht verdienen	
556	15. November 2015	Pino gassi		Die Menschen, die es nicht verdienen	
557	16. November 2015	Pino gassi		Die Menschen, die es nicht verdienen	
558	17. November 2015	Maria, Java programmieren		Die Menschen, die es nicht verdienen	
559	18. November 2015	Maria, Java programmieren		Die Menschen, die es nicht verdienen	
560	19. November 2015	Java programmieren, JobOSR		Moerderisches Verlangen	
561	20. November 2015	Pino gassi, Java programmieren, JobOSR		Moerderisches Verlangen	
562	21. November 2015	Pino gassi, Rosenheim einkaufen		Moerderisches Verlangen	
563	22. November 2015	Pino gassi, Schliersee		Moerderisches Verlangen	
564	23. November 2015	Pino gassi		Moerderisches Verlangen	
565	24. November 2015	Pino gassi, Sabine Geburtstag		Moerderisches Verlangen	
566	25. November 2015	Maria, JobOSR, Julia		Moerderisches Verlangen	
567	26. November 2015	Maria		Moerderisches Verlangen	
568	27. November 2015	Pino gassi		Toedliche Gier	
569	28. November 2015	Pino gassi, Therme Bad Aibling		Toedliche Gier	
570	29. November 2015	Pino gassi		Toedliche Gier	
571	30. November 2015	Pino gassi		Toedliche Gier	
572	1. Dezember 2015			Toedliche Gier	
573	2. Dezember 2015	Maria		Auftrag Mord	
574	3. Dezember 2015	Angi Bernried		Auftrag Mord	
575	4. Dezember 2015	Pino gassi		Auftrag Mord	
576	5. Dezember 2015	Pino gassi		Auftrag Mord	
577	6. Dezember 2015	Pino gassi, Weihnachtsmarkt		Auftrag Mord	
578	7. Dezember 2015	Pino gassi, JobOSR		Auftrag Mord	
579	8. Dezember 2015	Maria, JobOSR		Auftrag Mord, Ruhe in Frieden	
580	9. Dezember 2015	JobOSR		Ruhe in Frieden	
581	10. Dezember 2015	Maria, JobOSR		Ruhe in Frieden	
582	11. Dezember 2015	Pino gassi, JobOSR, Sauna Bad Wiessee		Ruhe in Frieden	
583	12. Dezember 2015	Therme Bad Aibling		Ruhe in Frieden	
584	13. Dezember 2015	Pino gassi	Boxen	Ruhe in Frieden	
585	14. Dezember 2015		Boxen	Ruhe in Frieden	
586	15. Dezember 2015	Notebook neu installiert		Ruhe in Frieden	
587	16. Dezember 2015	Git Training, Maria		Ruhe in Frieden	
588	17. Dezember 2015	Maria		Ruhe in Frieden	
589	18. Dezember 2015	Pino gassi	Boxen	Asphalt	
590	19. Dezember 2015	Pino gassi	Boxen	Asphalt	
591	20. Dezember 2015	Pino gassi Weissachauen		Asphalt	
592	21. Dezember 2015	Pino gassi		Asphalt	
593	22. Dezember 2015	Maria	Boxen	Asphalt	
594	23. Dezember 2015	Maria		Asphalt	
595	24. Dezember 2015	Pino gassi, Mama telefoniert		Asphalt	
596	25. Dezember 2015	Pino gassi	Boxen	Asphalt	
597	26. Dezember 2015	Pino gassi, Therme Bad Aibling		Asphalt	
598	27. Dezember 2015	Pino gassi		Asphalt	
599	28. Dezember 2015	Pino gassi, Gambach gefahren		Schlaglicht	
600	29. Dezember 2015	Pino gassi, Mama Geburtstag, TS Gina			
601	30. Dezember 2015	Pino Gassi, Hausham gefahren		Schlaglicht	
602	31. Dezember 2015	Pino gassi			
603	1. Januar 2016	Pino gassi	Boxen	Schlaglicht	
604	2. Januar 2016	Pino gassi		Schlaglicht	
605	3. Januar 2016	Pino gassi, spazieren Schliersee		Schlaglicht	
606	4. Januar 2016	Pino gassi	Boxen	Schlaglicht	
607	5. Januar 2016	Pino gassi, TS Jessia Silver abspritzen		Schlaglicht	
608	6. Januar 2016	Pino gassi, Holzkirchen, Land Cruiser angeschaut	Boxen	Schlaglicht	
609	7. Januar 2016	Maria		Schlaglicht	
610	8. Januar 2016	Pino gassi	Boxen	Schlaglicht	
611	9. Januar 2016	Pino gassi		Schlaglicht	
612	10. Januar 2016	Pino gassi	Boxen	Schlaglicht	
613	11. Januar 2016	Pino gassi, Sparkasse wg Darlehen	Boxen	Schlaglicht	
614	12. Januar 2016	Maria		Die Minnesota Verschwoerung	
615	13. Januar 2016	Maria, Termin Tättowieren		Die Minnesota Verschwoerung	
616	14. Januar 2016	JobOSR, Angie Bernried		Die Minnesota Verschwoerung	
617	15. Januar 2016	Pino gassi	Boxen	Die Minnesota Verschwoerung	
618	16. Januar 2016	Pino gassi	Boxen	Die Minnesota Verschwoerung	
619	17. Januar 2016	Pino gassi	Boxen	Die Minnesota Verschwoerung	
620	18. Januar 2016	Pino gassi, Verso Inspektion		Die Minnesota Verschwoerung	
621	19. Januar 2016	Maria		Die Minnesota Verschwoerung	
622	20. Januar 2016	JobOSR		Die Minnesota Verschwoerung	
623	21. Januar 2016	JobOSR		Die Minnesota Verschwoerung	
624	22. Januar 2016	Pino gassi, Seedrache Taettowieren		Die Minnesota Verschwoerung	
625	23. Januar 2016	Pino gassi, Rosenheim McTrek		Die Minnesota Verschwoerung	
626	24. Januar 2016	Pino gassi		Die Minnesota Verschwoerung	
627	25. Januar 2016	Pino gassi		Die Minnesota Verschwoerung	
1554	16. August 2018			Das Boese	
628	26. Januar 2016	JobOSR, MBO review		Mörderisches Stillwater	
629	27. Januar 2016	JobOSR, Trans Izabella		Mörderisches Stillwater	
630	28. Januar 2016	JobOSR, Maria		Mörderisches Stillwater	
631	29. Januar 2016	Pino gassi		Mörderisches Stillwater	
632	30. Januar 2016	Pino gassi, Handy repariert		Mörderisches Stillwater	
633	31. Januar 2016	Pino gassi		Mörderisches Stillwater	
634	1. Februar 2016	Pino gassi		Mörderisches Stillwater	
635	2. Februar 2016	JobOSR		Mörderisches Stillwater	
636	3. Februar 2016	JobOSR, Maria		Mörderisches Stillwater	
637	4. Februar 2016	JobOSR		Mörderisches Stillwater	
638	5. Februar 2016	Pino gassi		Mörderisches Stillwater	
639	6. Februar 2016	Pino gassi, Bad Aibling Therme		Mörderisches Stillwater	
640	7. Februar 2016	Pino gassi		Nicht ihre Schuld	
641	8. Februar 2016	Pino gassi		Nicht ihre Schuld	
642	9. Februar 2016	Pino gassi		Nicht ihre Schuld, Lebkuchenmann	
643	10. Februar 2016			Lebkuchenmann	
644	11. Februar 2016	Angi Bernried		Lebkuchenmann	
645	12. Februar 2016	Pino gassi		Lebkuchenmann	
646	13. Februar 2016	Pino gassi		Lebkuchenmann	
647	14. Februar 2016	Pino gassi		Lebkuchenmann	
648	15. Februar 2016	Pino gassi		Lebkuchenmann	
649	16. Februar 2016	Maria Stundenhotel		Lebkuchenmann	
650	17. Februar 2016	Python, Maria		Lebkuchenmann	
651	18. Februar 2016	Maria, Python		Lebkuchenmann	
652	19. Februar 2016	Pino gassi, Python		Lebkuchenmann	
653	20. Februar 2016	Pino gassi		Lebkuchenmann	
654	21. Februar 2016	Pino gassi		Lebkuchenmann	
655	22. Februar 2016	Pino gassi, Python		Relic	
656	23. Februar 2016	Maria		Relic	
657	24. Februar 2016			Relic	
658	25. Februar 2016	Maria		Relic	
659	26. Februar 2016	Pino gassi		Relic	
660	27. Februar 2016	Pino gassi		Relic	
661	28. Februar 2016	Pino gassi		Relic	
662	29. Februar 2016	Pino gasi		Relic	
663	1. März 2016	Pino gassi, Pyhton		Relic	
664	2. März 2016	Python		Relic	
665	3. März 2016	Zahnarzt, Python		Relic	
666	4. März 2016	Pino gassi, Python		Relic	
667	5. März 2016	Pino gassi, Therme Bad Aibling		Relic	
668	6. März 2016	Pino gasi		Relic	
669	7. März 2016	Pino gassi		Relic	
670	8. März 2016	Pino Riffenthal, Maria Hotel übernachtet			
671	9. März 2016	Maria		Relic	
672	10. März 2016	Pyhton		Relic	
673	11. März 2016	Pino gassi		Relic	
674	12. März 2016	Pino gassi		Relic	
675	13. März 2016	Pino gassi		Relic	
676	14. März 2016	Pino gassi, Python		Relic	
677	15. März 2016	Python, Maria, JobOSR new Release und SF		Guter Bulle, boeser Bulle	
678	16. März 2016	Python, Maria		Guter Bulle, boeser Bulle	
679	17. März 2016	Python, JobOSR		Guter Bulle, boeser Bulle	
680	18. März 2016	Pino gassi, JobOSR		Guter Bulle, boeser Bulle	
681	19. März 2016	Pino gassi, Therme Bad Aibling		Guter Bulle, boeser Bulle	
682	20. März 2016	Pino gassi	Boxen	Guter Bulle, boeser Bulle	
683	21. März 2016	Pino gassi	Boxen	Guter Bulle, boeser Bulle	
684	22. März 2016	JobOSR		Guter Bulle, boeser Bulle	
685	23. März 2016	JobOSR		Guter Bulle, boeser Bulle	
686	24. März 2016	Pino gassi		Guter Bulle, boeser Bulle	
687	25. März 2016	Pino gassi		Guter Bulle, boeser Bulle	
688	26. März 2016	Pino gassi		Guter Bulle, boeser Bulle	
689	27. März 2016	Pino gassi		Guter Bulle, boeser Bulle	
690	28. März 2016	Pino gassi	Boxen	Die Psychopathen	
691	29. März 2016	Pino gassi	MTB, Boxen	Die Psychopathen	
692	30. März 2016	Maria, JobOSR		Die Psychopathen	
693	31. März 2016	JobOSR, Maria, Angi Bernired		Die Psychopathen	
694	1. April 2016	Pino gassi		Die Psychopathen	
695	2. April 2016	Pino gassi, Therme Bad Aibling	MTB	Die Psychopathen	
696	3. April 2016	Pino gassi	MTB	Die Psychopathen	
697	4. April 2016	Pino gassi		Die Psychopathen	
698	5. April 2016	Maria		Die Psychopathen	
699	6. April 2016			Die Psychopathen	
700	7. April 2016	Maria		Die Psychopathen	
701	8. April 2016	Pino gassi		Die Psychopathen	
702	9. April 2016	Pino gassi, Holz		Die Psychopathen	
703	10. April 2016	Pino gassi, Schwimmbad Bad Wiessee		Der Chemiker	
704	11. April 2016	Pino gassi	MTB	Der Chemiker	
705	12. April 2016	Maria Stundenhotel		Der Chemiker	
706	13. April 2016			Der Chemiker	
707	14. April 2016	Maria Stundenhotel		Der Chemiker	
708	15. April 2016	Pino gassi		Der Chemiker	
709	16. April 2016	Pino gassi, Therme Bad Aibling	MTB	Der Chemiker	
710	17. April 2016	Pino gassi	MTB	Der Chemiker	
711	18. April 2016	Pino gassi	MTB	Der Chemiker	
712	19. April 2016	Maria		Der Chemiker	
713	20. April 2016	Maria		Der Chemiker	
714	21. April 2016	Pyhton xml parser		Paketbombe	
715	22. April 2016	Pino gassi	MTB	Paketbombe	
716	23. April 2016	Pino gassi	MTB	Paketbombe	
717	24. April 2016	Pino gassi	MTB	Paketbombe	
718	25. April 2016	Pino gassi	MTB	Paketbombe	
719	26. April 2016	Maria		Paketbombe	
720	27. April 2016	Maria		Paketbombe	
721	28. April 2016	Maria		Paketbombe	
722	29. April 2016	Pino gassi		Paketbombe	
723	30. April 2016	Pino gassi, Therme Bad Aibling	MTB	Paketbombe	
724	1. Mai 2016	Pino gassi	MTB	Die Scharfschuetzen	
725	2. Mai 2016	Pino gassi, Manu angerufen	MTB	Die Scharfschuetzen	
726	3. Mai 2016	Python		Die Scharfschuetzen	
727	4. Mai 2016	Python		Die Scharfschuetzen	
728	5. Mai 2016	Pino gassi	MTB	Die Scharfschuetzen	
729	6. Mai 2016	Pino gassi		Die Scharfschuetzen	
730	7. Juni 2016	Pino Gassi	MTB, Neuhaus Bhf	Die Erzfeinde	
731	8. Mai 2016	Pino gassi, Mama telefoniert	MTB, MB Berg	Die Erzfeinde	
732	9. Mai 2016	Pino gassi, Manu angerufen, treffen auf Kaffee - ging nicht	MTB	Die Erzfeinde	
733	10. Mai 2016	Maria		Die Erzfeinde	
734	11. Mai 2016	Maria		Die Erzfeinde	
735	12. Mai 2016	Maria, Brief Manu - bekomme aber bestimmt keine Antwort		Die Erzfeinde	
736	13. Mai 2016	Pino gassi		Die Erzfeinde	
737	14. Mai 2016	Pino gassi, Therme Bad Aibling	MTB - Berg Woernsmuehl	Die Erzfeinde	
738	15. Mai 2016	Pino gassi	MTB - Berg Woernsmuehl	Die Erzfeinde	
739	16. Mai 2016	Pino gassi, Therme Bad Aibling	MTB - Miesbach	Die Erzfeinde	
740	17. Mai 2016	Pino gassi	MTB - Berg Woernsmuehl	Die Erzfeinde	
741	18. Mai 2016	Pino gassi	MTB	Die Erzfeinde	
742	19. Mai 2016	Pino gassi, Mantel geliefert		Die Erzfeinde	
743	20. Mai 2016	Pino gassi, Hut	MTB - Berg Woernsmuehl	Allen wollen Tequila	
744	21. Mai 2016	Pino gassi, Holz sägen		Allen wollen Tequila	
745	22. Mai 2016	Pino gassi	MTB - Miesbach	Allen wollen Tequila	
746	23. Mai 2016	Pino gassi		Allen wollen Tequila	
747	24. Mai 2016	Maria, Pino OP		Allen wollen Tequila	
748	25. Mai 2016	Maria		Allen wollen Tequila	
749	26. Mai 2016	Pino gassi	MTB - Berg Woernsmuehl	Allen wollen Tequila	
750	27. Mai 2016	Pino gassi		Allen wollen Tequila	
751	28. Mai 2016	Pino gassi	MTB - Berg Woernsmuehl	Allen wollen Tequila	
752	29. Mai 2016	Pino gassi	MTB - Miesbach	Allen wollen Tequila	
753	30. Mai 2016	Pino gassi		Truck Stop - Rastplatz de Grauens	
754	31. Mai 2016			Truck Stop - Rastplatz de Grauens	
755	1. Juni 2016			Truck Stop - Rastplatz de Grauens, Kite	
756	2. Juni 2016			Kite	
757	3. Juni 2016	Pino gassi, Tierazrt		Kite	
758	4. Juni 2016	Pino gassi, Holz sägen		Kite	
759	5. Juni 2016	Pino gassi	MTB - Berg Woernsmuehl	Kite	
760	6. Juni 2016	Pino gassi		Kite	
761	7. Juni 2016	python prog, KD telefoniert		Kite	
762	8. Juni 2016			Kite	
763	9. Juni 2016	Angi Bernried		Kite	
764	10. Juni 2016	Pino gassi		Kite	
765	11. Juni 2016	Pino gassi, Therme Bad Aibling	MTB - Berg Woernsmuehl	Kite	
766	12. Juni 2016	Pino gassi	MTB - Berg Woernsmuehl	Kite	
767	13. Juni 2016	Pino gassi		Kite	
768	14. Juni 2016	Maria	 Mama, Kerstin telefoniert		Kite
769	15. Juni 2016			Kite	
770	16. Juni 2016	Maria		Kite	
771	17. Juni 2016	Pino gassi		Kite	
772	18. Juni 2016	Pino gassi	 Harley Davidson Dyna Low Rider gekauft		painful dependency
773	19. Juni 2016	Pino gassi		painful dependency	
774	20. Juni 2016	Pino gassi	 Rosenheim Louis Helm gekauft		painful dependency
775	21. Juni 2016			So wahr uns Gott helfe	
776	22. Juni 2016	Maria Stundenhotel und Neufahrn Mühlseen		So wahr uns Gott helfe	
777	23. Juni 2016	Maria getriffen, draussen 	 Helm gekauft		So wahr uns Gott helfe
778	24. Juni 2016	Pino gassi, Harley zugelassen		So wahr uns Gott helfe	
779	25. Juni 2016	Pino gassi, Holz sägen, TG und Keller raeumen		So wahr uns Gott helfe	
780	26. Juni 2016	Pino gassi	 Kerstin telefoniert		So wahr uns Gott helfe
781	27. Juni 2016	Pino gassi	 Harley überwiesen	 Sabine 15000,00 Euro für Harley geliehen	
782	28. Juni 2016	Maria	 Lederjacke gekauft		So wahr uns Gott helfe
783	29. Juni 2016			So wahr uns Gott helfe	
784	30. Juni 2016	Maria		So wahr uns Gott helfe	
785	1. Juli 2016	Pino gassi		So wahr uns Gott helfe	
786	2. Juli 2016	Pino gassi	 mit Chris Harley geholt, Therme Bad Aibling		So wahr uns Gott helfe
787	3. Juli 2016	Pino gassi	  Harley gefahren		So wahr uns Gott helfe
788	4. Juli 2016	Pino gassi	 Landratsamt		So wahr uns Gott helfe
789	5. Juli 2016	Pino gassi	 Lukas Geburtstag		So wahr uns Gott helfe
790	6. Juli 2016	Maria		So wahr uns Gott helfe	
791	7. Juli 2016			So wahr uns Gott helfe	
792	8. Juli 2016	Pino gassi		So wahr uns Gott helfe	
793	9. Juli 2016	Pino gassi	 Holz sägen mit Motorsäge	 Harley Sitzpolster	  Harley gefahren
794	10. Juli 2016	Pino gassi		So wahr uns Gott helfe	
795	11. Juli 2016	Pino gassi, Fahrstunde		So wahr uns Gott helfe	
796	12. Juli 2016	Prüfauftrag für Führerschein erhalten		So wahr uns Gott helfe	
797	13. Juli 2016	Angi Bernried		Tannenbergs letzter Fall	
798	14. Juli 2016	Pino gassi	 HNO	 Louis Jacke und Hose gekauft	
799	15. Juli 2016	Pino gassi	 Fahrstunde		Tannenbergs letzter Fall
800	16. Juli 2016	Pino gassi	 Therme Bad Aibling		Tannenbergs letzter Fall
801	17. Juli 2016	Pino gassi		Tannenbergs letzter Fall	
802	18. Juli 2016	Fahrstunde	 HNO		Tannenbergs letzter Fall
803	19. Juli 2016	Pino gassi	 Fahrstunde		Tannenbergs letzter Fall
804	20. Juli 2016	Pino gassi, Führerschein Prüfung	 erste fahrt mit der Harley		Tannenbergs letzter Fall
805	21. Juli 2016	Maria		Tannenbergs letzter Fall	
806	22. Juli 2016	Pino gassi	 Augenarzt	 Harley fahren	
807	23. Juli 2016	Pino gassi, Harley fahren		Die Schwester	
808	24. Juli 2016	Pino gassi	 Harley fahren		Isarbrodeln
809	25. Juli 2016	Pino gassi	 Harley fahren		Isarbrodeln
810	26. Juli 2016	Maria getroffen und sie hat es beendet		Isarbrodeln	
811	27. Juli 2016	Doerr Fuehrerschein Bescheinigung		Isarbrodeln	
812	28. Juli 2016	Harley an Arbeit gefahren			
813	29. Juli 2016	aerztl. Bescheinigung fuer Fuehrerschein abgegeben		Isarbrodeln	
2073	12. März 2020	FXDL fahren			
814	30. Juli 2016	Pino gassi	 Harley fahren Sylvenstein	 Therme Bad Aibling	 Essen Dinzler
815	31. Juli 2016	Pino gassi	 Harley gefahren		Isarbrodeln
816	1. August 2016	Pino gassi		Isarbrodeln	
817	2. August 2016	Harley an Arbeit gefahren		Isarbrodeln	
818	3. August 2016	Harley an Arbeit gefahren		Isarbrodeln	
819	4. August 2016	Harley an Arbeit gefahren, Maria SMS		Isarbrodeln	
820	5. August 2016	Pino gassi, Bauhof MB, Maria SMS		Isarbrodeln	
821	6. August 2016	Pino gassi, Harley gefahren		Isarbrodeln	
822	7. August 2016	Pino gassi, Harley gefahren		Isarbrodeln	
823	8. August 2016	Pino gassi		Isarbrodeln	
824	9. August 2016	Maria		Isarbrodeln	
825	10. August 2016	Maria		Isarbrodeln	
826	11. August 2016	Harley arbeit gefahren		Isarbrodeln	
827	12. August 2016	Pino gassi		Isarbrodeln	
828	13. August 2016	Pino gassi	 Harley gefahren	 Louis Rosenheim, Sabine Hose gekauft	
829	14. August 2016	Pino gassi	 Boot fahren, akku kaputt		Isarbrodeln
830	15. August 2016	Pino gassi		Isarbrodeln	
831	16. August 2016	Pino gassi	 Harley Inspektion, Leihmaschine Street Bob		Isarbrodeln
832	17. August 2016	Pino gassi		Isarbrodeln	
833	18. August 2016	Pino gassi	 Harley fahren		Isarbrodeln
834	19. August 2016	Pino gassi		Isarbrodeln	
835	20. August 2016	Pino gassi	 Harley gefahren, Simsee	 Dinzler essen	
836	21. August 2016	Pino gassi	 Therme Bad Aibling		
837	22. August 2016	Pino gassi	  Harley fahren, Ammersee, Kloster Andechs 		Die Schwester
838	23. August 2016	Pino gassi	 Harley fahren Chiemsee		Die Schwester
839	24. August 2016	Pino gassi	 Harley fahren Sylvenstein		Die Schwester
840	25. August 2016	Pino gassi	 Boot kaputt		Der Faenger
841	26. August 2016	Pino gassi	 Harley fahren, Sylvenstein, Walchensee		Der Faenger
842	27. August 2016	Pino gassi	 Harley fahren	 Freibad Miesbach	
843	28. August 2016	Pino gassi	 Harley fahren Samerberg		Der Faenger
844	29. August 2016	Pino gassi	 Harley gefahren	 Führerschein geholt	
845	30. August 2016	Pino gassi	 Harley fahren		Der Faenger
846	31. August 2016	Harley arbeit gefahren		Der Faenger	
847	1. September 2016	Harley arbeit gefahren		Der Faenger	
848	2. September 2016	Pino gassi	 Harley fahren		Der Faenger
849	3. September 2016	Pino gassi	 Harley fahren Achensee, falsch Richtung Innsbruck		Der Faenger
850	4. September 2016	Pino gassi	 Harley gefahren Thiersee		Der Faenger
851	5. September 2016	Pino gassi		Der Faenger	
852	6. September 2016	Angie Bernried		Der Faenger	
853	7. September 2016	Harley arbeit gefahren		Der Faenger	
854	8. September 2016	Maria		Der Faenger	
855	9. September 2016	Pino gassi	 Berkmann	 Kerstin Deinert Sex	
856	10. September 2016	Pino gassi	 OTT Bad Toelz		Der Faenger
857	11. September 2016	Pino gassi	 Harley fahren		Der Faenger
858	12. September 2016	Pino gassi		Der Faenger	
859	13. September 2016	Harley arbeit gefahren		Der Faenger	
860	14. September 2016	Pino gassi	 Harley gefahren Sylvenstein, Walchensee		Der Faenger
861	15. September 2016	Harley arbeit gefahren		Der Faenger	
862	16. September 2016	Pino gassi		Der Faenger	
863	17. September 2016	Pino gassi	 Therme Bad Aibling		Der Faenger
864	18. September 2016	Pino gassi, Harley fahren, rutschig		Der Faenger	
865	19. September 2016	Pino gassi		Der Faenger	
866	20. September 2016			Der Faenger	
867	21. September 2016	Harley arbeit gefahren, sehr nebelig, Handschuhe werden schnell nass	 Pino gassi	 Stutemeyer	
868	22. September 2016	Pino gassi	 Harley fahren, Simsee	 Pino impfen	
869	23. September 2016	Pino gassi		Der Faenger	
870	24. September 2016	Pino gassi	 Harley fahren	 Autoaustellung Miesbach	
871	25. September 2016	Pino gassi	 Harley fahren, Chiemsee		Der Faenger
872	26. September 2016	Pino gassi		Der Faenger	
873	27. September 2016	Mama telefoniert		Der Faenger	
874	28. September 2016	Pino gassi	 Harley fahren Sylvenstein		Der Faenger
875	29. September 2016	Harley arbeit gefahren		Himmelhorn	
876	30. September 2016	Pino gassi		Himmelhorn	
877	1. Oktober 2016	Pino gassi	 Harley fahren		Himmelhorn
878	2. Oktober 2016	Pino gassi		Himmelhorn	
879	3. Oktober 2016	Pino gassi		Himmelhorn	
880	4. Oktober 2016			Himmelhorn	
881	5. Oktober 2016	Pino gassi	 Harley fahren		Himmelhorn
882	6. Oktober 2016	Maria		Himmelhorn	
883	7. Oktober 2016	Pino gassi		Himmelhorn	
884	8. Oktober 2016	Pino gassi	 Therme Bad Aibling		Himmelhorn
885	9. Oktober 2016	Pino gassi	 Harley fahren		Himmelhorn
886	10. Oktober 2016	Pino gassi		Himmelhorn	
887	11. Oktober 2016	Maria		Himmelhorn	
888	12. Oktober 2016	Maria		Himmelhorn	
889	13. Oktober 2016	Pino gassi, Harley fahren		Himmelhorn	
890	14. Oktober 2016	Pino gassi		Himmelhorn	
891	15. Oktober 2016	Pino gassi, Harley fahren		Himmelhorn	
892	16. Oktober 2016	Pino gassi, Harley fahren		Himmelhorn	
893	17. Oktober 2016	Pino gassi, Harley fahren		Himmelhorn	
894	18. Oktober 2016	Maria		Himmelhorn	
895	19. Oktober 2016	Termin Taettowierer ausgemacht		Himmelhorn	
896	20. Oktober 2016	Maria		Himmelhorn	
897	21. Oktober 2016	Pino gassi, Verso Service		Himmelhorn	
898	22. Oktober 2016	Pino gassi, Harley  fahren um den Chiemsee		Himmelhorn	
899	23. Oktober 2016	Pino gassi, Harley fahren		Himmelhorn	
900	24. Oktober 2016	Pino gassi, Physio , Harley fahren		Himmelhorn	
901	25. Oktober 2016	Maria		Himmelhorn	
902	26. Oktober 2016	Pino gassi, Taettowieren		Himmelhorn	
903	27. Oktober 2016	Pino gassi, Harley fahren		Himmelhorn	
904	28. Oktober 2016	Pino gassi		Himmelhorn	
905	29. Oktober 2016	Pino gassi, Harley fahren		Himmelhorn	
906	30. Oktober 2016	Pino gassi, Harley fahren		Himmelhorn	
907	31. Oktober 2016	Pino gassi, Harley fahren		Tod in Schweden	
908	1. November 2016	Pino gassi, Harley putzen		Tod in Schweden	
909	2. November 2016	Angi Bernried		Tod in Schweden	
910	3. November 2016				
911	4. November 2016	Pino gassi		Tod in Schweden	
912	5. November 2016	Pino gassi, Harley Ölwechsel, Therme Bad Aibling		Tod in Schweden	
913	6. November 2016	Pino gassi		Tod in Schweden	
914	7. November 2016	Pino gassi		Tod in Schweden	
915	8. November 2016	Maria Stundenhotel		Tod in Schweden	
916	9. November 2016	Pino gassi, Ölfilter gewechselt		Tod in Schweden	
917	10. November 2016	Maria		Tod in Schweden	
918	11. November 2016	Pino gassi		Tod in Schweden	
919	12. November 2016	Pino gassi, Harley Batterie ausgebaut		Tod in Schweden	
920	13. November 2016	Pino gassi		Tod in Schweden	
921	14. November 2016	Pino gassi		Im Wald	
922	15. November 2016	Maria		Im Wald	
923	16. November 2016	Pino gassi, Taettowieren		Im Wald	
924	17. November 2016	Maria		Im Wald	
925	18. November 2016	Pino gassi		Im Wald	
926	19. November 2016	Pino gassi, Holz sägen		Im Wald	
927	20. November 2016	Pino gassi		Im Wald	
928	21. November 2016	BMC Contractor - Luis		Im Wald	
929	22. November 2016	Maria		Im Wald	
930	23. November 2016	Krank		Im Wald	
931	24. November 2016	Pino gassi		Im Wald	
932	25. November 2016	Pino gassi, Sabine Geburstag, Mama telefoniert		Im Wald	
933	26. November 2016	Pino gassi, Therme Bad Aibling		Im Wald	
934	27. November 2016	Pino gassi, Kerstin telefoniert		Im Wald	
935	28. November 2016	Pino gassi		Im Wald	
936	29. November 2016			Im Wald	
937	30. November 2016			Im Wald	
938	1. Dezember 2016	Maria		Im Wald	
939	2. Dezember 2016	Pino gassi		Im Wald	
940	3. Dezember 2016	Pino gassi		Im Wald	
941	4. Dezember 2016	Pino gassi		Der Turbo von Marrakesch	
942	5. Dezember 2016	Pino gassi		Der Turbo von Marrakesch	
943	6. Dezember 2016	Pino gassi		Der Turbo von Marrakesch	
944	7. Dezember 2016	Pino gassi, München Augenklinik		Der Turbo von Marrakesch	
945	8. Dezember 2016	Pino gassi, München Augenklinik		Der Turbo von Marrakesch	
946	9. Dezember 2016	Pino gassi		Der Turbo von Marrakesch	
947	10. Dezember 2016	Pino gassi, München Augenklinik		Der Turbo von Marrakesch	
948	11. Dezember 2016	Pino gassi		Der Turbo von Marrakesch	
949	12. Dezember 2016	Pino gassi		Der Turbo von Marrakesch	
950	13. Dezember 2016			Der Turbo von Marrakesch	
951	14. Dezember 2016			Unkrautkiller	
952	15. Dezember 2016	Maria		Unkrautkiller	
953	16. Dezember 2016	Pino gassi		Unkrautkiller	
954	17. Dezember 2016	Pino gassi			
955	18. Dezember 2016	Pino gassi		Unkrautkiller	
956	19. Dezember 2016	Pino gassi, Maria beendet		Unkrautkiller	
957	20. Dezember 2016	Pino gassi			
958	21. Dezember 2016	Pino gassi			
959	22. Dezember 2016	Pino gassi, Sabine Augenklinik OP		Unkrautkiller	
960	23. Dezember 2016	Pino gassi		Unkrautkiller	
961	24. Dezember 2016	Pino gassi, Dauerauftrag geändert auf 465,00		Unkrautkiller	
962	25. Dezember 2016	Pino gassi		Unkrautkiller	
963	26. Dezember 2016	Pino gassi		Unkrautkiller	
964	27. Dezember 2016	Pino gassi		Unkrautkiller	
965	28. Dezember 2016	Mama telefoniert, Job Absage		Champagnerblut	
966	29. Dezember 2016	Pino gassi, Mama Geburtstag, telefoniert		Champagnerblut	
967	30. Dezember 2016	Pino gassi		Champagnerblut	
968	31. Dezember 2016	Pino gassi, Ingrid SMS, WC kaufen		Champagnerblut	
969	1. Januar 2017	Pino gassi, Mama telefoniert, Maria SMS	MTB fahen	Champagnerblut	will sie nicht mehr treffen, lass mich nicht weiter verarschen, miesen Character
970	2. Januar 2017	Pino gassi		Champagnerblut	
971	3. Januar 2017	Pino gassi		Champagnerblut	
972	4. Januar 2017	Pino gassi, Biker Stiefel House of Flames gekauft		Champagnerblut	
973	5. Januar 2017	Pino gassi		Champagnerblut	
974	6. Januar 2017	Pino gassi, KD SMS, Whiskey kuchen gebacken		Champagnerblut	
975	7. Januar 2017	Pino gassi, Mama telefoniert		Champagnerblut	
976	8. Januar 2017	Pino gassi		Champagnerblut	
977	9. Januar 2017	Pino gassi, Handschuhe bestellt		Champagnerblut	
978	10. Januar 2017	TS Maggi		Champagnerblut	
979	11. Januar 2017	System reboot sudo entry		Champagnerblut	
980	12. Januar 2017	Pino gassi, Handschuhe Sabine bestellt		Champagnerblut	
981	13. Januar 2017	Pino gassi		Schwarzes Netz	
982	14. Januar 2017	Pino gassi		Schwarzes Netz	
983	15. Januar 2017	Pino gassi		Schwarzes Netz	
984	16. Januar 2017	Pino gassi		Schwarzes Netz	
985	17. Januar 2017			Schwarzes Netz	
986	18. Januar 2017			Schwarzes Netz	
987	19. Januar 2017			Schwarzes Netz	
988	20. Januar 2017	Pino gassi		Schwarzes Netz	
989	21. Januar 2017	Pino gassi		Schwarzes Netz	
990	22. Januar 2017	Pino gassi		Schwarzes Netz	
991	23. Januar 2017	Pino gassi		Schwarzes Netz	
992	24. Januar 2017	Schule		Schwarzes Netz	
993	25. Januar 2017	BMC onsite		Schwarzes Netz	
994	26. Januar 2017			Schwarzes Netz	
995	27. Januar 2017	Pino gassi		Schwarzes Netz	
996	28. Januar 2017	Pino gassi, Kuchen backen		Schwarzes Netz	
997	29. Januar 2017	Pino gassi, Dinzler		Schwarzes Netz	
998	30. Januar 2017	Pino gassi		Schwarzes Netz	
999	31. Januar 2017	Pino gassi		Schwarzes Netz	
1000	1. Februar 2017	Gorschlüter wg HD Reifen		Schwarzes Netz	
1001	2. Februar 2017	Zahnzarzt		Schwarzes Netz	
1002	3. Februar 2017	Pino gassi		Schwarzes Netz	
1003	4. Februar 2017	Pino gassi, Therme Bad Aibling, Dinzler		Gas und Galle	
1004	5. Februar 2017	Pino gassi		Gas und Galle	
1005	6. Februar 2017	Pino gassi		Gas und Galle	
1006	7. Februar 2017	EMA V900 upgrade		Gas und Galle	
1007	8. Februar 2017	MBO		Gas und Galle	
1008	9. Februar 2017			Gas und Galle	
1009	10. Februar 2017	Pino gassi, Cycle Factory wegen Reifen wechsel		Gas und Galle	
1010	11. Februar 2017	Pino gassi, Krapfen backen		Gas und Galle	
1011	12. Februar 2017	Pino gassi, Flur wischen		Gas und Galle	
1012	13. Februar 2017	Pino gassi		Gas und Galle	
1013	14. Februar 2017	Control-M Tag München		Gas und Galle	
1014	15. Februar 2017	BMC R&D onsite, Harley Boots		Gas und Galle	
1015	16. Februar 2017	Pino gassi		Gas und Galle	
1016	17. Februar 2017	Pino gassi, IMOT München, Lederweste gekauft		Gas und Galle	
1017	18. Februar 2017	Pino gassi		Gas und Galle	
1018	19. Februar 2017	Pino gassi, Dinzler		Mr K	
1019	20. Februar 2017	Pino gassi		Mr K	
1020	21. Februar 2017	BMC WCM session		Mr K	
1021	22. Februar 2017	BMC WCM session		Mr K	
1022	23. Februar 2017	MUCCT4D und MUCCT1T auf V900 upgrade		Mr K	
1023	24. Februar 2017	Pino gassi, Allianz Harley ummelden		Mr K	
1024	25. Februar 2017	Pino gassi, Gemuese, Krapfen, Therme Bad Aibling		Mr K	
1025	26. Februar 2017	Pino gassi		Mr K	
1026	27. Februar 2017	Pino gassi, Manu geholfen mit Presentation, Harley Batterie einbauen, Motorrad Kleidung		Mr K	
1027	28. Februar 2017	Pino gassi, Juergen gestorben		Mr K	
1028	1. März 2017	Pino gassi, Eybel Pralinen, Harley umgemeldet 03 bis 11		Mr K	
1029	2. März 2017	Pino gassi, Harley fahren, Cyclic Factory wg Auspuff		Mr K	
1030	3. März 2017	Pino gassi, Harley fahren		Mr K	
1031	4. März 2017	Pino gassi, Harley fahren, Herrmannsdorfer		Der Nagelkiller	
1032	5. März 2017	Pino gassi, Harley fahren		Der Nagelkiller	
1033	6. März 2017	Pino gassi, KH Agatharied MRT		Der Nagelkiller	
1034	7. März 2017	Pino gassi, Dr Berkmann, Gambach, SMS Maria nur Unsinn und warum ueberhaupt angeschrieben			
1035	8. März 2017	Pino gassi, Gambach, Juergen Beerdigung, Birgit getroffen, Birgit hat keine Zeit am Abend			
1036	9. März 2017	Pino gassi, Ingird SMS hat keine Zeit, Angi Bernried, SMS Maria, aber das ist einfach zu doof 		Der Nagelkiller	
1037	10. März 2017	Pino gassi		Der Nagelkiller	
1038	11. März 2017	Pino gassi	 Harley fahren		Der Nagelkiller
1039	12. März 2017	Pino gassi, Harley fahren Tatzelwurm		Der Nagelkiller	
1040	13. März 2017	Pino gassi, Manu zu Hause wegen Presentation gefragt, Harley fahren Sudelfeld, Tatzelwurm		Der Nagelkiller	
1041	14. März 2017	Hochzeitstag, MUCCT3T-V900, MUCCT4T-V900		Der Nagelkiller	
1042	15. März 2017	Harley Reifen Wechsel Cycle Factory		Der Nagelkiller	
1043	16. März 2017	Harley Arbeit gefahren, MUCCT6T-V900, Rene lunch		Der Nagelkiller	
1044	17. März 2017	Pino gassi, Harley fahren, Hermannsdorfer		Der Nagelkiller	
1045	18. März 2017	Pino gassi, Therme Bad Aibling		Der Nagelkiller	
1046	19. März 2017	Pino gassi		Der Nagelkiller	
1047	20. März 2017	Pino gassi, Harley fahren - Tatzelwurm, MUCCT5P-V900		Der Nagelkiller	
1048	21. März 2017	MUCCT5T-V900, MUCCT4P-V900		Der Nagelkiller	
1049	22. März 2017	Cycle Factory - Jekill and Hyde bestellt, MUCCT1P-V900		Der Nagelkiller	
1050	23. März 2017	Harley Arbeit gefahren, MUCCT3P-V900, Pino einschläfern		Der Nagelkiller	
1051	24. März 2017			Der Nagelkiller	
1052	25. März 2017	Harley fahren		Der Nagelkiller	
1053	26. März 2017	Harley fahren, BOB fahren Bayrischzell		Leutwyler	
1054	27. März 2017	Harley fahren		Leutwyler	
1055	28. März 2017	Harley arbeit fahren, ACS workshop		Leutwyler	
1056	29. März 2017	Harley arbeit fahren, ACS workshop		Leutwyler	
1057	30. März 2017	Harley arbeit fahren, ACS workshop		Leutwyler	
1058	31. März 2017	Harley fahren		Leutwyler	
1059	1. April 2017	Harley fahren, Sylvenstein, Bad Kohlgrub		Psychose	
1060	2. April 2017	Harley fahren		Psychose	
1061	3. April 2017	MUCCT6P-V900		Psychose	
1062	4. April 2017	Manu telefoniert, Stop JobOSR Development		Die Brandmoerder	
1063	5. April 2017	Dr. Dörr, Angie Bernried		Die Brandmoerder	
1064	6. April 2017	Semmeln holen		Die Brandmoerder	
1065	7. April 2017			Die Brandmoerder	
1066	8. April 2017	Harley fahren Tatzelwurm	MTB Schliersee	Die Brandmoerder	
1067	9. April 2017	Flur wischen, Harley fahren Kiefersfelden, Kufstein	MTB Schliersee	Die Brandmoerder	
1068	10. April 2017	Halrey fahren, Eybel Pralinen, Verso Sommerreifen	MTB Hausham	Die Brandmoerder	
1069	11. April 2017	Harley Inspektion	MTB Schliersee	Die Brandmoerder	
1070	12. April 2017	Harley Inspektion holen	MTB Schliersee - Berg	Die Brandmoerder	
1071	13. April 2017	Dauerauftrag Harley 100 Euro pro Monat an Sabine, Lammfleisch		Die Brandmoerder	
1072	14. April 2017	Harley fahren, Reit im Winkel, Ruhpolding		Die Brandmoerder	
1073	15. April 2017	Harley fahren, Herrmannsdorfer		Die Brandmoerder	
1074	16. April 2017			Die Brandmoerder	
1075	17. April 2017	Gulasch gekocht	MTB Miesbach	Angst	
1076	18. April 2017	Verso Werkstatt wg Fehlermeldung, Pino Steuer abgemeldet, DSL Anchluss 1und1		Der Fledermausmann	
1077	19. April 2017	Dinzler		Der Fledermausmann	
1078	20. April 2017	Harley Jekyll and Hyde Auspuff montiert, Pizza backen		Der Fledermausmann	
1079	21. April 2017	Harley fahren		Der Fledermausmann	
1080	22. April 2017	Harley fahren, Lammbraten		Der Fledermausmann	
2080	19. März 2020	FXDL fahren			
1081	23. April 2017	BOB fahren Bayrischzell		Der Fledermausmann	
1082	24. April 2017	Harley fahren		Der Fledermausmann	
1083	25. April 2017	DR side installation		Der Fledermausmann	
1084	26. April 2017				
1085	27. April 2017	API Jobs	Hallenbad Erding	Der Fledermausmann	
1086	28. April 2017	Holz liefern		Der Fledermausmann	
1087	29. April 2017	Harley fahren	 Holz einrraeumen		Der Fledermausmann
1088	30. April 2017	Harley fahren		Der Fledermausmann	
1089	1. Mai 2017	Harley fahren	MTB fahren	Der Fledermausmann	
1090	2. Mai 2017	LED Scheinwerfer Harley bestellt	MTB fahren	Der Fledermausmann	
1091	3. Mai 2017	Tina Sex Hotel		Der Fledermausmann	
1092	4. Mai 2017	24h Blutdruck, Manu telefoniert		Der Fledermausmann	
1093	5. Mai 2017	Unterhaching Sex, einkaufen Louis , Lederjacke, Lederhose		Der Fledermausmann	
1094	6. Mai 2017	Harley fahren		Der Fledermausmann	
1095	7. Mai 2017	Harley LED Scheinwerfer montiert, Käsekuchen, Flur putzen		Der Fledermausmann	
1096	8. Mai 2017			Der Fledermausmann	
1097	9. Mai 2017	Maria SMS		Der Fledermausmann	
1098	10. Mai 2017	Harley fahren		Der Fledermausmann	
1099	11. Mai 2017	Harley arbeit fahren, Fonic Karte aufgeladen, Maria SMS	 Kreisverlehr Unterlaus angefahren		
1100	12. Mai 2017	Augenarzt Dr. Kau, Maria SMS			
1101	13. Mai 2017	Harley fahren		Der Fledermausmann	
1102	14. Mai 2017	Kuchen backen, Mama telefoniert		Der Fledermausmann	
1103	15. Mai 2017	Toyota RAV4 gekauft, Maria SMS wg treffen		Der Fledermausmann	
1104	16. Mai 2017	Harley arbeit fahren, Maria Café Münchener Freiheit getroffen		Der Fledermausmann	
1105	17. Mai 2017	Harley arbeit fahren, Maria SMS, BMC Dominic essen		Der Fledermausmann	
1106	18. Mai 2017	Harley fahren		Der Fledermausmann	
1107	19. Mai 2017	Toyota RAV4 gekauft, Maria SMS		Der Fledermausmann	
1108	20. Mai 2017	Harley fahren			
1109	21. Mai 2017	Harley fahren, kuchen backen		Der Fledermausmann	
1110	22. Mai 2017	Harley fahren, beinahe Vorfahrt genommen		Der Fledermausmann	
1111	23. Mai 2017	Harley arbeit fahren	MTB fahren, Uebungen		
1112	24. Mai 2017	Angi Bernried, Eigentümer Versammlung, neben Manu gesessen 	Uebungen	Der Fledermausmann	
1113	25. Mai 2017	Harley waschen, Auto saugen und ausräumen, Apfelkuchen backen	MTB fahren	Der Fledermausmann	
1114	26. Mai 2017	RAV4 uebergeben, Lieferung Kevlar Hose, Harley fahren		Der Fledermausmann	
1115	27. Mai 2017	Harley fahren	MTB fahren	Der Fledermausmann	
1116	28. Mai 2017	Harley fahren	MTB fahren	Der Fledermausmann	
1117	29. Mai 2017	Harley fahren, Hermannsdorfer, Protektoren geliefert		Der Fledermausmann	
1118	30. Mai 2017	RAV4 erste fahrt ins Büro / Erding	schwimmen Freibad	Der Fledermausmann	
1119	31. Mai 2017	Kevlar Hoodie geliefert	schwimmen Freibad	Der Fledermausmann	
1120	1. Juni 2017	Harley arbeit fahren, Maria SMS			
1121	2. Juni 2017	RAV4 uebergeben		Post Mortem - Tränen aus Blut	
1122	3. Juni 2017	Harley fahren Salzburg, Berchtesgaden, Koenigssee		Post Mortem - Tränen aus Blut	
1123	4. Juni 2017	Kuchen gebacken		Post Mortem - Tränen aus Blut	
1124	5. Juni 2017	Harley fahren		Post Mortem - Tränen aus Blut	
1125	6. Juni 2017	Physio MT, Maria SMS		Post Mortem - Tränen aus Blut	
1126	7. Juni 2017	BMC	schwimmen Freibad	Post Mortem - Tränen aus Blut	
1127	8. Juni 2017	Harley arbeit fahren, Maria SMS		Post Mortem - Tränen aus Blut	
1128	9. Juni 2017	Physio MT		Post Mortem - Tränen aus Blut	
1129	10. Juni 2017	Kuchen backen, Pizza backen	MTB	Post Mortem - Tränen aus Blut	
1130	11. Juni 2017	Harley fahren	MTB - Neuhaus Bhf	Post Mortem - Tränen aus Blut	
1131	12. Juni 2017		MTB fahren	Post Mortem - Tränen aus Blut	
1132	13. Juni 2017	Harley fahren, Physio MT		Post Mortem - Tränen aus Blut	
1133	14. Juni 2017	Harley arbeit fahren, Mama telefoniert, Maria SMS, Kerstin telefoniert, Chrissy SMS	schwimmen Freibad	Post Mortem - Tränen aus Blut	
1134	15. Juni 2017	Harley fahren	MTB Schliersee	Post Mortem - Tränen aus Blut	
1135	16. Juni 2017	Harley fahren, Physio MT		Post Mortem - Tränen aus Blut	
1136	17. Juni 2017	Harley fahren Mittenwald		Post Mortem - Tränen aus Blut	
1137	18. Juni 2017	Harley fahren		Post Mortem - Tränen aus Blut	
1138	19. Juni 2017	Harley fahren, Rosenheim Zoll Auto Steuer frei, Maria SMS wg treffen, Physio MT		Post Mortem - Tränen aus Blut	
1139	20. Juni 2017	Harley arbeit fahren	schwimmen Freibad	Post Mortem - Tränen aus Blut	
1140	21. Juni 2017	Maria SMS	schwimmen Freibad	Post Mortem - Tränen aus Blut	
1141	22. Juni 2017	Harley arbeit fahren, Burger King ED	schwimmen Freibad	Post Mortem - Zeit der Asche	
1142	23. Juni 2017	Manu total sexy, im T-Shirt zeichnet sich alles ab, Harley fahren, Physio MT		Post Mortem - Zeit der Asche	
1143	24. Juni 2017	Harley fahren	MTB Schliersee	Post Mortem - Zeit der Asche	
1144	25. Juni 2017	Hefegebaeck		Post Mortem - Zeit der Asche	
1145	26. Juni 2017	Kerstin , Mama telefoniert			
1146	27. Juni 2017	WCM workshop	schwimmen Kronthaler	Post Mortem - Zeit der Asche	
1147	28. Juni 2017	Physio		Post Mortem - Zeit der Asche	
1148	30. Juni 2017	Physio MT		Post Mortem - Zeit der Asche	
1149	1. Juli 2017	Wurstgulasch gekocht, Harley fahren			
1150	2. Juli 2017	Flur putzen	MTB Schliersee	Post Mortem - Zeit der Asche	
1151	3. Juli 2017			Post Mortem - Zeit der Asche	
1152	4. Juli 2017	Harley arbeit fahren	schwimmen Freibad		
1153	5. Juli 2017	Lukas Geburtstag		Post Mortem - Zeit der Asche	
1154	6. Juli 2017	Harley arbeit fahren, Maria SMS wg Kronthaler treffen	schwimmen Kronthaler	Post Mortem - Zeit der Asche	Warum versuche ich es immer wieder ….
1155	7. Juli 2017	Manu gewesen, schöne kleine Brüste im Shirt	 Physio		Post Mortem - Zeit der Asche
1156	8. Juli 2017	Harley fahren, Maria SMS treffen abgesagt	MTB, schwimmen Schliersee	Post Mortem - Zeit der Asche	Jetzt werde ich das unterlassen die MV nochmal anzuschreiben
1157	9. Juli 2017	Kerstin telefoniert	MTB, schwimmen Schliersee	Post Mortem - Zeit der Asche	
1158	10. Juli 2017	Kerstin,  Schliersbergalm, essen Bräuwirth		Post Mortem - Zeit der Asche	
1159	11. Juli 2017	essen Hopf  Weissbräustüberl	schwimmen Kronthaler	Post Mortem - Zeit der Asche	
1160	12. Juli 2017	Kerstin telefoniert	schwimmen Kronthaler	Post Mortem - Zeit der Asche	
1161	13. Juli 2017	Harley fahren	schwimmen Kronthaler	Post Mortem - Zeit der Asche	
1162	14. Juli 2017	Physio		Post Mortem - Zeit der Asche	
1163	15. Juli 2017	Harley fahren, Hopfbräu essen	MTB, schwimmen Schliersee	Post Mortem - Zeit der Asche	
1164	16. Juli 2017	Harley fahren	MTB, schwimmen Schliersee	Post Mortem - Zeit der Asche	
1165	17. Juli 2017	Harley fahren		Toedliche Ferien	
1166	18. Juli 2017	Harley arbeit fahren	schwimmen Kronthaler	Toedliche Ferien	
1167	19. Juli 2017	Harley arbeit fahren, BMC WCM workshop	schwimmen Kronthaler	Toedliche Ferien	
1168	20. Juli 2017	Harley arbeit fahren, regen nach Hause gefahren, EK SMS	schwimmen Kronthaler	Toedliche Ferien	
1169	21. Juli 2017	Lukas Schulabschluss, Harley fahren, Physio		Toedliche Ferien	
1170	22. Juli 2017	Harley fahren	MTB, schwimmen Schliersee	Toedliche Ferien	
1171	23. Juli 2017	Harley putzen, Paletten aus Anhänger	MTB, schwimmen Schliersee	Toedliche Ferien	
1172	24. Juli 2017	BG Geburtstags SMS		Toedliche Ferien	
1173	25. Juli 2017	Termin Harley Inspektion		Toedliche Ferien	
1174	26. Juli 2017	Mercure Hotel Elena		Toedliche Ferien	
1175	27. Juli 2017	Neopren Shorty schwimmen	schwimmen Kronthaler		
1176	28. Juli 2017	Harley fahren		Toedliche Ferien	
1177	29. Juli 2017	Harley fahren Wolfgang See, Hopf Bräustüberl essen	MTB, schwimmen Schliersee	Toedliche Ferien	
1178	30. Juli 2017	Harley fahren, Flur putzen	MTB Miesbach	Toedliche Ferien	
1179	31. Juli 2017	Maria SMS, Sparkasse Darlehen		Toedliche Ferien	
1180	1. August 2017	Maria Kronthaler Weiher, Maria Sex	schwimmen Kronthaler	Toedliche Ferien	
1181	2. August 2017	Harley fahen - House of flames		Post Mortem - Tage des Zorns	
1182	3. August 2017	Harley arbeit fahren	schwimmen Kronthaler	Post Mortem - Tage des Zorns	
1183	4. August 2017			Post Mortem - Tage des Zorns	
1184	5. August 2017	Paletten sägen, Harley fahren	MTB, schwimmen Schliersee	Post Mortem - Tage des Zorns	
1185	6. August 2017			Post Mortem - Tage des Zorns	
1186	7. August 2017	Physio		Post Mortem - Tage des Zorns	
1187	8. August 2017	Harley arbeit fahren	schwimmen Kronthaler	Post Mortem - Tage des Zorns	
1188	9. August 2017	MV Sex, House of Flames	schwimmen Kronthaler	Post Mortem - Tage des Zorns	
1189	10. August 2017	MV Sex	schwimmen Kronthaler	Post Mortem - Tage des Zorns	
1190	11. August 2017	Physio		Post Mortem - Tage des Zorns	
1191	12. August 2017	Paletten sägen, Therme Bad Aibling		Post Mortem - Tage des Zorns	
1192	13. August 2017	Harley fahren		Post Mortem - Tage des Zorns	
1193	14. August 2017	Physio		Post Mortem - Tage des Zorns	
1194	15. August 2017	Harley fahren	MTB fahren	Post Mortem - Tage des Zorns	
1195	16. August 2017	Mia Sex Mercure Hotel, Mama telefoniert	schwimmen Kronthaler	Post Mortem - Tage des Zorns	Panik beim schwimmen vor der Insel
1196	17. August 2017	MV Sex	schwimmen Kronthaler	Post Mortem - Tage des Zorns	
1197	18. August 2017	MV Telegram		Post Mortem - Tage des Zorns	
1198	19. August 2017	Paletten sägen		Post Mortem - Tage des Zorns	
1199	20. August 2017	Harley fahren, Kino Griesnockerlaffaere	MTB Neuhaus	Quercher und das Seelenrasen 	
1200	21. August 2017	Paletten sägen, Harley fahren	MTB Wörnsmühler Berg	Quercher und das Seelenrasen 	
1201	22. August 2017	Paletten sägen, Wendelstein Zahnradbahn 	MTB Schliersee	Quercher und das Seelenrasen 	
1202	23. August 2017	Paletten sägen, Harley fahren	MTB Hausham	Quercher und das Seelenrasen 	
1203	24. August 2017	MTB gestürzt	MTB Schliersee, schwimmen	Quercher und das Seelenrasen 	
1204	25. August 2017				
1205	26. August 2017	Gambach fahren			
1206	27. August 2017	Gambach			
1207	28. August 2017	Gambach nach Hausham, Harley fahren		Quercher und das Seelenrasen 	
1208	29. August 2017	Harley fahren zum Wilder Kaiser Tirol		Quercher und das Seelenrasen 	
1209	30. August 2017	Harley fahren Sylvenstein		Quercher und das Seelenrasen 	
1210	31. August 2017	Harley fahren Sudelfeld, KH Agatharied Thorax Röntgen, Helm geliefert		Quercher und das Seelenrasen 	
1211	1. September 2017			Quercher und das Seelenrasen 	
1212	2. September 2017	Rosenheim einkaufen		Quercher und das Seelenrasen 	
1213	3. September 2017			Quercher und das Seelenrasen 	
1214	4. September 2017	Harley fahren		Rissiges Eis	
1215	5. September 2017	Paletten sägen		Rissiges Eis	
1216	6. September 2017	Paletten sägen, Harley fahren		Rissiges Eis	
1217	7. September 2017	Harley fahren Dorfen		Rissiges Eis	
1218	8. September 2017	Harley fahren vormitttag und abend		Rissiges Eis	
1219	9. September 2017	Paletten sägen, Therme Bad Aibling		Rissiges Eis	
1220	10. September 2017	Schnitzel braten		Rissiges Eis	
1221	11. September 2017			Rissiges Eis	
1222	12. September 2017			Rissiges Eis	
1223	13. September 2017	Anhänger Paletten, IPAD 4 gebraucht, 		Rissiges Eis	
1224	14. September 2017	Tiziana Jabber		Rissiges Eis	
1225	15. September 2017			Rissiges Eis	
1226	16. September 2017	House of Flames 2018 Modelle, 2 Mädels Stundenhotel, Therme Bad Aibling, Maxlrainer Bräustüberl			
1227	17. September 2017	TS, Tortellini gekocht		Rissiges Eis	
1228	18. September 2017			Rissiges Eis	
1229	19. September 2017				
1230	20. September 2017	Angi Bernried		Rissiges Eis	
1231	21. September 2017	Harley Arbeit gefahren, Geek game		Rissiges Eis	
1232	22. September 2017	Harley fahren		Rissiges Eis	
1233	23. September 2017	Harley fahren, Braeustueberl Maxlrain Biergarten essen	MTB Schliersee	Rissiges Eis	
1234	24. September 2017	Pizza backen, Flur putzen	MTB Schliersee	Rissiges Eis	
1235	25. September 2017	Harley fahren		Die letzte Runde	
1236	26. September 2017	Harley arbeit fahren		Die letzte Runde	
1237	27. September 2017	Harley arbeit fahren, meeting Tiziana		Die letzte Runde	
1238	28. September 2017	Harley arbeit fahren		Die letzte Runde	
1239	29. September 2017	Harley fahren		Die letzte Runde	
1240	30. September 2017	harley fahren		Die letzte Runde	
1241	1. Oktober 2017	Käsekuchen backen, Wirsing kochen		Die letzte Runde	
1242	2. Oktober 2017	Paletten sägen, Anhänger	MTB Schliersee	Die letzte Runde	
1243	3. Oktober 2017			Die letzte Runde	
1244	4. Oktober 2017		Trampolin	Die letzte Runde	
1245	5. Oktober 2017	Anhänger TÜV	Trampolin	Die letzte Runde	
1246	6. Oktober 2017		Trampolin	Die letzte Runde	
1247	7. Oktober 2017	Kochen Kartoffelpuffer	Trampolin	Die letzte Runde	
1248	8. Oktober 2017		Trampolin	Die letzte Runde	
1249	9. Oktober 2017			Die letzte Runde	
1250	10. Oktober 2017	BMC essen 	Trampolin	Die letzte Runde	
1251	11. Oktober 2017			Die letzte Runde	
1252	12. Oktober 2017	Harley Arbeit fahren		Die letzte Runde	
1253	13. Oktober 2017	Harley fahren		Die letzte Runde	
1254	14. Oktober 2017	Harley fahren Sylvenstein, Kufstein, Thiersee	MTB Schliersee	Die letzte Runde	
1255	15. Oktober 2017	Harley fahren	MTB Schliersee	Die letzte Runde	
1256	16. Oktober 2017	Harley fahren		Die letzte Runde	
1257	17. Oktober 2017	Harley Arbeit fahren		Die letzte Runde	
1258	18. Oktober 2017	Harley Arbeit fahren	Trampolin	Die letzte Runde	
1259	19. Oktober 2017	Angi Bernried		Die letzte Runde	
1260	20. Oktober 2017			Die letzte Runde	
1261	21. Oktober 2017	McTrek	Trampolin	Quercher und der Blutfall	
1262	22. Oktober 2017		Trampolin	Quercher und der Blutfall	
1263	23. Oktober 2017	Winterreifen	Trampolin	Quercher und der Blutfall	
1264	24. Oktober 2017	Zahnzarzt Huber, Dr. Bachmaier		Quercher und der Blutfall	Maria SMS, eigentlich ist sie nervig, keine Ahnung warum ich geschrieben habe
1265	25. Oktober 2017		Trampolin	Quercher und der Blutfall	stehe mal zur Entscheidung und schreibe nicht mehr
1266	26. Oktober 2017	Harley arbeit fahren		Quercher und der Blutfall	
1267	27. Oktober 2017		Trampolin	Quercher und der Blutfall	
1268	28. Oktober 2017	Harley fahren		Quercher und der Blutfall	
1269	29. Oktober 2017			Quercher und der Blutfall	
1270	30. Oktober 2017	Holz sägen	Trampolin	Quercher und der Blutfall	
1271	31. Oktober 2017	Harley fahren		Quercher und der Blutfall	
1272	1. November 2017		Trampolin	Quercher und der Blutfall	
1273	2. November 2017	Holz sägen, Harley fahren		Quercher und der Blutfall	
1274	3. November 2017	Holz sägen		Totenfang - David Hunter	
1275	4. November 2017	Harley fahren		Totenfang - David Hunter	
1276	5. November 2017	Dinzler		Totenfang - David Hunter	
1277	6. November 2017		Trampolin	Totenfang - David Hunter	
1278	7. November 2017			Totenfang - David Hunter	
1279	8. November 2017			Totenfang - David Hunter	
1280	9. November 2017			Totenfang - David Hunter	
1281	10. November 2017			Totenfang - David Hunter	
1282	11. November 2017	Therme Bad Aibling		Totenfang - David Hunter	
1283	12. November 2017	Krapfen backen		Totenfang - David Hunter	
1284	13. November 2017			Totenfang - David Hunter	
1285	14. November 2017			Totenfang - David Hunter	
1286	15. November 2017			Mooresschwaerze	
1287	16. November 2017			Mooresschwaerze	
1288	17. November 2017	Harley Ölwechsel mit Filter		Mooresschwaerze	
1289	18. November 2017	Holz sägen		Mooresschwaerze	
1290	19. November 2017	Rosenkohl kochen, Harley Batterie ausbauen, Flur putzen		Mooresschwaerze	
1291	20. November 2017	Lindner Schliersee Gutschein		Mooresschwaerze	
1292	21. November 2017			Mooresschwaerze	
1293	22. November 2017	Dörr 24h Blutdruck, REST API		Mooresschwaerze	
1294	23. November 2017	Termin Dörr		Mooresschwaerze	
1295	24. November 2017	Sabine Geburtstag, Mama telefoniert		Mooresschwaerze	
1296	25. November 2017	Holz sägen, Wirsing kochen, Kerstin telefoniert		Mooresschwaerze	
1297	26. November 2017			Mooresschwaerze	
1298	27. November 2017			Mooresschwaerze	
1299	28. November 2017			Mooresschwaerze	
1300	29. November 2017	zu hause arbeiten		Mooresschwaerze	
1301	30. November 2017	zu hause arbeiten		Mooresschwaerze	
1302	1. Dezember 2017			Engelsschlaf	
1303	2. Dezember 2017	Lamm kochen		Engelsschlaf	
1304	3. Dezember 2017			Engelsschlaf	
1305	4. Dezember 2017			Engelsschlaf	
1306	5. Dezember 2017			Engelsschlaf	
1307	6. Dezember 2017			Engelsschlaf	
1308	7. Dezember 2017	github		Engelsschlaf	
1309	8. Dezember 2017	github		Engelsschlaf	
1310	9. Dezember 2017	Bolognese kochen		Engelsschlaf	
1311	10. Dezember 2017	Bad putzen, Holz Balkon		Engelsschlaf	
1312	11. Dezember 2017			Engelsschlaf	
1313	12. Dezember 2017	Leih Notebook		Engelsschlaf	
1314	13. Dezember 2017	BMC Pizza essen,  Termin taetowieren		Engelsschlaf	
1315	14. Dezember 2017	Notebook re-installed		Nachtspiel	
1316	15. Dezember 2017	Totenkopf taetowieren			
1317	16. Dezember 2017	Meeritsch kochen		Nachtspiel	
1318	17. Dezember 2017	Flur putzen		Nachtspiel	
1319	18. Dezember 2017			Nachtspiel	
1320	19. Dezember 2017	neuen Kindle		Nachtspiel	
1321	20. Dezember 2017			Nachtspiel	
1322	21. Dezember 2017	Angi Bernried		Nachtspiel	
1323	22. Dezember 2017			Nachtspiel	
1324	23. Dezember 2017	Wirsing kochen		Nachtspiel	
1325	24. Dezember 2017	Mama und Kerstin telefoniert		Nachtspiel	
1326	25. Dezember 2017			Nachtspiel	
1327	26. Dezember 2017			Nachtspiel	
1328	27. Dezember 2017	Gambach gefahren		Nachtspiel	
1329	28. Dezember 2017	MTZ			
1330	29. Dezember 2017	Giesen			
1331	30. Dezember 2017	Hausham gefahren		Nachtspiel	
1332	31. Dezember 2017			Nachtspiel	
1333	1. Januar 2018			Berechnung	
1334	2. Januar 2018	essen Kantine, Tiziana Training		Berechnung	
1335	3. Januar 2018	essen kantine, Tiziana Training		Berechnung	
1336	4. Januar 2018	essen Kantine, Tiziana Training		Berechnung	
1337	5. Januar 2018	Tiziana Training		Berechnung	
1338	6. Januar 2018	Wirsing kochen		Berechnung	
1339	7. Januar 2018	Rosenkohl kochen		Berechnung	
1340	8. Januar 2018	Tiziana Training		Berechnung	
1341	9. Januar 2018	essen Kantine, Tiziana Training		Berechnung	
1342	10. Januar 2018	ACS Tarining, essen Kantine, Tiziana Training			
1343	11. Januar 2018	ACS Training, essen Kantine			
1344	12. Januar 2018	Tätowieren "No Rules"			
1345	13. Januar 2018	Bohnesuppe kochen		Berechnung	
1346	14. Januar 2018	Holz oberen Balkon		Berechnung	
1347	15. Januar 2018	Herz Ultraschall, MV SMS		Berechnung	
1348	16. Januar 2018	MV SMS	Trampolin	Berechnung	
1349	17. Januar 2018	MV SMS	Trampolin	Berechnung	
1350	18. Januar 2018	Spagetti Carbonara, Handkreissaege	Trampolin	Berechnung	
1351	19. Januar 2018		Trampolin	Berechnung	
1352	20. Januar 2018	Lamm braten		Mordswald	
1353	21. Januar 2018			Mordswald	
1354	21. Januar 1900	MV Telegram	Trampolin	Mordswald	
1355	23. Januar 2018	MV Sex		Mordswald	
1356	24. Januar 2018	MV Sex		Mordswald	
1357	25. Januar 2018		Trampolin	Mordswald	
1358	26. Januar 2018			Mordswald	
1359	27. Januar 2018	Erbsensuppe, Krapfen	Trampolin	Mordswald	
1360	28. Januar 2018	MV Telegram, Change Management Training	Trampolin, boxsack	Mordswald	
1361	29. Januar 2018		Trampolin	Mordswald	
1362	30. Januar 2018	TS SMS		Mordswald	
1363	31. Januar 2018	Reiesepass beantragt, Tättowierer "No Limits"		Mordswald	
1364	1. Februar 2018	Kreditkartenantrag		Mordswald	
1365	2. Februar 2018			Mordswald	`
1366	3. Februar 2018			Mordswald	
1367	4. Februar 2018			Station TS12	
1368	5. Februar 2018	SPK Depot eroeffnet, Reisepass geholt		Station TS12	
1369	6. Februar 2018	MV Sex		Station TS12	
1370	7. Februar 2018	MV Sex, Thai essen, EMAPRD V918		Station TS12	
1371	8. Februar 2018	ESTA Antrag		Station TS12	
1372	9. Februar 2018			Station TS12	
1373	10. Februar 2018	McTrek		Feingeist	
1374	11. Februar 2018			Feingeist	
1375	12. Februar 2018	Belastungs EKG, Tättowierer  Linien Tintenfisch		Feingeist	
1376	13. Februar 2018			Feingeist	
1377	14. Februar 2018			Feingeist	
1378	15. Februar 2018	AH Bernried		Feingeist	
1379	16. Februar 2018	IMOT München		Feingeist	
1380	17. Februar 2018			Feingeist	
1381	18. Februar 2018	Mama telefoniert, Dinzler kein guter Kaffee		Feingeist	
1382	19. Februar 2018	MV Sex, Gambach gefahren			
1383	20. Februar 2018	Birgit mitgenommen nach Butzbach, Zug nach Fankfurt gefahren, Flug Austin			
1384	21. Februar 2018	BMC Board meeting, Essen, Klapperschlange probiert, Tiziana anbandeln versucht			Tiziana klar Aussage das sie nicht moechte
1385	22. Februar 2018	BMC Board meeting			
1386	23. Februar 2018	Flug Frankfurt			
1387	24. Februar 2018	Birgit Kaffee trinken, Gambach nach Hausham gefahren			
1388	25. Februar 2018			Feingeist	
1389	26. Februar 2018	RAV abgeholt, Tättowierer Tintenfisch schattiert			
1390	27. Februar 2018	House of Flames wg Road King		Feingeist	
1391	28. Februar 2018	Control-M workshop Amadeus			
1392	1. März 2018	Control-M workshop BMW Welt München		Feingeist	
1393	2. März 2018	Thunderbike telefoniert		Feingeist	
1394	3. März 2018			Feingeist	
1395	4. März 2018			Drogenparty	
1396	5. März 2018			Drogenparty	
1397	6. März 2018	MV Sex		Drogenparty	
1398	7. März 2018	email HD Augsburg wegen Inzahlungnahme Low Rider, MV Nacht im Mercure Hotel MUC Ost			
1399	8. März 2018	MV Nacht im Mercure Hotel MUC Ost		Drogenparty	
1400	9. März 2018	FXDL Batterie eingebaut		Drogenparty	
1401	10. März 2018	FXDL fahren, HD FLHC Heritage Softail Classic 107 		Drogenparty	
1402	11. März 2018	FXDL fahren, Flur putzen		Drogenparty	
1403	12. März 2018	Überweisung Harley Davidson Softaill Heritage		Drogenparty	
1404	13. März 2018			Drogenparty	
1405	14. März 2018			Drogenparty	
1406	15. März 2018	MV Sex		Drogenparty	
1407	16. März 2018	Tättowierer Hintergrund Seedrache und Tintenfisch schattiert			
1408	17. März 2018	Pizza backen, SMS von Ingrid, ist in Bad Hofgastein		Drogenparty	
1409	18. März 2018	Ingrid SMS geantwortet		Drogenparty	
1410	19. März 2018		Trampolin	Drogenparty	
1411	20. März 2018		Trampolin	Drogenparty	
1412	21. März 2018	Zahnarzt Zahnreinigung, MV Sex, wahnsinnig geil		Drogenparty	
1413	22. März 2018	MV Sex, wahnsinnig geil, Manu mündl. Prüfung bestanden, umarmt		Drogenparty	
1414	23. März 2018			Drogenparty	
1415	24. März 2018	Erbsensuppe, Therme Bad Aibling, aber voll	Trampolin	Drogenparty	
1416	25. März 2018	Blumenkohl mit Lammkotlett	MTB, Trampolin	Drogenparty	
1417	26. März 2018	C&A einkaufen	Trampolin	Drogenparty	
1418	27. März 2018	BOB fahren Bayrischzell	Trampolin	Tote Unschuld	
1419	28. März 2018	RAV 30000km Inspektion	Trampolin	Tote Unschuld	
1420	29. März 2018		Trampolin	Tote Unschuld	
1421	30. März 2018	kochen Lachs, Kaesekuchen backen, Termin Taettowierer	Trampolin	Tote Unschuld	
1422	31. März 2018	kochen Lachs	Trampolin	Tote Unschuld	
1423	1. April 2018	kochen Lamm, Mama und Kerstin telefoniert	Trampolin	Blutmosaik	
1424	2. April 2018	FXDL fahren	Trampolin	Blutmosaik	
1425	3. April 2018	MV Sex, Sparkasse Kredit	Trampolin	Blutmosaik	
1426	4. April 2018	MV Kaffee bei McDonald	Trampolin	Blutmosaik	
1427	5. April 2018	MV Sex	Trampolin		
1428	6. April 2018	Kreditantrag, Brennholz geliefert, Tättowieren Seepferd, Anker, Seestern		Blutmosaik	
1429	7. April 2018	Holz einraeumen, Harley fahren		Blutmosaik	rund um Chiemsee, Kufstein
1430	8. April 2018	FXDL fahren, Lamm braten Bohnensalat		Blutmosaik	Gelting Harley Eck, Starnbergsee See
1431	9. April 2018	FXDL fahren	Trampolin	Blutmosaik	Feldkirchen, Glonn, Bruckmuehl, Leitzachtal
1432	10. April 2018	FXDL Arbeit gefahren, Kredit ausgezahlt	Trampolin	Blutmosaik	
1433	11. April 2018		Trampolin	Blutmosaik	
1434	12. April 2018	VS eVB Nummer, Sabine 16000,00 Euro	 KFZ-Zulassung Termin		Blutmosaik
1435	13. April 2018	Dauerauftrag Sabine kuendigen, Depot Fonds Anteil kaufen			
1436	14. April 2018	Augsburg fahren FLHC Brief holen, Auflauf gekocht	Trampolin	Die Todestherapie	
1437	15. April 2018	FXDL fahren	Trampolin	Die Todestherapie	Irschenberg, Brannenburg, Kufstein, Thiersee, Bayrischzell
1438	16. April 2018	FLHC zugelassen, Sabine 50,00 Tättowierung	Trampolin	Die Todestherapie	
1439	17. April 2018	MV Stundenhotel		Die Todestherapie	
1440	18. April 2018	MV Sex	Trampolin	Die Todestherapie	
1441	19. April 2018	MV Sex, FLHC in Augsburg geholt, Brief Toyota Bank	Trampolin	Die Todestherapie	
1442	20. April 2018	FXDL abholen wg Inspektion,  FLHC fahren, Tättowieren Seepferd, Anker schattieren			
1443	21. April 2018	FLHC, kochen Schweinelende, Spargel		Die Todestherapie	Kufstein, Walchsee, Wilder Kaiser, Thiersee, Landl
1444	22. April 2018	FLHC fahren	Trampolin	Die Todestherapie	Sylvensteinstausee, Walchensee
1445	23. April 2018		Trampolin	Die Todestherapie	
1446	24. April 2018	BOB , S-Bahn fahren arbeit fahren, MV Sex-quicky		Die Todestherapie	
1447	25. April 2018	FLHC arbeit fahren, Doerr Rezept, Eigentümer Versammlung		Die Todestherapie	
1448	26. April 2018		Trampolin	Die Todestherapie	
1449	27. April 2018	FXDL in Geretsrief geholt		Die Todestherapie	
1450	28. April 2018	FLHC fahren		Ihr kalter Atem	Nussdorf, Erl, Oberaudorf
1451	29. April 2018	FXDL fahren		Ihr kalter Atem	Nussdorf, Erl, Sudelfeld
1452	30. April 2018	Sehtest, KofferAnhänger gekauft, Wührer Führerscheinantrag	Trampolin	Ihr kalter Atem	
1453	1. Mai 2018	FLHC fahren	Trampolin	Ihr kalter Atem	Brannenburg
1454	2. Mai 2018	FLHC Arbeit fahren, Zahnarzt Huber			
1455	3. Mai 2018			Ihr kalter Atem	
1456	4. Mai 2018	Gemeinde Führerscheinantrag, Tättowierer Seestern schattieren			
1457	5. Mai 2018	FLHC fahren		Ihr kalter Atem	Chiemsee, Siegsdorf, Schneizlreuth, Lofer, Koessen, Nussdorf
1458	6. Mai 2018	FXDL fahren, Flur putzen		Ihr kalter Atem	Hoehenkirchen, Ebersberg
1459	7. Mai 2018	Sattlerei Sommerer, Führerschein Papiere Fahrschule Wührer		Ihr kalter Atem	
1460	8. Mai 2018	FLHC arbeit fahren, Buero Umzug, Cycle Factory wegen Fussraten		Ihr kalter Atem	
1461	9. Mai 2018			Ihr kalter Atem	
1462	10. Mai 2018	FXDL fahren			Nussdorf,Erl, Ebbs, Kufstein, Landl
1463	11. Mai 2018	FXDL Cycle Factory wegen Fussraten	Trampolin	Ihr kalter Atem	
1464	12. Mai 2018	Frikadellen, FXDL fahren, Steuererklärung abgegeben		Ihr kalter Atem	Bad Toelz, Holzkirchen, Sauerlach, Feldkirchen, Leitzachtal
1465	13. Mai 2018	FLHC fahren, Mama telefoniert, Muttertag	Trampolin	Ihr kalter Atem	Weyern, Feldkirchen, Vagen, Leitzachtal
1466	14. Mai 2018	Sattlerei	Trampolin	Ihr kalter Atem	
1467	15. Mai 2018	MV Sex draussen		Ihr kalter Atem	
1468	16. Mai 2018	MV Stundenhotel		Ihr kalter Atem	
1469	17. Mai 2018	MV Sex	Trampolin	Ihr kalter Atem	
1470	18. Mai 2018		Trampolin	Ihr kalter Atem	
1471	19. Mai 2018	FLHC fahren, Lamm kochen	Trampolin	Ihr kalter Atem	Nussdorf,Erl, Ebbs, Kufstein, Landl
1472	20. Mai 2018	FXDL fahren		Ihr kalter Atem	Irschenberg
1473	21. Mai 2018	FLHC fahren	Trampolin	Ihr kalter Atem	Weyern, Hoehenkirchen, Anzing, Erding, Dorfen, Bad Aibling
1474	22. Mai 2018	Sattlerei Sommerer Heritage Sitze		Kluftinger	
1475	23. Mai 2018	Auffahrrampe geliefert	Trampolin	Kluftinger	
1476	24. Mai 2018	BMC meeting und Italiener Essen, MV Sex		Kluftinger	
1477	25. Mai 2018		Trampolin	Kluftinger	
1478	26. Mai 2018	FXDL fahren, Fisch mit Spargel		Kluftinger	Nussdorf,Erl, Ebbs, Kufstein, Landl, Leitzachtal
1479	27. Mai 2018	FXDL fahren, Lachs mit Spargel	Trampolin	Kluftinger	Irschenberg, Vagen, Aying, Holzkirchen, Bad Toelz
1480	28. Mai 2018	FLHC Sattel fertig, FLHC Inspektion fahren		Kluftinger	HD Geretsried
1481	29. Mai 2018		Trampolin	Kluftinger	
1482	30. Mai 2018	FLHC abholen in Geretsried		Kluftinger	HD Geretsried, Miesbach, Leitzachtal
1483	31. Mai 2018	FXDL fahren, Tomatensosse kochen, FXDL und FLHC waschen		Kluftinger	Irschenberg, Vagen, Feldkirchen, Grossherenberg, Glonn, Ellmosen, Bad Aibling, Leitzachtal
1484	1. Juni 2018	Holz sägen, FLHC fahren		Kluftinger	Irschenberg, Vagen, Feldkirchen, Grossherenberg, Glonn, Antoling, Leitzachtal
1485	3. Juni 2018	FXDL fahren, Fisch braten	Trampolin	Kluftinger	Bad Toelz, Walchensee, Sylvenstein
1486	4. Juni 2018	FXDL fahren		Kluftinger	Irschenberg, Bruckmuehl, Feldkirchen, Glonn, Beyharting, Leitzachtal
1487	5. Juni 2018	FLHC arbeit fahren		Kluftinger	
1488	6. Juni 2018	FLHC arbeit fahren		Kluftinger	
1489	7. Juni 2018	Holz mitnehmen		Kluftinger	
1490	8. Juni 2018		Trampolin	Kluftinger	
1491	9. Juni 2018	FXDL fahren		Kluftinger	Irschenberg, Kolbermoor, Leitzachtal
2081	20. März 2020	FLHTKL fahren			
1492	10. Juni 2018	FLHC fahren		Kluftinger	Weyern, Kreuzstrasse, Aying, Pullach, Hundham, Leitzachtal
1493	11. Juni 2018	FLHC fahren		Der Ruf des Kuckucks	Hundham, Brannenburg, Sudelfeld
1494	12. Juni 2018		schwimmen Kronthaler	Der Ruf des Kuckucks	
1495	13. Juni 2018		schwimmen Kronthaler	Der Ruf des Kuckucks	Panik beim schwimmen
1496	15. Juni 2018			Der Ruf des Kuckucks	
1497	16. Juni 2018	Holz sägen, FXDL fahren		Der Ruf des Kuckucks	Tegernsee, Sylvenstein, Bad Toelz, Holzkirchen, Kreuzstrasse, Vagen, Letzachtal
1498	17. Juni 2018	FLHC fahren, Fisch braten		Der Ruf des Kuckucks	Irschenberg, Feldkirchen, Glonn, Grafing, Vagen, Parsberg 
1499	18. Juni 2018		schwimmen Kronthaler	Der Ruf des Kuckucks	
1500	19. Juni 2018	MV Sex draussen	schwimmen Kronthaler	Der Ruf des Kuckucks	
1501	20. Juni 2018	FXDL Cycle Factory wegen Fussrasten und Lenker		Der Ruf des Kuckucks	
1502	21. Juni 2018	Fahrstunde		Der Ruf des Kuckucks	
1503	22. Juni 2018	Geld Anhänger abgehoben, FLHC fahren		Der Ruf des Kuckucks	Weyarn, Feldkirchen, Glonn, Grafing, Au, Leitzachtal
1504	24. Juni 2018	FLHC, Pilze kochen	Trampolin	Der Ruf des Kuckucks	Pang, Prutting, Wasserburg, Steinhöring, Zorneding, Glonn, Feldkirchen, Glonn, Leitzachtal
1505	25. Juni 2018	Fahrstunde		Der Ruf des Kuckucks	
1506	26. Juni 2018	FLHC arbeit fahren, Kerstin telefoniert	Trampolin	Der Ruf des Kuckucks	
1507	27. Juni 2018	Fuehrerscheinpruefung	Trampolin	Der Ruf des Kuckucks	
1508	28. Juni 2018			Der Ruf des Kuckucks	
1509	29. Juni 2018	Führerschein beim TÜV abgeholt, West Coast Choppers Helm geliefert			
1510	30. Juni 2018	FLHC fahren, kochen - Pilze	Trampolin	Wie sehr willst du leben	Irschenberg, Schoenau, Glonn, Feldkirchen, Bruckmuehl, Leitzachtal
1511	1. Juli 2018	FLHC fahren, Fisch braten	Trampolin	Wie sehr willst du leben	Parsberg, Nussdof, Ebbs, Kufstein, Thiersee, Landl
1512	2. Juli 2018	RAV MB-RX 168 Sommerreifen und Inspektion, FLHC putzen	Trampolin	Wie sehr willst du leben	
1513	3. Juli 2018	MV Sex		Wie sehr willst du leben	
1514	4. Juli 2018	Massage Gerät		Wie sehr willst du leben	
1515	5. Juli 2018	FXDL abholen, Lukas Geburtstag, Massage Geraet	Trampolin	Wie sehr willst du leben	Irschenberg, Leitzachtal
1516	6. Juli 2018			Wie sehr willst du leben	
1517	7. Juli 2018	FXDL fahren		Wie sehr willst du leben	Irschenberg, Tuntenhausen, Bad Endorf, Chieming, Reith im Winkl, Koessen, Kufstein, Landl
1518	8. Juli 2018	FXDL fahren, Massage Gerät, Fisch braten		Wie sehr willst du leben	Bad Toelz, Walchensee, Sylvenstein, Bad Toelz, Miesabch, Leitzachtal 
1519	9. Juli 2018	FLHC fahren	Trampolin	Wie sehr willst du leben	Hundham, Bad Feilnbach, Pullach, Beyharting, Glonn, Feldkirchen, Irschenberg, Leitzachtal
1520	10. Juli 2018	MV Sex		Wie sehr willst du leben	
1521	11. Juli 2018	Anhänger bezahlt, FLHC geräusche Cycle Factory, Massage Gerät		Wie sehr willst du leben	
1522	12. Juli 2018	Anhänger zugelassen & abgeholt, FXDL neue Zulassungbescheinigung, Massage Gerät		Wie sehr willst du leben	
1523	13. Juli 2018	FLHC fahren, Cycle Factoy - abroll geräusche, Massage Gerät	Trampolin	Wie sehr willst du leben	
1524	15. Juli 2018	FLHC fahren, FXDL in Anhänger fahren & Rückwärts rausrollen, Massage Gerät		Wie sehr willst du leben	FXDL in Anhänger ging sehr gut
1525	16. Juli 2018	FXDL fahren			Miesbach, Irschenberg, Golling, Vagen, Golling, Leitzachtal
1526	17. Juli 2018	Gref & Voelsing Bestellung, FLHC fahren, Holz sägen		Wie sehr willst du leben	MB, Tölz, Bad Heilnbrunn, Wolfratshausen,  Otterfing, Feldkirchen, Irschenberg, Leitzachtal
1527	18. Juli 2018	FLHC fahren		Champagnertod	MB, Brannenburg, Erl, Ebbs, Kufstein, Landl, Schliersee
1528	20. Juli 2018	FXDL fahren		Champagnertod	Parsberg, Bad Flintsbach, Brannenburg, Kiefersfelden, Thiersee, Landl
1529	22. Juli 2018	Fisch und Pommes kochen		Champagnertod	
1530	23. Juli 2018	FLHC fahren, Anhänger holen		Champagnertod	Geretsried, Muensing, Seeshaupt, STA
1531	24. Juli 2018	FXDL fahren	Trampolin	Champagnertod	Wörnsmühl, Irschenberg , Au, Pang, Rohrdorf, Aschau, Sachrang, Kufstein, Landl
1532	25. Juli 2018	FLHC Geretsried holen			Parsberg, Braennenburg, Sudelfeld, Leitzachtal
1533	26. Juli 2018	Gambach fahren, MV mitgefahren, Hotel Grossen-Linden			
1534	27. Juli 2018	MV Hotel Grossen-Linden, Mama besucht, Kerstin besucht			
1535	28. Juli 2018	Gambach Hausham gefahren			
1536	29. Juli 2018	FLHC fahren		Champagnertod	Parsberg, Irschenberg, Pullach, Hundham, Leitzachtal, MB, Kreuzstrasse, Leitern, Weyern
1537	30. Juli 2018	Zulassungsstelle FLHC Leistungsänderung, FXDL fahren		Champagnertod	Bad Toelz, Sylvenstein, Walchensee
1538	31. Juli 2018	FXDL fahren, Freibad MB		Champagnertod	Irschenberg, Pulling, Brannenburg, Sudelfeld
1539	1. August 2018	FLHC fahren, Freibad MB			Parsberg, Bad Feilnbach, Raubling, Pullach, Vagen, Irschenberg
1540	2. August 2018	FXDL fahren, Freibad MB		Champagnertod	MB, Weyarn, Faistenar, Feldkirchen, Golling, Irschenberg, Parsberg
1541	3. August 2018	FXDL ABS entlueften, FLHC fahren		Champagnertod	MB, Weyarn, Faistenar, Feldkirchen, Vagen, Irschenberg, Leitzachtal, Schliersee 
1542	4. August 2018	FXDL fahren, FLHC Irschenberg, Seehamer See,  Dinzler essen, T-Bone Steak		Champagnertod	Parsberg, Erl , Kössen, St. Johann, Kufstein, Landl, Leitzachtal 
1543	5. August 2018	FXDL und FLHC waschen, Fisch braten		Champagnertod	
1544	6. August 2018	FXDL fahren		Champagnertod	Schliersee, Bayrischzell, Sudelfeld, Bab Feilnbach, Hundham, Leitzachtal, MB, Gmund
1545	7. August 2018	MV Sex, Doerr Rezept, Huber Rechnung		Champagnertod	
1546	8. August 2018	MV Sex		Champagnertod, Boeses Geheimnis	
1547	9. August 2018			Boeses Geheimnis	
1548	10. August 2018			Boeses Geheimnis	
1549	11. August 2018	FLHC fahren		Boeses Geheimnis	Parsberg, Au, Bad Feilnbach, Brannenburg, Erl, Ebbs, Kufstein, Landl, Schliersee
1550	12. August 2018	FXDL fahren, Fisch kochen		Boeses Geheimnis	Parsberg, Au, Bad Feilnbach, Brannenburg, Erl, Ebbs, Kufstein, Landl, Leitzachtal
1551	13. August 2018	FXDL fahren		Boeses Geheimnis	Gmund, Bad Toelz, Holki, Weyern, Seehamer See, Leitzachtal, Woernsmuehl
1552	14. August 2018	MV Sex		Boeses Geheimnis	
1553	15. August 2018	FLHC fahren, Pizza backen		Boeses Geheimnis	Parsberg, Auerschmid, Irschenberg, Woernsmuehl
1555	19. August 2018	FXDL fahren, Fisch braten		Das Boese	Woernsmuehl, Hundham, Pang, Simsee, Frasdorf, Aschau, Sachrang, Kufstein, Landl
1556	20. August 2018	FLHC fahren, HD Geretsried wg Road King		Das Boese	MB, Bad Toelz, Geretsried, Bad Toelz, MB
1557	21. August 2018	FXDL arbeit fahren, CB hat auf email geantwortet		Das Boese	
1558	22. August 2018	FLHC arbeit fahren		Das Boese	
1559	23. August 2018	CB email und telefoniert, MV Sex		Das Boese	
1560	24. August 2018		Trampolin	Das Boese	
1561	25. August 2018	Gulasch kochen		Das Boese	
1562	26. August 2018			Das Boese	
1563	27. August 2018	FXDL fahren	Trampolin	Das Boese	Parsberg, Au, Brannenburg, Raubling, Pang, Golling, Irschenberg, Woernsmuehl
1564	28. August 2018	FXDL arbeit fahren		Das Boese	
1565	29. August 2018	FLHC arbeit fahren		Das Boese	
1566	30. August 2018			Das Boese	
1567	31. August 2018	Erbseneintopf		Das Boese	
1568	1. September 2018			Das Boese	
1569	2. September 2018	Fisch braten		Das Boese	
1570	3. September 2018	FLHC fahren, FXDL Sitzbank Sattlerei abgegeben		Rachgier	Gmund, Holki, Seehamer See, Leitzachtal, Woernsmuehl
1571	4. September 2018	Jekyll und Hyde Werkstattmodus		Rachgier	
1572	5. September 2018	FLHC arbeit fahren, CB telefoniert			
1573	6. September 2018	MV sex		Rachgier	
1574	7. September 2018			Rachgier	
1575	8. September 2018	Zwetschgenmus kochen,Ilona und Rolf getroffen Gmund, Steak braten		Rachgier	
1576	9. September 2018	FLHC fahren, Fisch braten		Rachgier	Parsberg, Bad Feilnberg, Brannenburg, Sudelfeld, Hundham
1577	10. September 2018	FLHC fahren		Rachgier	Hundham, Pullach, Beyharting, Glonn, Aying, Vagen, Leitzachtal
1578	11. September 2018			Rachgier	
1579	12. September 2018	Zwetschgenmus kochen, FLHC fahren		Rachgier	Parsberg, Au, Brannenburg, Sudelfeld, Hundham
1580	13. September 2018	Steak essen Muenchen BMC im Little London			
1581	14. September 2018			Rachgier	
1582	15. September 2018	Zwetchgenmus, FLHC fahren		Rachgier	Parsberg, Brannenburg, Kiefersfelden, Landl
1583	17. September 2018	FLHC fahren		Rachgier	Leitzachtal, Au, Bad Feilnbach, Brannenburg, Sudelfeld, Schliersee
1584	18. September 2018	FLHC arbeit fahren		Rachgier	
1585	19. September 2018	FLHC arbeit fahren			
1586	20. September 2018			Rachgier	
1587	21. September 2018			Rachgier	
1588	22. September 2018	Lammbraten, Holz sägen, Flur putzen, FLHC waschen		Rachgier	
1589	23. September 2018	FLHC fahren		Rachgier	Woernsmuehl, Hundham, Brannenburg, Kufstein, Landl, Hundham, Leitzachtal
1590	24. September 2018	Paletten mitgenommen		Rachgier	
1591	25. September 2018	FLHC arbeit fahren, FXDL Sitz abholen		Rachgier	
1592	26. September 2018	FXDL arbeit fahren, MidYear review		Rachgier	
1593	27. September 2018	MV Hotel Sex			
1594	28. September 2018	FXDL fahren		Rachgier	Parsberg, Irschenberg, Golling, Vagen, Leitzachtal
1595	30. September 2018	FLHC fahren		Rachgier	Bad Toelz, Sylvenstein, Walchensee, Bad Toelz
1596	1. Oktober 2018	Keller geraeumt		Rachgier	
1597	2. Oktober 2018			Rachgier	
1598	3. Oktober 2018			Rachgier	
1599	4. Oktober 2018	FLHC fahren, Thunfisch Aufstrich		Rachgier	Parsberg, Pang, Erl, Ebbs, Kufstein, Landl, Leitzachtal
1600	5. Oktober 2018	FXDL fahren		Toedlicher Befehl	Parsberg, Au, Bad Feilnbach, Brannenburg, Erl, Ebbs, Kufstein, Landl, Schliersee
1601	6. Oktober 2018	FXDL fahren, Frikadellen, Wirsching		Toedlicher Befehl	
1602	7. Oktober 2018			Toedlicher Befehl	
1603	8. Oktober 2018	FXDL fahren		Toedlicher Befehl	Hundham, Bad Feilnbach, Raubling, Pullach, Vagen, Leitzachtal
1604	9. Oktober 2018	FLHC arbeit fahren		Toedlicher Befehl	
1605	10. Oktober 2018	FLHC arbeit fahren		Toedlicher Befehl	
1606	11. Oktober 2018	FLHC arbeit fahren		Toedlicher Befehl	
1607	12. Oktober 2018	Satteltaschen lackieren		Toedlicher Befehl	
1608	13. Oktober 2018	Lamm, FXFL fahren		Toedlicher Befehl	Hundham, Pullach, Feldkirchen, Unterlaus, Irschenebrg, Leitzachtal
1609	15. Oktober 2018	FXDL fahren		Toedlicher Befehl	Woernsmuehl, Hundham, Bad Feilnbach, Brannenburg, Sudelfeld, Woernsmuehl
1610	16. Oktober 2018	MV Sex		Der Fluestermann	
1611	17. Oktober 2018	FLHC arbeit fahren		Der Fluestermann	
1612	18. Oktober 2018			Der Fluestermann	
1613	19. Oktober 2018			Der Fluestermann	
1614	20. Oktober 2018	FLHC fahren, Wirsing kochen, FLHC waschen		Der Fluestermann	Parsberg, Bad Feilnbach, Brannenburg, Nussdorf, Erl, Ebbs, Kufstein, Landl, Schliersee
1615	21. Oktober 2018	FXDL fahren		Der Fluestermann	Parsberg, Bad Feilnbach, Brannenburg, Kiefersfelden, Kufstein, Landl, Leitzachtal
1616	22. Oktober 2018	CB Sex Hotel Salzburg		Der Fluestermann	
1617	23. Oktober 2018			Der Fluestermann	
1618	24. Oktober 2018	BMC essen Italiener			
1619	25. Oktober 2018	RAV MB AX 812 Winterreifen wechseln		Der Fluestermann	
1620	26. Oktober 2018			Der Fluestermann	
1621	27. Oktober 2018	Rouladen gekocht, Apfelkuchen		Der Fluestermann	
1622	28. Oktober 2018			Der Fluestermann	
1623	29. Oktober 2018			Quercher und das Jammertal	
1624	30. Oktober 2018	MV Sex		Quercher und das Jammertal	
1625	31. Oktober 2018	MV Sex,  Hotel Achheim 6h Zimmer		Quercher und das Jammertal	
1626	1. November 2018	FLHC fahren		Quercher und das Jammertal	Parsberg, Au, Pang, Brannenburg, Nussdorf, Erl, Ebbs, Kufstein, Landl, Woernsmuehl
1627	2. November 2018	Hefebrezen gebacken		Quercher und das Jammertal	
1628	3. November 2018	FXDL fahren, Fisch braten, Tomatensalat		Quercher und das Jammertal	Bad Toelz, Penzberg, Sesshaupt, Muensing, WOR, Geretsried, Bad Toelz
1629	4. November 2018	FXDL fahren		Quercher und das Jammertal	Parsberg, Au, Pullach. Maxlrain, Golling, Irschenberg, Leitzachtal, Woernsmuehl
1630	5. November 2018	FLHC fahren			Bad Toelz, Holki, Foeching, Fellach, Kreuzstarsse, Feldkirchen, Vagen, Leitsachtal, Woernsmuehl
2089	28. März 2020				
1631	6. November 2018	BMC exchange München, Award		Quercher und das Jammertal	
1632	7. November 2018	FXDL arbeit fahren		Quercher und das Jammertal	
1633	8. November 2018				
1634	9. November 2018	Bolognaise kochen		Quercher und das Jammertal	
1635	10. November 2018	FLHC fahren		Quercher und das Jammertal	Parsberg, Au, Pang, RO, Rohrdorf, Simsee, Bad Endorf, golling, Irschenberg, Leitzachtal, Woernsmuehl
1636	11. November 2018	FXDL fahren		Quercher und das Jammertal	Hundham, Brannenburg, Nussdorf, Rohrdorf, Simsee, Pang, Leitzachtal, Woernsmuehl
1637	12. November 2018	FXDL fahren		Quercher und das Jammertal	Hundham, Brannenburg, Nussdorf, Rohrdorf, Pang, Leitzachtal, Woernsmuehl
1638	13. November 2018	MV Sex im Auto		Quercher und das Jammertal	
1639	14. November 2018	MV Sex, Hotel Schwaig 6h Zimmer		Quercher und das Jammertal	
1640	15. November 2018			Quercher und das Jammertal	
1641	16. November 2018			Das Killer Hotel	
1642	17. November 2018	Frikadellen & Wirsing gekocht, FXDL waschen & zusammen mit FLHC in Anhänger		Das Killer Hotel	
1643	18. November 2018	Mama gestorben		Das Killer Hotel	
1644	19. November 2018	Bratkartoffeln & Bratwuerstchen		Das Killer Hotel	
1645	20. November 2018	Milchreis kochen		Das Killer Hotel	
1646	21. November 2018	MV beim Baecker in der frueh abgeholt und am abend nach hause gefahren		Das Killer Hotel	
1647	22. November 2018			Das Killer Hotel	
1648	23. November 2018			Der Schädelbrecher	
1649	24. November 2018	Pizza backen		Der Schädelbrecher	SM beim saufen erwischt
1650	25. November 2018	Nudel und Tomatensosse, Harley verzurrt Anhänger	walken, kurz laufen	Der Schädelbrecher	
1651	26. November 2018	Buch Muttertag - Nele Neuhaus gekauft	walken, kurz laufen	Der Schädelbrecher	
1652	27. November 2018	MV Sex im Auto		Der Schädelbrecher	
1653	28. November 2018	MV Sex, Hotel Schwaig 6h Zimmer	walken, kurz laufen	Der Schädelbrecher	
1654	29. November 2018	BMC workshop, MV nach Gi-Linden Hotel gefahren, Griedel gefahren	walken Krontahler		
1655	30. November 2018	MV Gi-Linden Hotel, Beerdigung Mama			
1656	1. Dezember 2018	Griedel Ilona und Kerstin verabschiedet, MV Gi-Linden München gefahren		Der Schädelbrecher	
1657	2. Dezember 2018		walken, Hugel aufwaerts, kurz laufen		
1658	3. Dezember 2018	FLHC - HD Galerie Gelting / Wolfratshausen Winterlagerung		Der Schädelbrecher, Winterkalt	Anhänger verloren
1659	4. Dezember 2018	MV Bäcker abgeholt		Winterkalt	
1660	5. Dezember 2018	CB hat treffen für 10.12. abgesagt		Winterkalt	
1661	6. Dezember 2018	MV Bäcker abgeholt		Winterkalt	
1662	7. Dezember 2018			Winterkalt	
1663	8. Dezember 2018	FXDL Batterie ausbauen, Schitzel mit Rosenkohl	walken, kurz laufen	Winterkalt	
1664	9. Dezember 2018		walken ueber KH, kurz laufen	Winterkalt	
1665	10. Dezember 2018	MV Sex, Hotel Schwaig 6h Zimmer		Winterkalt	
1666	11. Dezember 2018	MV Sex im Auto, geilen BJ, Zahnarzt Termin		Winterkalt	
1667	12. Dezember 2018	Dörr 24h Blutdruck, Blutabnahme		Winterkalt	
1668	13. Dezember 2018	Dörr check, Ultraschall, MV Sex im Auto		Winterkalt	
1669	14. Dezember 2018			Winterkalt	
1670	15. Dezember 2018	Fisch mit Kartoffelsalat	walken Stadlberg	Winterkalt	
1671	16. Dezember 2018	Fisch mit Bratkartoffeln	walken Stadlberg	Winterkalt	
1672	17. Dezember 2018			Wovon träumst du?	
1673	18. Dezember 2018			Wovon träumst du?	
1674	19. Dezember 2018	MV Sex im Auto, geilen BJ			
1675	20. Dezember 2018			Wovon träumst du?	
1676	21. Dezember 2018			Wovon träumst du?	
1677	22. Dezember 2018	Lamm kochen			
1678	23. Dezember 2018				
1679	24. Dezember 2018		walken	Wovon träumst du?	
1680	25. Dezember 2018	Ilona telefoniert		Wovon träumst du?	
1681	26. Dezember 2018	Apfelkuecherl	walken ueber KH	Wovon träumst du?	
1682	27. Dezember 2018				
1683	28. Dezember 2018				
1684	29. Dezember 2018	Rosenkohl kochen	walken Stadlberg, Althausham	Wovon träumst du?	
1685	30. Dezember 2018	Fisch braten		Wovon träumst du?	
1686	31. Dezember 2018	Wirsing kochen	walken ueber KH, ohne Pause		
1687	1. Januar 2019		walken ueber KH, ohne Pause	Wovon träumst du?	
1688	2. Januar 2019			Wovon träumst du?	
1689	3. Januar 2019	`	walken, Baumstumpf & zurueck		30 Minuten, geht immer in der Mittagspause
1690	4. Januar 2019			Verschwunden	
1691	5. Januar 2019			Verschwunden	starker Schneefall
1692	6. Januar 2019			Verschwunden	starker Schneefall
1693	7. Januar 2019			Verschwunden	
1694	8. Januar 2019			Verschwunden	
1695	9. Januar 2019	MV Sex Hotel Ramada Oberding		Verschwunden	
1696	10. Januar 2019	MV Sex Hotel Ramada Oberding		Verschwunden	
1697	11. Januar 2019			Verschwunden	
1698	12. Januar 2019			Verschwunden	
1699	13. Januar 2019			Verschwunden	
1700	14. Januar 2019			Verschwunden	SM wieder mal am saufen, Flasche JD, liegt nackt im Buero auf dem Boden
1701	15. Januar 2019	MV Sex im Auto		Verschwunden	
1702	16. Januar 2019			Verschwunden	
1703	17. Januar 2019	MV abgeholt beim Bäcker		Verschwunden	
1704	18. Januar 2019			Die TodesApp	
1705	19. Januar 2019		walken	Die TodesApp	
1706	20. Januar 2019		walken	Die TodesApp	Stadlberg, viel Schnee, schwierig zu gehen
1707	21. Januar 2019			Die TodesApp	
1708	22. Januar 2019			Die TodesApp	
1709	23. Januar 2019			Die TodesApp	
1710	24. Januar 2019	MV Sex im Auto, Ruecksitz umgeklappt		Die TodesApp	
1711	25. Januar 2019			Die TodesApp	
1712	26. Januar 2019				
1713	27. Januar 2019			Die TodesApp	
1714	28. Januar 2019	SM bei Meyer-Huebner		Die TodesApp	
1715	29. Januar 2019	MV Sex im Auto, Rücksitz umgeklappt		Die TodesApp	
2093	1. April 2020				
1716	30. Januar 2019	Regenz-Wagner Kurzzeitpflege fuer Lukas		Die TodesApp	
1717	31. Januar 2019			Die TodesApp	
1718	1. Februar 2019	Regenz-Wagner in Erlkam wg Termin		Die TodesApp	
1719	2. Februar 2019	Lukas Regens-Wagner nach Erlkam gefahren, online checkin		Die TodesApp	
1720	3. Februar 2019	Flughafen München, Nizza Fluege gestrichen			
1721	4. Februar 2019	Flughafen München, Flug Nizza			
1722	5. Februar 2019	Nizza arbeiten, KD SMS			
1723	6. Februar 2019	Nizza BMC workshop, GrandTour ipad geschaut			
1724	7. Februar 2019	Nizza BMC workshop			
1725	8. Februar 2019	Flug Nizza München, MV geilen OV, SM Notarzt, Einlieferung KH			
1726	9. Februar 2019	aufräumen, Birgit, Robert, Renate, Lukas Regens-Wagner geholt, SM im KH besucht			
1727	10. Februar 2019	Lukas Schrank raeumen, SM KH besucht			
1728	11. Februar 2019	Antrag Kurzzeitpflege an DAK, Manu auf Besuch, SM KH besucht			
1729	12. Februar 2019	MV Holzkirchen geholt, zu Hause, geilen Sex			
1730	13. Februar 2019	Kleidersaecke Renate gefahren, Kuechenschrank geraeumt, Regens-Wagner wegen Lukas, SM KH besucht			
1731	14. Februar 2019	Wäsche waschen, Alibert geräumt, einkaufen Alpengrossmarkt, SM KH besucht			
1732	15. Februar 2019	Bad Schrank raeumen, SM KH besucht, KD SMS			
1733	16. Februar 2019	Staub saugen, nass wischen, Flur, Bad Schrank raeumen, Fischstäbchen, SM KH besucht			
1734	17. Februar 2019	Fisch und Spinat kochen, SM KH besucht			
1735	18. Februar 2019	Doc wg Lukas Karte & Rezept, SM KH besucht			
1736	19. Februar 2019				
1737	20. Februar 2019	SM KH besucht			
1738	21. Februar 2019	Katzenkloo, saugen, SM KH besucht, einkaufen			
1739	22. Februar 2019	SM KH besucht			
1740	23. Februar 2019	Kochen Lachs und Spinat, SM KH besucht			
1741	24. Februar 2019	essen kochen, SM KH besuch, Lukas Regenz Wagner, MV in WOR abgeholt			
1742	25. Februar 2019	MV zu Hause geilen Sex, SM KH besucht			
1743	26. Februar 2019	MV Erding gefahren, Lissabon geflogen, BMC CAB treffen Sky bar, Grand Tour Prime Video			
1744	27. Februar 2019	BMC CAB treffen, TukTuk durch Lissabon			
1745	28. Februar 2019	BMC CAB treffen			
1746	1. März 2019	Lissabon nach Muenchen geflogen, MV Holiday Inn			
1747	2. März 2019	Hauham fahren, Lukas Regens Wagner abgeholt, SM KH besucht, Grand Tour Prime Video			
1748	3. März 2019	kochen Bratwurst mit Spinat, SM KH besucht, Grand Tour Prime Video		Blutschwarz	
1749	4. März 2019	Spaghetti mit Pesto, Grand Tour Prime Video			
1750	5. März 2019	Kammer OG Kleidung, Windeln, SM KH besucht, Grand Tour Prime Video			
1751	6. März 2019	MV Holzkirchen geholt und zu Hause geilen Sex, Bosch Prime Video			
1752	7. März 2019	MV geilen Sex im Auto, SM KH besucht,  Bosch Prime Video			
1753	8. März 2019	Staubsaugen,  SM KH besucht, Bosch Prime Video			
1754	9. März 2019	nass wischen, Katzenkloo, SM KH besucht, CB zu Hause			
1755	10. März 2019	Haehnchenbrust kochen, SM KH besucht, Bosch Prime Video		Blutschwarz	
1756	11. März 2019	SM KH besucht			
1757	12. März 2019	MV geilen Sex im Auto			
1758	13. März 2019	FXDL Batterie, Sitz einbauen, SM KH besucht		Blutschwarz	
1759	14. März 2019	FLHC Geretsried geholt, Seemueller Anhänger, SM KH besucht			
1760	15. März 2019	SM KH besucht		Blutschwarz	
1761	16. März 2019	FXDL fahren, kochen Huhn Brokkoli, Kartoffeln, SM KH besucht		Blutschwarz	MB, Irschenberg, Bruckmuehl, Ischenberg, Parsberg
1762	17. März 2019	FLHC fahren, kochen Spinat, Fisch, Kartoffeln, SM KH besucht			MB, Parsberg, Brannenburg, Raubling, Pang, Hundham, Woernsmuehl
1763	18. März 2019	einkaufen, SM KH besucht		Blutschwarz	
1764	19. März 2019				
1765	20. März 2019	FLHC fahren, SM KH besucht			MB, Weyarn, Kreuzstrasse, Bad Aibling, Pullach, Hundham, Woernsmuehl
1766	21. März 2019	FLHC fahren, SM KH besucht, MT Schmidts			MB, Glonn, Anzing, Mkt Schwaben, ED, Dorfen, RO, Bad Aibling, Pulalch, Hundahn, Woernsmuehl
1767	22. März 2019	FXDL fahren, SM KH abgeholt			Woernsmuehl, Hundham, Pullach, Beyharting, Fellach, Holki, Kreuzstrasse, MB
1768	23. März 2019	FLHC fahren		Blutschwarz	Hundham, Nussdorf, Erl, Koessen, Reit, Oberwoessen, Marquatstein,Aschau, 
1769	24. März 2019	FXDL fahren		Blutschwarz	MB, Kreuzstrasse, Hoehenkirchen, Anzing, Ebersberg, Steinhoering, Rott, Golling, Irschenberg
1770	25. März 2019			Blutschwarz	
1771	26. März 2019	MV geilen Sex im Auto,		Blutschwarz	
1772	27. März 2019			Blutschwarz	
1773	28. März 2019	FLHC Geretsried, Anhänger geholt		Blutschwarz	Geretsried, Bad Toelz, Holki, Pullach, Hundahm, Woernsmuehl
1774	29. März 2019			Blutschwarz	
1775	30. März 2019	Lammcurry kochen, FXDL fahren		Blutschwarz	Irschenberg, Beyharting, Bruckmuehl, Fellach, Weyarn, MB, Irschenberg, Leitzach, Woernsmuehl
1776	31. März 2019	FLHC fahren		Blutschwarz	Woernsmuehl, Brannenburh, Nussdorfm, Raubling, RO, Pang, Ulach, Faisting, Weyarn, Seeham, Leitzach
1777	1. April 2019	FLHC fahren HD Geretsried wg KessTech		Blutschwarz	
1778	2. April 2019	massage		Muttertag	
1779	3. April 2019	MV geilen Sex im Auto,		Muttertag	
1780	4. April 2019	FLHC House of Flames Rohrdorf wg KessTech, Massage		Muttertag	
1781	5. April 2019			Muttertag	
1782	6. April 2019	FXDL fahren, Fisch und Bratkartoffeln kochen			Hundham, Bad feilnbach, Brannenburg, Nussdorf, Erl, Kufstein, Landl, Schliersee
1783	8. April 2019			Muttertag	
1784	9. April 2019	MV geilen Sex im Auto, Massage		Muttertag	
1785	10. April 2019			Muttertag	
1786	11. April 2019	Massage		Muttertag	
1787	12. April 2019	FXDL Rohrdorf gefahren, FLHC abgeholt		Muttertag	MB, Irschenberg, Rohrdorf, Irschenberg, Leitzach, Woehrnmuehl
1788	13. April 2019	FLHC fahren, Pizza backen		Muttertag	Woernsmuehl, Leitzach, A8, Rohrdorf, RO, Pang, Golling, Ischenberg, Leitzach
1789	14. April 2019			Muttertag	
1790	15. April 2019	FLHC neue Zulassungsbescheinigung Teil 1		Muttertag	
2099	7. April 2020				
1791	16. April 2019	Randall Boot House of Flames gekauft		Muttertag	
1792	17. April 2019	FXDL RO abgeholt, RAV Poetzinger		Muttertag	
1793	18. April 2019			Muttertag	
1794	23. April 2019	MV geilen Sex im Auto		Muttertag	
1795	24. April 2019	MV geilen Sex im Auto		Muttertag	
1796	25. April 2019	FLHC arbeit fahren		Muttertag	
1797	26. April 2019			Muttertag	
1798	27. April 2019	Frikadellen		Muttertag	
1799	28. April 2019	FXDL fahren		Muttertag	Weyarn, Kreuzstrasse, Feldkirchen
1800	29. April 2019			Muttertag	
1801	30. April 2019	MV geilen Sex im Auto		Ein Dunkles Spiel	
1802	1. Mai 2019	FLHC fahren		Ein Dunkles Spiel	
1803	2. Mai 2019	MV Hotel		Ein Dunkles Spiel	
1804	3. Mai 2019	Holz Lieferung, Holz raeumen		Ein Dunkles Spiel	
1805	4. Mai 2019	Holz raeumen, Pastel de Nada		Ein Dunkles Spiel	
1806	5. Mai 2019	Fischbraten		Ein Dunkles Spiel	
1807	6. Mai 2019	Taettowierer Kolbermoor		Ein Dunkles Spiel	
1808	7. Mai 2019	MV geilen Sex im Auto, Massage		Ein Dunkles Spiel	
1809	8. Mai 2019	FLHC arbeit fahren		Ein Dunkles Spiel	
1810	9. Mai 2019	Rokker Jeans		Ein Dunkles Spiel	
1811	10. Mai 2019			Ein Dunkles Spiel	
1812	11. Mai 2019	Schuhschrank, Klodeckel, FXDL Luft prüfen		Ein Dunkles Spiel	
1813	12. Mai 2019			Ein Dunkles Spiel	
1814	13. Mai 2019	Taettowierer Kolbermoor		Ein Dunkles Spiel	
1815	14. Mai 2019	MV geilen Sex im Auto		Ein Dunkles Spiel	
1816	15. Mai 2019	MV geilen Sex im Auto		Ein Dunkles Spiel	
1817	16. Mai 2019			Ein Dunkles Spiel	
1818	17. Mai 2019			Ein Dunkles Spiel	
1819	18. Mai 2019	FLHC Augsburg, FLHTKL gekauft und Heritage verkauft		Ein Dunkles Spiel	Weyarn, A8, Mittlerer Ring, A96, B17
1820	20. Mai 2019	Massage, Geld abheben fuer FLHTKL		Ein Dunkles Spiel	
1821	21. Mai 2019	Augsburg Auspuff, Geld, Papiere fuer FLHTKL		Ein Dunkles Spiel	
1822	22. Mai 2019			Die Rächer - Jack Daniels	
1823	23. Mai 2019	FLHTKL zugelassen, FLHC und FLHTKL Übergabe in Augsburg		Die Rächer - Jack Daniels	
1824	25. Mai 2019	FLHTKL fahren, Lamm kochen		Die Rächer - Jack Daniels	Irschenberg, A8, Rohrdorf, Aschau, Sachrang, Kufstein, Landl,Hundham, Bad Feilnbach. Leitzachtal 
1825	26. Mai 2019	FXDL fahren		Die Rächer - Jack Daniels	MB, Irschenberg, Goetting, Beyharting, Feldkirchen, Peiss, Sauerlach, Bad Toelz
1826	27. Mai 2019	Tättowierer Kolbermoor		Die Rächer - Jack Daniels	
1827	28. Mai 2019	Massage		Die Rächer - Jack Daniels	
1828	29. Mai 2019			Die Rächer - Jack Daniels	
1829	30. Mai 2019	FLHTKL und FXDL fahren		Die Rächer - Jack Daniels	
1830	31. Mai 2019	FXDL fahren		Die Rächer - Jack Daniels	
1831	1. Juni 2019	FLHTKL fahren		Die Rächer - Jack Daniels	
1832	2. Juni 2019	FLHTKL fahren		Die ewigen Toten	
1833	3. Juni 2019	FLHTKL fahren		Die ewigen Toten	
1834	4. Juni 2019	FLHTKL Arbeit fahren		Die ewigen Toten	
1835	5. Juni 2019	MV geilen Sex im Auto, Paletten			
1836	6. Juni 2019			Die ewigen Toten	
1837	7. Juni 2019	FLHTKL Inspektion Rohrdorf		Die ewigen Toten	
1838	8. Juni 2019	Holz sägen, FLHTKL fahren			
1839	9. Juni 2019	FXDL und FLHTKL fahren		Die ewigen Toten	
1840	10. Juni 2019	FXDL und FLHTKL fahren		Die ewigen Toten	
1841	11. Juni 2019	MV geilen Sex im Auto		Die ewigen Toten	
1842	12. Juni 2019	FLHTKL fahren		Die ewigen Toten	
1843	13. Juni 2019	MV geilen Sex im Auto		Die ewigen Toten	
1844	14. Juni 2019	FXDL fahren,Tättowierer Kolbermoor, Kerstin telefoniert		Die ewigen Toten	
1845	15. Juni 2019	FLHTKL fahren, Tomatensosse kochen		Die ewigen Toten	
1846	16. Juni 2019	FLHTKL fahren		Die ewigen Toten	
1847	17. Juni 2019	FLHTKL fahren		Die ewigen Toten	
1848	18. Juni 2019	BMC Essen, Kerstin telefoniert, MV geilen Sex im Freien, Massage		Die ewigen Toten	
1849	19. Juni 2019	FXDL fahren, Cycle Factory wg FXDL Umbau		Die ewigen Toten	
1850	20. Juni 2019	FXDL fahren		Die ewigen Toten	
1851	21. Juni 2019			Die ewigen Toten	
1852	22. Juni 2019	FLHTKL fahren, FXDL fahren		Die ewigen Toten	
1853	23. Juni 2019	FXDL fahren		Die ewigen Toten	
1854	24. Juni 2019	MV geilen Sex im Auto und Hotel		Die ewigen Toten	
1855	25. Juni 2019	FXDL Cycle Factory, FLHTKL fahren, Massage		Die ewigen Toten	
1856	26. Juni 2019	FLHTKL arbeit fahren, AH Bernried			
1857	27. Juni 2019	FLHTKL arbeit fahren, Maria mitgefahren und Sex im freien, viele Muecken		Die ewigen Toten	
1858	28. Juni 2019			Die ewigen Toten	
1859	29. Juni 2019	FLHTKL fahren		Die ewigen Toten	
1860	30. Juni 2019	FLHTKL fahren		Die ewigen Toten	
1861	1. Juli 2019	FLHTKL fahren		Der Kindermacher: Ein Eifelkrimi -1	
1862	2. Juli 2019	Referenzbesuch LBBW, Massage		Der Kindermacher: Ein Eifelkrimi -1	
1863	3. Juli 2019	FLHTKL fahren, FXDL geholt		Der Kindermacher: Ein Eifelkrimi -1	
1864	4. Juli 2019	MV geilen Sex im Auto		Der Kindermacher: Ein Eifelkrimi -1	
1865	5. Juli 2019	Zulassungsstelle FXDL Reifen eintragen, FXDL Cycle Factory wg Bremslicht		Der Kindermacher: Ein Eifelkrimi -1	
1866	6. Juli 2019	FLHTKL fahren		Der Kindermacher: Ein Eifelkrimi -1	
1867	7. Juli 2019			Der Kindermacher: Ein Eifelkrimi -1	
1868	8. Juli 2019			Der Kindermacher: Ein Eifelkrimi -1	
1869	9. Juli 2019	FLHTKL fahren, Massage		Der Kindermacher: Ein Eifelkrimi -1	
1870	10. Juli 2019	MV geilen Sex im Auto		Der Kindermacher: Ein Eifelkrimi -1	
1871	11. Juli 2019	MV geilen Sex im Auto, Cycle Factory Fehler gefunden		Der Kindermacher: Ein Eifelkrimi -1	
1872	12. Juli 2019	FLHTKL fahren		Der Kindermacher: Ein Eifelkrimi -1	
1873	13. Juli 2019	Lammcurry kochen, FLHTKL fahren bei starkem Regen		Der Kindermacher: Ein Eifelkrimi -1	
1874	14. Juli 2019	FLHTKL fahren		Der Kindermacher: Ein Eifelkrimi -1	
1875	15. Juli 2019	FLHTKL fahren		Der Kindermacher: Ein Eifelkrimi -1	
1876	16. Juli 2019	FLHTKL Arbeit fahren, Massage		Der Kindermacher: Ein Eifelkrimi -1	
1877	17. Juli 2019	FLHTKL Arbeit fahren		Der Kindermacher: Ein Eifelkrimi -1	
1878	18. Juli 2019	MV geilen Sex im Auto		Der Kindermacher: Ein Eifelkrimi -1	
1879	19. Juli 2019	FXDL Cycle Factory geholt, FXDL fahren		Der Präparator	
1880	20. Juli 2019	FXDL fahren		Der Präparator	
1881	21. Juli 2019	FXDL fahren, MV Schliersee getroffen	MTB fahren, laufen, weil MTB platt	Der Präparator	
1882	22. Juli 2019	FLHTKL arbeit fahren, Maria mitgefahren und Sex im freien		Der Präparator	
1883	23. Juli 2019	FXDL arbeit fahren, MV McDonalds Kaffee trinken, Massage		Der Präparator	
1884	24. Juli 2019	MV geilen Sex im Auto		Der Präparator	
1885	25. Juli 2019	FLHTKL fahren, MTB Schliersee		Der Präparator	
1886	26. Juli 2019	FLHTKL fahren		Der Präparator	
1887	27. Juli 2019	FLHTKL fahren		Der Präparator	
1888	28. Juli 2019	FLHTKL fahren		Der Präparator	
1889	29. Juli 2019	MTB geholt aus Reperatur		Der Präparator	
1890	30. Juli 2019	FLHTKL Penzl Auspuff, FXDL fahren, Massage			
1891	31. Juli 2019	mit Anhänger nach ED, MV Kantine pause		Der Präparator	
1892	1. August 2019	MV geilen Sex im Auto		Der Präparator	
1893	2. August 2019				
1894	3. August 2019	FXDL Rohrdorf fahren		Der Präparator	
1895	4. August 2019				
1896	5. August 2019	Griedel fahren			
1897	6. August 2019	Gambach Volksbank			
1898	7. August 2019	Griedel Hausham fahren		Der Präparator	
1899	8. August 2019	FLHTKL fahren und putzen		Der Präparator	
1900	9. August 2019	FXDL Rohrdorf holen, FLHTKL fahren		Der Präparator	
1901	10. August 2019	FLHTKL fahren		Der Präparator	
1902	11. August 2019	FLHTKL fahren		Der Präparator	
1903	12. August 2019			Der Präparator	
1904	13. August 2019	Massage, FLHTKL fahren, Rohrdorf		Der Präparator	
1905	14. August 2019	FXDL Rohrdorf, FLHTKL fahren , Breakout,		Der Präparator	
1906	15. August 2019	FLHTKL fahren, CB Telegram		Der Präparator	
1907	16. August 2019	Holz sägen, FLHTKL fahren		Heimläuten	
1908	17. August 2019	FXDL, FLHTKL fahren		Heimläuten	
1909	18. August 2019	FLHTKL fahren		Heimläuten	
1910	19. August 2019	Zulassungstelle FXDL, FLHTKL fahren		Heimläuten	
1911	20. August 2019	Massage, FLHTKL fahren, FXDL Auspuffband		Heimläuten	
1912	21. August 2019	FLHTKL fahren		Heimläuten	
1913	22. August 2019	FLHTKL fahren, Highway Fussrasten		Heimläuten	
1914	23. August 2019	FXDL fahren, FLHTKL und FXDL waschen		Heimläuten	
1915	24. August 2019	FLHTKL fahren Innsbruck		Heimläuten	
1916	25. August 2019	FLHTKL fahren		Heimläuten	
1917	26. August 2019			Heimläuten	
1918	27. August 2019	MV geilen Sex im Auto, Anhänger verkauft, Massage		Heimläuten	
1919	28. August 2019	TS Phoenix und mit Sonia		Heimläuten	
1920	29. August 2019			Benzin - Ein Fall für Julia Wagner	
1921	30. August 2019	Peter Maffay Album Jetzt, FLHTKL fahren		Benzin - Ein Fall für Julia Wagner	
1922	31. August 2019	FXDL, FLHTKL fahren		Benzin - Ein Fall für Julia Wagner	
1923	1. September 2019	FXDL, FLHTKL fahren		Benzin - Ein Fall für Julia Wagner	
1924	2. September 2019			Benzin - Ein Fall für Julia Wagner	
1925	3. September 2019	FLHTKL Rohrdorf fahren, Massage, FXDL fahren		Benzin - Ein Fall für Julia Wagner	
1926	4. September 2019	FLHTKL Rohrdorf geholt			
1927	5. September 2019	MV geilen Sex im Auto, Hotel Schwaig, mm bj, MV Boote und Kayak		Benzin - Ein Fall für Julia Wagner	
1928	6. September 2019			Benzin - Ein Fall für Julia Wagner	
1929	7. September 2019	Anhänger Paletten, Kofferanheaenger ausraeumen		Benzin - Ein Fall für Julia Wagner	
1930	8. September 2019	FLHTKL fahren		Benzin - Ein Fall für Julia Wagner	
1931	9. September 2019			Benzin - Ein Fall für Julia Wagner	
1932	10. September 2019	MV geilen Sex im Auto, MV Kajak		Benzin - Ein Fall für Julia Wagner	
1933	11. September 2019	iphone XR gekauft		Benzin - Ein Fall für Julia Wagner	
1934	12. September 2019	FLHTKL fahren		Benzin - Ein Fall für Julia Wagner	
1935	13. September 2019	Ipad6 und  MacBook Air 13" bstellt, Roulladen, Tiramisu		Benzin - Ein Fall für Julia Wagner	
1936	14. September 2019	FXDL und FHLHTKL fahren		Benzin - Ein Fall für Julia Wagner	
1937	15. September 2019	FXDL und FHLHTKL fahren			
1938	16. September 2019	FLHTKL fahren		Benzin - Ein Fall für Julia Wagner	
1939	17. September 2019	FLHTKL fahren, FXDL fahren, Massage		Benzin - Ein Fall für Julia Wagner	
1940	18. September 2019			Benzin - Ein Fall für Julia Wagner	
1941	19. September 2019	FLHTKL fahren		Tödlicher Betrug: Thilo Hains 3. Fall	
1942	20. September 2019				
1943	21. September 2019	FLHTKL fahren Bad Ischl			
1944	22. September 2019	FLHTKL fahren		Tödlicher Betrug: Thilo Hains 3. Fall	
1945	23. September 2019			Tödlicher Betrug: Thilo Hains 3. Fall	
1946	24. September 2019	Massage FXDL fahren		Tödlicher Betrug: Thilo Hains 3. Fall	
1947	25. September 2019	BMC Italiener essen		Tödlicher Betrug: Thilo Hains 3. Fall	
1948	26. September 2019			Tödlicher Betrug: Thilo Hains 3. Fall	
1949	27. September 2019	Maria telefoniert		Tödlicher Betrug: Thilo Hains 3. Fall	
1950	28. September 2019	Rohrdorf, KessTech FXDL gekauft		Tödlicher Betrug: Thilo Hains 3. Fall	
1951	29. September 2019	FXDL, FLHTKL fahren			
1952	30. September 2019	Maria telefoniert, FLHTKL fahren, Maria neues Handy		Tödlicher Betrug: Thilo Hains 3. Fall	
1953	1. Oktober 2019	MV Ramada Hotel, geilen Sex		Tödlicher Betrug: Thilo Hains 3. Fall	
1954	2. Oktober 2019	MV geilen Sex im Auto, MV Schlauchboote		Tödlicher Betrug: Thilo Hains 3. Fall	
1955	3. Oktober 2019	Kartoffelsalat		Tödlicher Betrug: Thilo Hains 3. Fall	
2074	13. März 2020	Sperrmuell, Schlafzimmer Nieschen fertig geraeumt			
1956	4. Oktober 2019	FXDL fahren und Rohrdorf gebracht, Paletten sägen		Tödlicher Betrug: Thilo Hains 3. Fall	
1957	5. Oktober 2019	gefuellte Paprika		Tödlicher Betrug: Thilo Hains 3. Fall	
1958	8. Oktober 2019	MV geilen Sex im Auto			
1959	11. Oktober 2019				
1960	13. Oktober 2019	FXDL, FLHTKL fahren			
1961	25. Oktober 2019			Der Blütenjäger	
1962	26. Oktober 2019	FXDL, FLHTKL fahren		Der Blütenjäger	
1963	27. Oktober 2019	FLHTKL fahren		Der Blütenjäger	
1964	28. Oktober 2019	Koffer Anhänger abgeholt 		Der Blütenjäger	
1965	29. Oktober 2019	Massage		Der Blütenjäger	
1966	30. Oktober 2019			Der Blütenjäger	
1967	31. Oktober 2019	MV geilen Sex im Auto		Der Blütenjäger	
1968	1. November 2019	FXDL fahren		Der Blütenjäger	
1969	2. November 2019	FXDL und FLHTKL putzen, FLHTKL fahren		Der Blütenjäger	
1970	3. November 2019			Der Blütenjäger	
1971	4. November 2019	FLHTKL fahren		Der Blütenjäger	
1972	5. November 2019			Der Blütenjäger	
1973	6. November 2019	MV Moxy Hotel		Der Blütenjäger	
1974	7. November 2019	FLHTKL fahren		Der Blütenjäger	
1975	8. November 2019			Der Blütenjäger	
1976	9. November 2019	Rohrdorf House of Flames		Der Blütenjäger	
1977	10. November 2019			Der Blütenjäger	
1978	11. November 2019			Der Blütenjäger	
1979	12. November 2019	MV geilen Sex im Auto, Oliver McDonalds getroffen, House of Flames wg Fahrwerk FXDL, etc		Dunkle Botschaft	
1980	13. November 2019	FLHTKL Winterlager abgeholt		Dunkle Botschaft	
1981	14. November 2019	FXDL Winterlager		Dunkle Botschaft	
1982	15. November 2019	Erbsensuppe		Dunkle Botschaft	
1983	16. November 2019	Gyros und Tzatziki kochen		Dunkle Botschaft	
1984	17. November 2019	Flur putzen		Dunkle Botschaft	
1985	18. November 2019			Dunkle Botschaft	
1986	19. November 2019			Dunkle Botschaft	
1987	20. November 2019	Sabine hat Selbstmord begangen		Dunkle Botschaft	
1988	21. November 2019	Kerstin telefoniert			
1989	22. November 2019	Pötzinger wegen RAV abholen, Kerstin telefoniert			
1990	23. November 2019	Kerstin telefoniert, MV in Erding getroffen, TS Jasmin		Dunkle Botschaft	
1991	24. November 2019	MTB fahren, Kerstin telefoniert			
1992	25. November 2019	Bestatter, KD SMS, Kerstin telefoniert			
1993	26. November 2019	Amtsgericht angerufen wg Betreuer, Sabine Kleidung Bestatter, Brief Pötzinger			
1994	27. November 2019	Lukas abgeholt nach Bad Wiessee. RAV Benzin verkauft			
1995	28. November 2019	Merlin Tierarzt	 Pötzinger Geld geholt fuer RAV		
1996	2. Dezember 2019	Merlin Tierarzt			
1997	7. Dezember 2019	putzen, Betten, Ilona telefoniert,  TS Jasmin	laufen Wald und zurueck)		
1998	10. Dezember 2019				
1999	11. Dezember 2019	MV in Holki geholt, zu Hause geilen Sex und ueber nacht geblieben			
2000	12. Dezember 2019	MV ED gefahren, Kleidung Caritas ED, Sterbeurkunde RV			
2001	15. Dezember 2019	Staubsaugen, Waesche waschen, Kerstin und Katarina essen Braeuwirt	laufen Wald und zurueck)		
2002	26. Dezember 2019	Ilona telefoniert, Nudel mit Lachs kochen	laufen (ueber Trigema)		
2003	5. Januar 2020	Kratzbaum WoZi abgebaut	laufen (Schlierach - kurz)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2004	6. Januar 2020	MV Riem abgeholt ,Sex zu Hause			
2005	7. Januar 2020	MT, Pizza gekauft	laufen (Schlierach, Rathaus)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2006	8. Januar 2020	MV Sex im Auto		Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2007	9. Januar 2020				
2008	9. Januar 2020	AH Bernried	laufen (Schlierach hin und zurueck)		
2009	10. Januar 2020	einkaufen, Staubsaugen	laufen (Wald und zurueck)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2010	11. Januar 2020	Tortellini mit Lachs, CB hat abgesagt	laufen (Schlierach hin und zurueck)		
2011	12. Januar 2020		Wade verletzt	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2012	13. Januar 2020	MV Holki geholt ueber Nacht geblieben	Wade verletzt		
2013	14. Januar 2020	MV Riem gefahren	Wade verletzt	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2014	15. Januar 2020	Renate, Birgit, Robert Italiener essen	Wade verletzt	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2015	16. Januar 2020		Wade verletzt		
2016	17. Januar 2020		Wade verletzt		
2017	18. Januar 2020	MV Holki abgeholt ,Sex zu Hause, Holki gefahren,  Essen Weissbräustueberl MB 	Wade verletzt	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2018	19. Januar 2020	Kleines Zimmer OG geraeumt, Staubsaugen, Waesche waschen	laufen (Wald und zurueck)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2019	20. Januar 2020	Plastikmuell	laufen (Schlierach - kurz)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2020	21. Januar 2020	Wertstollhof Miesbach, Massage, Pizza essen	spazieren	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2021	22. Januar 2020	AH Bernried	laufen,walken (Schlierach - kurz)		
2022	23. Januar 2020	Amtsgericht wegen Nachlass	Wade verletzt	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2023	24. Januar 2020	Staubsaugen	Wade verletzt	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2024	25. Januar 2020	MV Holki abgeholt, geilen Sex zu Hause, nach ED gefahren, essen Braeuwirt MB	Wade verletzt	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2025	26. Januar 2020	Maria kurz getroffen, Flug Nizza, Essen Rene, Renaud			
2026	27. Januar 2020	CTLM Training, Sophia Antipolis, Essen Marcel, Tijs			
2027	28. Januar 2020	BMC workshop, Bowling und Essen in Antibes			
2028	29. Januar 2020	Team Frühstück mit Renaud			
2029	30. Januar 2020	CTLM Training, MBO, Goliath amazon Prime			
2030	31. Januar 2020	CTLM Training, Flug Nizza Muenchen			
2031	1. Februar 2020	Goliath amazon Prime	laufen (Wald und zurueck)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2032	2. Februar 2020	Goliath amazon Prime	laufen (Wald und zurueck)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2033	3. Februar 2020	Merkur kuendigen		Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2034	4. Februar 2020	Massage, Italiener Pizza essen		Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2035	5. Februar 2020	MV Sex im Auto, Goliath amazon Prime		Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2036	6. Februar 2020		laufen (Wald und zurueck)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2037	7. Februar 2020	Sparkasse Schliersee, Zulasungsbescheining VRSCDX	laufen (Wald und zurueck)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2038	8. Februar 2020				
2039	8. Februar 2020	Lukas Zimmer geraeumt mit Manuela, nass Wohnung wischen, Flur nass geputzt		Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
2040	9. Februar 2020	Erding gefahren, MV Sex im Auto	laufen (ueber Rathausstr)	Der Hof - Simon Beckett	
2041	10. Februar 2020		laufen (ueber Rathausstr)	Der Hof - Simon Beckett	
2042	11. Februar 2020			Der Hof - Simon Beckett	
2043	12. Februar 2020	Renate, Birgit, Robert Italiener essen			
2044	13. Februar 2020	MV Sex im Auto		Der Hof - Simon Beckett	
2045	14. Februar 2020	Zulassugstelle VRSCDX, Anhänger angemietet		Der Hof - Simon Beckett	
2046	15. Februar 2020	Wertstoffhof Holz, Tauchflaschen, RAV waschen, Braeuwirt essen	laufen (Schlierach hin und zurueck)	Der Hof - Simon Beckett	
2047	16. Februar 2020		laufen (Schlierach, Rathaus)	Der Hof - Simon Beckett	
2048	17. Februar 2020	Staubsaugen, Altkleider, House of Flames Rechung FXDL und FLHTKL		Der Hof - Simon Beckett	
2049	18. Februar 2020	Altkleider, Sparkasse Dollar geholt, Massage	laufen (Schlierach hin & zurueck, ohne gehen	Der Hof - Simon Beckett	
2050	19. Februar 2020	MV Sex im Auto		Der Hof - Simon Beckett	
2051	20. Februar 2020	AH Bernried, Pizza Miesbach Himmisepp	laufen (ueber Rathausstr), ohne Pause		
2052	21. Februar 2020	Flug Muenchen Denver			
2053	22. Februar 2020	Starbucks, Cherry Greek	Stepper 15Min		
2054	23. Februar 2020	Starbucks,	Stepper 30 Min, 2maL		
2055	24. Februar 2020	Starbucks Cherry Cricket Burger	Stepper 30 Min		
2056	25. Februar 2020	Starbucks Cherry Cricket Burger	Stepper 30 Min		
2057	26. Februar 2020	BMC CAB, Eishockey Spiel	Stepper 30 Min		
2058	27. Februar 2020	BMC CAB	Stepper 45 Min		
2059	28. Februar 2020	Starbucks, Flug Denver München	Stepper 30 Min		
2060	29. Februar 2020	Oliver Flughafen abgeholt, MV mit nach Hausham gefahren			
2061	1. März 2020	MV Hausham			
2062	2. März 2020	MV Hausham			
2063	3. März 2020	MV Hausham und Holzkirchen gefahren, FXDL und FLHTKL aus Winterlager, Massage			
2064	4. März 2020	Sperrmuell MB, MV Erding abgeholt			
2065	5. März 2020	MV Hausham und Holzkirchen gefahren, Zulassungsstelle, Sperrmuell MB			
2066	6. März 2020	Anhänger geholt, VRSCDX in Wuerzburg geholt, HD Lederjacke			
2067	7. März 2020	Anhänger zurueck			
2068	8. März 2020	Altkleider, VRSCDX gefahren, AH Bernried			
2069	9. März 2020				Der Knochengarten: Thriller (Carol Jordan und Tony Hill 11)  - Mai 2020
2070	9. März 2020	Sperrmuell Hausham, Schlafzimmer raeumen	laufen (ueber Rathausstr), ohne Pause		
2071	10. März 2020	MV Sex im Auto, Zahnarzt, Oliver McDonalds getroffen			
2072	11. März 2020	VRSCDX gefahren, Birgit, Renate, Robert beim Italiener essen			
2075	14. März 2020	Altkleider, VRSCDX fahren, Lukas Sachen geholt			
2076	15. März 2020	Altkleider, MV Erding Disaster, FLHTKL fahren			
2077	16. März 2020	Altkleider, Wertstoffhof, VRSCDX fahren			
2078	17. März 2020	Wertstoffhof MB Elekto, Papiermuell & Sperrmuell, FXDL fahren, Massage			
2079	18. März 2020	Wertstoffhof MB Papiermuell, Wannen Balkon, VRSCDX fahren			
2082	21. März 2020		laufen (ueber Rathausstr), ohne Pause		
2083	22. März 2020		laufen Schlierach und Tiefenbachstr, ohne Pause		
2084	23. März 2020			Echo einer Winternacht	
2085	24. März 2020		laufen (Schlierach, Rathausstr)		
2086	25. März 2020		laufen (Schlierach, Rathausstr)	Echo einer Winternacht	
2087	26. März 2020	Paletten sägen, Sitz FXDL			
2088	27. März 2020	Schrank Büro raeumen, Kalbsbaeckchen braten, Staubsaugen	laufen Schlierach, Tiefenbachstr, Trigema		
2090	29. März 2020		laufen (Schlierach hin und zurueck)		
2091	30. März 2020	Schrank Buero abgebaut			
2092	31. März 2020	einkaufen, spazieren			
2094	2. April 2020		laufen (Schlierach, Rathausstr)		
2095	3. April 2020		laufen (Schlierach, Rathausstr)		
2096	4. April 2020	Bad putzen, Nass wischen			
2097	5. April 2020		laufen Schlierach, Tiefenbachstr, Trigema		
2098	6. April 2020	Sparkasse, FLHTKL fahren, Zigarren bestellt			
2100	8. April 2020				
2101	8. April 2020	FXDL fahren, einkaufen			
2102	9. April 2020				
2103	10. April 2020	VRSCDX fahren	laufen Schlierach, Tiefenbachstr, Trigema		
2104	11. April 2020	VRSCDX fahren			
2105	12. April 2020	RAV Inspektion	laufen Poetzinger,Schlierach,Rathaus,Trigema		
2106	13. April 2020				
2107	14. April 2020				
2108	15. April 2020	RAV geholt, Pizza backen	laufen Poetzinger		
2109	16. April 2020	FLHTKL fahren, einkaufen, Pizza backen			
2110	17. April 2020	FXDL fahren, Wohnung Erding-Indorf angeschaut			
2111	18. April 2020	Wertstoffhof E-Muell, Sperrmuell, Wannen, FXDL fahren, Schuhschrank, Staubsaugen, Mietvertrag			
2112	19. April 2020	Schlafzimmerschrank Sabine Sachen, FLHTKL fahren, Mietvertrag unterschrieben			
2113	20. April 2020	Kueche abgeloest			
2114	21. April 2020	Wertstoffhof Holz, Schuhe Altkleider MV getroffen, Wohnung Erding angeschaut			
2115	22. April 2020	FXDL fahren, Altkleider			
2116	23. April 2020	Sperrmuell, Altkleider, BJ, Zigarren,VRSCDX fahren	laufen (Schlierach, Rathaus)		
2117	24. April 2020	FXDL fahren,  ED Oliver			
2118	25. April 2020	Altkleider, Keller Schuhe, Pizza backen			
2119	26. April 2020	Pizza backen	laufen Schlierach, Tiefenbachstr, Trigema		
2120	27. April 2020	Steuer 2019 abgegeben			
2121	28. April 2020	VRSCDX fahren			
2122	29. April 2020	Altkleider Schuhe, MV in Riem geholt, zu Hause, MV nach Erding gefahren			
2123	30. April 2020	FXDL fahren			
2124	1. Mai 2020	FLHTKL fahren, AH Bernried			
2125	2. Mai 2020	Keller geraeumt		Echo einer Winternacht	
2126	3. Mai 2020	Bosch Staffel 6	laufen Schlierach, Tiefenbachstr, Trigema		
2127	4. Mai 2020	FXDL fahren, Jeans reparatur, 1und1 Umzug beantragt			
2128	5. Mai 2020	Werstoffhof, Kartoffelsalat mit Bratwurst			
2129	6. Mai 2020	Arbeitszeitverkuerzung Antrag, FXDL fahren			
2130	7. Mai 2020	VRSCDX fahren, FXDL fahren, Massage			
2131	8. Mai 2020				
2132	8. Mai 2020	FLHTKL fahren			
2133	9. Mai 2020	Erding gefahren, Oliver zu Hause, Pizza essen			
2134	10. Mai 2020				
2135	11. Mai 2020	MV Holzkirchen geholt, Sex			
2136	12. Mai 2020	Hagebau Umzugskarton, Jeans abgeholt, Renate Geburtstag, Massage			
2137	13. Mai 2020	Kartoffeln mit Bratwurst, AH Bernried			
2138	14. Mai 2020	Kabel kuendigen			
2139	15. Mai 2020				
2140	17. Mai 2020	MV Ottenhofen geholt, Sex, nach Erding gefahren, FLHTKL fahren			
2141	18. Mai 2020	FLHTKL fahren, Anwaltin Doris Mayerhöfer, Tilgungsaussetzung beantragt, VRSCDX fahren			
2142	19. Mai 2020	Wertstoffhof, FLHTKL fahren			
2143	20. Mai 2020		laufen (Schlierach, Rathaus)		
2144	21. Mai 2020	Oliver mit Familie da, Spaghetti Carbonara gekocht, FXDL fahren			
2145	22. Mai 2020	Dauerauftrag Miete, FLHTKL fahren, Erding Oliver			
2146	23. Mai 2020	Umzugskarton packen, VRSCDX fahren			
2147	24. Mai 2020	Umzugskarton packen, Gefrierschrank Keller ausleeren			
2148	25. Mai 2020	Umzugskarton packen, Kleidung in Taschen			
2149	26. Mai 2020	Werstoffhof MB			
2150	27. Mai 2020	FXDL fahren			
2151	28. Mai 2020	CB telefoniert			
2152	29. Mai 2020				
2153	30. Mai 2020	Keller geraeumt, FLHTKL fahren, AH Bernied und geilen Sex			
2154	31. Mai 2020	Kellersachen in Auto geraeumt, FXDL fahren			
2155	1. Juni 2020	FLHTKL fahren			
2156	2. Juni 2020	Wohnung Übergabe, FLHTKL Erding fahren, MV Sex in neuer WHG, Oliver grillen			
2157	3. Juni 2020	VRSCDX , FXDL Erding fahren, Oliver essen			
2158	5. Juni 2020	Hausham gefahren, Wohnung raeumen, Spagetti Carbonaa gekocht			
2159	6. Juni 2020	MV geilen Sex, VRSCDX mit Tanja fahren			
2160	7. Juni 2020	Hausham restliche Sachen geholt, Waschmaschine, Essen bei Oliver Tanja			
2161	8. Juni 2020	FXDL fahren, MV geilen Sex, Hagebaumarkt Regale, Sonnenschirm			
2162	10. Juni 2020				
2163	9. Juni 2020	Poco Lampen, Roller Badschrank, Fleischpflanzerl, Lachs kochen			
2164	10. Juni 2020	Hausham, Keller, TG, Wogh geraeumt, Renate, Birgit, Robert Italiener essen			
2165	11. Juni 2020	Bestellung amazon, FLHTKL fahren			
2166	12. Juni 2020	MV Sex auf Balkon, FXDL fahren, Segmueller Bett und Schrank abgeholt			
2167	14. Juni 2020	Gulasch kochen, Schrank einraeumen			
2168	15. Juni 2020	MV geilen Sex, Vorhaenge			
2169	17. Juni 2020	Vorhaenge Schlafzimmer, Wohnung Hausham restliche Sachen geholt, TS Jasmin Muenchen geholt			
2170	18. Juni 2020	Einwohneramt, Wurzer Müll entsorgen, Spaghetti Carbonara und Tiramisu			
2171	19. Juni 2020	MV geilen Sex			
2172	20. Juni 2020	putzen, Fleichflanzerl			
2173	21. Juni 2020	FXDL fahren, VRSCDX fahren, VRSCDX mit Tanja fahren			
2174	22. Juni 2020	BW Schrank, Essen			
2175	23. Juni 2020	MV geilen Sex, FLHTKL fahren, FLHTKL mit Tanja fahren			
2176	24. Juni 2020	FLHTKL fahren, AH Bernried			
2177	25. Juni 2020	FLHTKL mit Tanja fahren			
2178	26. Juni 2020	MV geilen Sex			
2179	27. Juni 2020	FXDL fahren, Moosinniger Weiher, FXDL mit Tanja fahren, Sonnenwendfest			
2180	28. Juni 2020	FXDL fahren, VRSCDX fahren, Moosinniger Weiher			Das Boese (Wegeners erste Faelle)
2181	29. Juni 2020	MV geilen Sex			Wie sehr willst du leben
2182	30. Juni 2020	MV geilen Sex, VRSCDX mit Tanja fahren			Der Knochengarten (Tony Hill)
2183	1. Juli 2020	FXDL fahren, Kids, Spagetti Carbonara			Boeses Geheimnis
2184	2. Juli 2020				
2185	3. Juli 2020	FXDL fahren, TSJ nervt zum Sex, zur S-Bahn gefahren			
2186	4. Juli 2020	MV Sex, FXDL fahren, Anhänger Stecker			
2187	5. Juli 2020	FLHTKL fahren, VRSCDX mit Tanja fahren			
2188	6. Juli 2020	Oliver, Tanja grillen			
2189	7. Juli 2020	MV Sex, FXDL fahren			
2190	8. Juli 2020				
2191	9. Juli 2020	FXDL fahren			
2192	10. Juli 2020	MV Sex, FXDL RO fahren			
2193	11. Juli 2020				
2194	12. Juli 2020	MX Sev, VRSCDX mit Tanja fahren			
2195	13. Juli 2020	FLHTKL RO fahren, Oliver grillen			
2196	14. Juli 2020	VRSCDX mit Tanja fahren			
2197	15. Juli 2020	MV geilen Sex, Spagetti Carbonara			
2198	16. Juli 2020	MV geilen Sex			
2199	17. Juli 2020				
2200	18. Juli 2020	FLHTKL Griedel fahren			
2201	19. Juli 2020	FLHTKL fahren			
2202	20. Juli 2020	FLHTKL Nordhorn Wilbers fahren, Mietwagen, Hotel			
2203	21. Juli 2020	Steg am Nordseestrand bei Emden gefahren			
2204	22. Juli 2020	HD Emsbueren, Pier99 essen			
2205	23. Juli 2020	Pier99 essen			
2206	24. Juli 2020	FLHTKL Wilbers abgeholt, Nordhorn Erding gefahren			
2207	25. Juli 2020	FLHTKL fahren, Daenisches Bettenlager Komode, VRSCDX mit Tanja gefahren			
2208	26. Juli 2020	Schnitzel braten			
2209	27. Juli 2020	MV geilen Sex, Sofa Segmueller geliefert, VRSCDX fahren			
2210	28. Juli 2020	MV geilen Sex, Daenisches Bettenlager Tisch und Bank 			
2211	29. Juli 2020	VRSCDX fahren			
2212	30. Juli 2020	Notar Termin Tegernsee, VRSCDX fahren			
2213	31. Juli 2020	VRSCDX fahren, MV geilen Sex, Spagetti Carbonara			
2214	1. August 2020	FXDL RO geholt, MV geilen Sex			
2215	2. August 2020	Pizza essen			
2216	3. August 2020	MV Sex			
2217	4. August 2020	MV Sex			
2218	5. August 2020				
2219	6. August 2020	MV Sex, FXDL fahren			
2220	7. August 2020	FLHTKL fahren, Wohnungsuebergabe			
2221	8. August 2020	FLHTKL fahren, ueber Passau, Deggendorf, LA			
2222	9. August 2020	MV Sex, FXDL fahren, Dorfen Pizza essen			
2223	10. August 2020	VRSCDX fahren			
2224	11. August 2020	MV Sex			
2225	12. August 2020	MV Sex, FXDL fahren			
2226	13. August 2020	Tanja Kaffee trinken da gewesebn			
2227	14. August 2020	MV Sex, FXDL fahren			
2228	15. August 2020	MUCCT5P migration			
2229	16. August 2020	FXDL fahren			
2230	17. August 2020	MV Sex, Spagetti Carbonara			
2231	18. August 2020	MV Sex			
2232	19. August 2020	MV Sex, VRSCDX fahren			
2233	19. August 2020				
2234	20. August 2020	FXDL fahren			
2235	21. August 2020	VRSCDX fahren			
2236	22. August 2020				
2237	23. August 2020	FLHTKL fahren			
2238	24. August 2020	MV Sex			
2239	25. August 2020	MV Sex, FXDL fahren			
2240	26. August 2020				
2241	27. August 2020	MV Sex			
2242	28. August 2020	FLHTKL fahren, Sparkasse Schliersee Geldmarktkonto			
2243	29. August 2020				
2244	30. August 2020	Nudeln essen Tanja, Oliver			
2245	31. August 2020	MV Sex			
2246	1. September 2020				
2247	2. September 2020	FXDL fahren, Fielmann Brille, MV Sex			
2248	3. September 2020	FXDL fahren, MV Sex			
2249	4. September 2020	FLHTKL fahren. MV sex, VRSCDX fahren, Spagetti Carbonara			
2250	5. September 2020	FLHTKL fahren, Arbersee			
2251	6. September 2020	FLHTKL fahren			
2252	7. September 2020	MV Sex			
2253	8. September 2020	MV Sex, FXDL fahren			
2254	9. September 2020	MV Sex, Pizza backen			
2255	10. September 2020	FXDL fahren			
2256	11. September 2020	VRSCDX fahren, Brille Fielmann			
2257	12. September 2020	FXDL fahren			
2258	13. September 2020	VRSCDX fahren			
2259	14. September 2020	FLHTKL fahren, Arber, Bayr. Eisenstein, Regen			
2260	15. September 2020	FXDL fahren, Maxrainer Biergarten			
2261	16. September 2020	FXDL fahren			
2262	17. September 2020				
2263	18. September 2020	FXDL fahren, Zeitlos essen			
2264	19. September 2020	FLHTKL fahren, Regen, Zwiesel, Bayr. Eisenstein, Arber			
2265	20. September 2020	BJ Woerther Weiher, FXDL fahrem			
2266	21. September 2020	VRSCDX fahren			
2267	22. September 2020				
2268	22. September 2020	VRSCDX fahren			
2269	23. September 2020	Cycle Factory Harley kaufen, Hausham Renate, Birgit, Robert Italiener essen			
2270	24. September 2020				
2271	25. September 2020	iPad Sim Karte			
2272	26. September 2020	Putzen			
2273	27. September 2020	FXDL fahren			
2274	28. September 2020				
2275	29. September 2020	Pizza backen			
2276	30. September 2020	FXDL fahren			
2277	1. Oktober 2020	MV Sex			
2278	2. Oktober 2020				
2279	3. Oktober 2020	VRSCDX fahren			
2280	4. Oktober 2020	FLHTKL fahren			
2281	5. Oktober 2020	MV Sex, Interview BMC Phil Wood			
2282	6. Oktober 2020	MV Sex			
2283	7. Oktober 2020	MV Sex			
2284	8. Oktober 2020				
2285	9. Oktober 2020	MV Sex, FXDL fahren, Cycle Factory			
2286	10. Oktober 2020				
2287	11. Oktober 2020	MV Sex, FXDL fahren			
2288	12. Oktober 2020	MX Sex			
2289	13. Oktober 2020				
2290	14. Oktober 2020	MV Sex			
2291	15. Oktober 2020	Restbetrag Wohnung ueberwiesen			
2292	16. Oktober 2020	Cycle Factory, Wi-Reifen			
2293	17. Oktober 2020	Leonie Geburtstagsfeier, MV Sex			
2294	18. Oktober 2020	FXDL fahren			
2295	19. Oktober 2020	Manu Hausham Kaffee getroffen			
2296	20. Oktober 2020	MV Sex			
2297	21. Oktober 2020	MV Sex, FXDL fahren			
2298	22. Oktober 2020				
2299	23. Oktober 2020	MV Sex, FXDL fahren			
2300	24. Oktober 2020				
2301	25. Oktober 2020	MV Sex, FLHTKL fahren			
2302	26. Oktober 2020				
2303	27. Oktober 2020	MV Sex			
2304	28. Oktober 2020				
2305	29. Oktober 2020	Cycle Factory FLSTC bezahlt, V-Rod Umbau, Horizont-IT Interview			
2306	30. Oktober 2020	MV Sex			
2307	31. Oktober 2020	FLHTKL, FXDL fahren			
2308	1. November 2020				
2309	2. November 2020	MV Sex, FXDL fahren			
2310	3. November 2020	MV Sex			
2311	4. November 2020				
2312	5. November 2020	MV Sex, VEP Programm beantragt, FXDL und FLHTKL Winterlager geholt			
2313	6. November 2020	MV Sex			
2314	7. November 2020				
2315	8. November 2020				
2316	9. November 2020	MV Sex			
2317	10. November 2020	MV Sex			
2318	11. November 2020	MV Sex			
2319	12. November 2020	MV Sex			
2320	13. November 2020	VRSXDX fahren, Frikadellen			
2321	14. November 2020	VRSXDX fahren, Rouladen			
2322	15. November 2020	MV Sex, VRSXDX fahren			
2323	16. November 2020	MV Sex			
2324	17. November 2020				
2325	18. November 2020	MV Sex			
2326	19. November 2020	MV Sex, APS Interview			
2327	20. November 2020				
2328	21. November 2020				
2329	22. November 2020	MV Sex			
2330	23. November 2020	Buero Umzug, GoPro Hero 7			
2331	24. November 2020	MV Sex			
2332	25. November 2020	MV Sex			
2333	26. November 2020				
2334	28. November 2020	MV Sex			
2335	29. November 2020				
2336	30. November 2020				
2337	1. Dezember 2020				
2338	1. Dezember 2020	MV Sex			
2339	2. Dezember 2020	MV Sex			
2340	3. Dezember 2020	MV Sex			
2341	4. Dezember 2020	AWS-Certified-Solutions-Architect-Associate			
2342	5. Dezember 2020	AWS-Certified-Solutions-Architect-Associate			
2343	6. Dezember 2020	AWS-Certified-Solutions-Architect-Associate			
2344	7. Dezember 2020	MV Sex, Microsoft Azure Virtual Training Day: Fundamentals			
2345	8. Dezember 2020	Microsoft Azure Virtual Training Day: Fundamentals			
2346	9. Dezember 2020	MV Sex			
2347	10. Dezember 2020	MV Sex			
2348	11. Dezember 2020	Lauch, Hackflesch Eintopf			
2349	12. Dezember 2020	Wirsing gekocht			
2350	13. Dezember 2020				
2351	14. Dezember 2020	MV Sex			
2352	15. Dezember 2020	MV Sex, Notebook geliefert			
2353	16. Dezember 2020				
2354	17. Dezember 2020	MV Sex			
2355	18. Dezember 2020	Heike angeschrieben			
2356	19. Dezember 2020	Azure VM, Control-MV920 auf Notebook, Heike chat			
2357	20. Dezember 2020	Heike Riemer See spazieren und am Abend, telefoniert			
2358	21. Dezember 2020	MV Sex, Heike telefoniert			
2359	22. Dezember 2020				
2360	23. Dezember 2020	MV Sex, Heike telefoniert			
2361	24. Dezember 2020	essen Forstner's, Heike telefoniert			
2362	25. Dezember 2020				
2363	26. Dezember 2020	Heike bei mir, spazieren, Zaertlichkeiten			
2364	27. Dezember 2020	Heike bei mir, spazieren, Essen gekocht, uebernachtet			
2365	28. Dezember 2020	DevOps Project: CI/CD with Jenkins Ansible Docker Kubernetes - install Jenkins			
2366	30. Dezember 2020	Agile Crash Course, MV Sex, Heike bei mir			
2367	31. Dezember 2020	Heike zu Hause gewesen und uebernachtet﻿			
2368					
2369	1. Januar 2021	Heike Sex, Fehringasee spazieren			
2370	2. Januar 2021	Heike bei mir uebernachtet			
2371	3. Januar 2021				
2372	4. Januar 2021	MV Sex			
2373	5. Januar 2021	MV Sex			
2374	6. Januar 2021	Kurs Understanding Jira, Madelene Baby bekommen, die kleine Lea			
2375	7. Januar 2021	MV Sex, VRSCDX laufen lassen			
2376	8. Januar 2021	MV Sex, Heike bei mir, spazieren, geilen Sex (mit Silde)			
2377	9. Januar 2021	Indorf spazieren, Bolognese gekocht, Udemy Kurs Terraform for AWS			
2378	10. Januar 2021	Udemy Kurs Terraform for AWS, Forstner Kaffee,  Heike zu mir gekommen			
2379	11. Januar 2021	Heike bei mir uebernachtet, geilen Sex			
2380	12. Januar 2021	Heike bei mir uebernachtet, geilen Sex	mit Heike trainiert		
2381	13. Januar 2021	Heike bei mir uebernachtet, geilen Sex			
2382	14. Januar 2021	MV Sex, Oliver Kredite			
2383	15. Januar 2021	Heike bei mir uebernachtet, geilen Sex			
2384	16. Januar 2021	Heike bei mir uebernachtet, geilen Sex	Kronthaler spazieren		
2385	17. Januar 2021	Heike bei mir uebernachtet, Sex	walken 20 Min, Uebungen		
2386	18. Januar 2021	MV Sex, Kurs Liquibase, Forstner essen, Spagetti Carbonara	walken 30 Min		
2387	19. Januar 2021	Securing Your AWS Cloud	walken 30 Min		
2388	20. Januar 2021	MV Sex, Kurs Liquibase	walken 30 Min, Uebungen		
2389	21. Januar 2021	MV Sex	walken 30 Min		
2390	22. Januar 2021	bei Heike gewesen, spazieren Riemer See, geilen Sex	walken 30 Min		
2391	23. Januar 2021				
2392	24. Januar 2021	Heike bei mir	walken 30 Min, Uebungen		
2393	25. Januar 2021	Heike geilen Sex			
2394	26. Januar 2021				
2395	27. Januar 2021	MV geilen Sex	walken 50 Min Grass Schleife		
2396	28. Januar 2021	MV Sex			
2397	29. Januar 2021	HL gefahren			
2398	30. Januar 2021	HL übernachtet, Englischer Garten spazieren	Uebungen		
2399	31. Januar 2021	HL übernachtet, Spitizingsee gefahren	Bergtour Untere Firstalm		
2400	1. Februar 2021	MV Sex, Allianz Interview			
2401	2. Februar 2021	MV geilen Sex	walken 30 Minuten, laufen 2 Minuten		
2402	3. Februar 2021	HL bei mir und geilen Sex	walken 30 Minuten		
2403	4. Februar 2021	MV Sex	Uebungen		
2404	5. Februar 2021	Auto waschen	walken 50 Min Grass Schleife, 2*2 Min laufen		
2405	6. Februar 2021	Heike bei mir, geilen Sex	walken 50 Min Grass Schleife, 2*2 Min laufen	 walken Grass Schleife mit Heike	
2406	7. Februar 2021	Heike geilen Sex	walken Grass Feldweg, 3 Min laufen, Uebungen		
2407	8. Februar 2021		walken 50 Min Grass Schleife		
2408	9. Februar 2021	MV Sex			
2409	10. Februar 2021	bei Heike gewesen, geilen Sex	walken Grass, 3 Min laufen		
2410	11. Februar 2021	MV geilen Sex, kochen			
2411	12. Februar 2021	MV Sex, kochen	walken Grass 30 Min		
2412	13. Februar 2021	FLSTI Fat Boy geliefert, Mexikanisch gekocht	spazieren		
2413	14. Februar 2021	Heike geilen Sex, Ebersberg Eggsee spazieren	spazieren		
2414	15. Februar 2021		Uebungen		
2415	16. Februar 2021	FLSTI Fat Boy gestartet	walken 50 Min Grass Schleife		
2416	17. Februar 2021	MV geilen Sex, zu Heike gefahren	walken Grass 30 Min		
2417	18. Februar 2021	mit Heike nach Fuessen gefahren, geilen Sex			
2418	19. Februar 2021	Zulassungsstelle			
2509	19. Mai 2021	MV Sex			
2419	20. Februar 2021	Pizza backen	walken 65 Min grosse Grass Runde		
2420	21. Februar 2021		walken Grass Schleife 4mal laufen, Uebungen		
2421	22. Februar 2021	MV Sex	walken Grass Schleife		
2422	23. Februar 2021		walken Grass Schleife, Uebungen		
2423	24. Februar 2021	FLSTI kurz gefahren, Ernst Papiere geholt, Heike gefahren, geilen Sex	spazieren um Riemer See		
2424	25. Februar 2021	MV geilen Sex			
2425	26. Februar 2021				
2426	27. Februar 2021	Fat Boy fahren, Heike bei mir, geilen Sex			
2427	28. Februar 2021	Heike geilen Sex	walken Pretzen 75 Min, Uebungen		
2428	1. März 2021	MV geilen Sex, Augenarzt, Fat Boy fahren ausgegangen			
2429	2. März 2021	Fat Boy fahren	walken Grass Schleife, 9 Min laufen		
2430	3. März 2021		walken Grass Schleife, 4 Min und 8 Min laufen		
2431	4. März 2021	MV geilen Sex, Heike gefahren, Sex			
2432	5. März 2021	Heike Sex, Fabi Geburtstag			
2433	6. März 2021	Heike gefahren, geilen Sex			
2434	7. März 2021	Neuhaus Bergtour Probstalm Dr.-Brodfueherweg	Begrtour		
2435	8. März 2021	MV geilen Sex	Uebungen		
2436	9. März 2021	Fat Boy fahren, Harleys aus Winterlager gebracht			
2437	10. März 2021				
2438	10. März 2021	MV geilen Sex, Fahrzeugbrief Fat Boy			
2439	11. März 2021	Heike bei mir,  geilen Sex			
2440	12. März 2021	Heike geilen Sex, Fat Boy fahren			
2441	13. März 2021	FLSTI und FXDL fahren	walken Grass Schleife, laufen 3-4-10 Min		
2442	14. März 2021	Heike gefahren, spazieren			
2443	15. März 2021	Heike Sex			
2444	16. März 2021	MV Sex, Zulassungstelle FLSTI umgemeldet und Kennzeichen montiert			
2445	17. März 2021	OTOBO Interview	walken Grass Schleife, laufen 6 Min, Uebungen		
2446	18. März 2021	MV Sex	walken Indorf, laufen 10 Min		
2447	19. März 2021		walken Grass Schleife, laufen 2x10 Min, Uebungen		
2448	20. März 2021		walken Richtung Prezen 75 Min		
2449	21. März 2021	Heike bei mir, Sex			
2450	22. März 2021	MV geilen Sex, Heike uebernachtet, Sex			
2451	23. März 2021	Interview ivv, Heike fahren			
2452	24. März 2021	Ikea fahren, McDonalds, FLSTI fahren			
2453	25. März 2021	MV Sex, FXDL fahren	laufen 30 Min, 3 Min gehen		
2454	26. März 2021	FLHTKL  fahren, FXDL mit Heike fahren, Heike Sex	laufen 30 Min, 3 Min gehen		
2455	27. März 2021	mit Heike laufen	laufen 30 Min , 2*3 Min gehen		
2456	28. März 2021	FLSTI und FXDL fahren			
2457	29. März 2021	MV geilen Sex, FLSTI und FXDL fahren	laufen 30 Min, 3 Min gehen		
2458	30. März 2021	OTOBO Leiblfing, FXDL fahren			
2459	31. März 2021	RAV Poetzinger,FLSTI fahren, Heike fahren, Picknick, Sex			
2460	1. April 2021	Heike Sex, MV Sex, FXDL fahren, Forstner in Taufkirchen			
2461	2. April 2021	FLSTI fahren	Uebungen		
2462	3. April 2021		laufen Grass Schleife 30 Min, ersten 10 Min walken		
2463	4. April 2021	Heike brunchen, FXDL fahren, Heike gefahren, geilen Sex			
2464	5. April 2021	mit Heike nach Bad Tölz gefahren			
2465	6. April 2021				
2466	7. April 2021				
2467	8. April 2021	Strandkorb geliefert			
2468	09. April 2021				
2469	9. April 2021	Vorstellung ivv Hannover			
2470	10. April 2021	FLSTI fahren, Strandkorb zusammengebaut, Heike fahren, geilen Sex			
2471	11. April 2021	MV Sex, FLHTKL fahren			
2472	12. April 2021				
2473	13. April 2021	Passbilder, Heike bei mir und geilen Sex			
2474	14. April 2021	Heike Sex	Uebungen		
2475	15. April 2021				
2476	16. April 2021	FLSTI fahren	laufen Grass Schleife 30 Min, ersten 10 Min walken, Uebungen		
2477	17. April 2021	mit Heike in Bad Toelz, zu mir gefahren und geilen Sex			
2478	18. April 2021				
2479	19. April 2021	MV in Markt Schwaben abgeholt,  bei mir übernachtet, geilen Sex			
2480	20. April 2021	MV Sex, nach Markt Schwaben gefahren, FLSTI fahren, Heike bei mir	laufen Grass Schleifen plus Pretzen		
2481	21. April 2021	Isen Sex, FXDL fahren, FLSTI fahren			
2482	22. April 2021	LKW Führerschein Verlägerung, FLHTKL fahren, schweissen probiert			
2483	23. April 2021	FLHTKL fahren, Metall Luthner, Heike fahren, Sex	Uebungen, Federball		
2484	24. April 2021	FLHTKL fahren, FLSTI fahren, schweissen			
2485	25. April 2021	FXDL fahren, FLHTKL mit Heike Schliersee gefahren			
2486	26. April 2021	Heike Sex, FLHTKL fahren, FLSTI fahren			
2487	27. April 2021	FXDL fahren,bei Cycle Factory VROD ABS defekt, Teile sind lackiert	laufen, Uebungen		
2488	28. April 2021	FLSTI fahren			
2489	29. April 2021	Heike fahren, geilen Sex			
2490	30. April 2021	Heike Sex, FXDL fahren			
2491	1. Mai 2021	FLHTKL fahren			
2492	2. Mai 2021	Putzen Heike bei mir, Sex auf dem Tisch	Übungen		
2493	3. Mai 2021	Heike Sex, FLTSFI fahren	Übungen		
2494	4. Mai 2021	MV geilen Sex, auf dem Tisch, Heike fahren	MTB Isar		
2495	5. Mai 2021	mit Heike Ikea und Louis			
2496	6. Mai 2021	Regale und Schrank zusammen bauen, Spiegel FLSTI			
2497	7. Mai 2021	MV geilen Sex, Heike bei mir, Sex			
2498	8. Mai 2021	FXDL fahren mit Heike am Chiemsee, Heike Sex			
2499	9. Mai 2021	FLSTI fahren	Übungen		
2500	10. Mai 2021	FLHTKL fahren, großer Arber			
2501	11. Mai 2021	FXDL fahren			
2502	12. Mai 2021	MV geilen Sex,  Chiropraktiker			
2503	13. Mai 2021	Heike Steinsee spazieren, bei mir, geilen Sex			
2504	14. Mai 2021	FXDL fahren mit Heike Aying Biergarten			
2505	15. Mai 2021	mit Heike Bad Tölz fahren, geilen Sex	Übungen		
2506	16. Mai 2021	FLSTI fahren, HD putzen , MTB Lenker			
2507	17. Mai 2021	Sex, Corona Impfung			
2508	18. Mai 2021	Zulassung FXDL Kennzeichen wechsel			
2510	20. Mai 2021	Chiropraktiker, Heike bei mir und geilen Sex	walken Grass Schleife		
2511	21. Mai 2021				
2512	22. Mai 2021	FLSTI und FXDL fahren, FXDL Kennzeichen verloren	Übungen		
2513	23. Mai 2021	Kennzeichen gefunden, FLHTKL fahren	Übungen		
2514	24. Mai 2021	FLSTI fahren, Heike gefahrfen und geilen Sex			
2515	25. Mai 2021	Heike Sex, Fuehrerschein abgeholt, Chiropraktiker			
2516	26. Mai 2021	MV geilen Sex, Heike fahren	walken Riemer See mit Heike		
2517	27. Mai 2021	Chiropraktiker, FLSTI fahren			
2518	28. Mai 2021	MV geilen Sex, FXDL fahren			
2519	29. Mai 2021	FXDL fahren mit Heike im Maxlrainer Biergarten			
2520	30. Mai 2021		MTB fahren Thenner See-Frauenberg Runde		
2521	31. Mai 2021	FLSTI fahren, Chiropraktiker			
2522	1. Juni 2021	FXDL fahren	Übungen		
2523	2. Juni 2021	FLSTI fahren, Chiropraktiker, Kawasaki Ninja 1000SX Probe fahren und gekauft, Heike fahren, Sex			
2524	3. Juni 2021	Heike Sex, mit Heike auf Gindelalm gegangen	Gindelalm		
2525	4. Juni 2021	MV geilen Sex, FXDL fahren			
2526	5. Juni 2021	FLSTI fahren			
2527	6. Juni 2021	Heike bei mir und geilen Sex			
2528	7. Juni 2021	MV geilen Sex, Backstüberlverein			
2529	8. Juni 2021	MV Sex, FLSTI fahren, Kawasaki zugelassen, FLHTKL fahren mit Heike in Strasslach - Muehle, Heike Sex	Übungen		
2530	9. Juni 2021	FLHTKl fahren, Heike Sex, FLSTI fahren, Chiropraktiker			
2531	10. Juni 2021	MV Sex, Kawasaki abgeholt, Eisdiele			
2532	11. Juni 2021	FLHTKl fahren, Satzi getroffen	MTB Egmating gefahren		
2533	12. Juni 2021	Kawasaki gefahren			
2534	13. Juni 2021	Kawasaki gefahren, FXDL fahren, Heike Sex und verbockt			
2535	14. Juni 2021	FXDL fahren, Heike am Steinsee essen			
2536	15. Juni 2021	Kawasaki gefahren, Schnitzelgaudi Markt Schwaben, FLSTI fahren, Chiropraktiker			
2537	16. Juni 2021				
2538	16. Juni 2021	MV Sex, FLSTI fahren, Heike gefahren, Sex			
2539	17. Juni 2021	Heike Flughafen gefahren, FLSTI fahren, Chiropraktiker, M-Sex,Kawasaki fahren			
2540	18. Juni 2021	MV Sex, Kawasaki fahren, FLSTI fahren			
2541	19. Juni 2021	FLSTI fahren, Indorf Sonnenwend			
2542	20. Juni 2021	FLHTKL fahren, US getroffen			
2543	21. Juni 2021	MV Sex, Kawasaki fahren	Übungen		
2544	22. Juni 2021	FLSTI fahren	MTB Oberdorfen		
2545	23. Juni 2021	MV Sex, Kawasaki fahren, Ninja 650 fahren			
2546	24. Juni 2021	amadeus Sachen abgeben, Büro geräumt,  Ninja 650 fahren, Kawasaki Inspektion geholt			
2547	25. Juni 2021	MV Sex			
2548	26. Juni 2021	Kawasaki fahren, Ducati Panigale V2 Probefahrt			
2549	27. Juni 2021	MV Sex, FLHTKL fahren			
2550	28. Juni 2021	Kawasaki fahren			
2551	29. Juni 2021	MV Sex, Motorrad putzen, FLHTKL fahren, Heike bei mir, Sex			
2552	30. Juni 2021	Heike Sex, mit Heike in FS			
2553	1. Juli 2021	MV Sex, Heike Maxrainer			
2554	2. Juli 2021	MV Sex und Anal bei mir, FLTFSI fahren, FXDL zu Heike fahren			
2555	3. Juli 2021	FXDL fahren, Griedel fahren, Essen Zum Herrmanns			
2556	4. Juli 2021	TS Gießen			
2557	5. Juli 2021	Hannover fahren, 1ster Tag ivv Büro			
2558	6. Juli 2021	Paulaner Biergarten, Bahnkarte			
2559	7. Juli 2021	Paulaner Biergarten			
2560	8. Juli 2021	Hannover nach Erding gefahren			
2561	9. Juli 2021	iphone 12			
2562	10. Juli 2021	Kawasaki fahren, Heike FXDL STA fahren, Sex			
2563	11. Juli 2021	Heike Sex, FXDL Heim fahren Regen, Heike bei mir, Sex			
2564	12. Juli 2021	Zug Hörlkofen-München-Hannover, Ducati Panigale V2 bestellt			
2565	13. Juli 2021				
2566	14. Juli 2021	SVA und Rewe Gespräch			
2567	15. Juli 2021	Ducati Jacken, Zug Hannover-München-Hörlkofen			
2568	16. Juli 2021	FLSTI fahren	Bankstütz		
2569	17. Juli 2021	FLSTI fahren, Heike bei mir, Dionysos essen, Sex	Übungen		
2570	18. Juli 2021	Kawassaki fahren, FLSTI fahren			
2571	19. Juli 2021	Pötzinger Auto zum Scheiben tausch, BMC Interview, FLSTI fahren			
2572	20. Juli 2021	Sex, mit Heike FXDL zur Finsinger Alm fahren, geilen Sex			
2573	21. Juli 2021	MV Sex, FLSTI fahren			
2574	22. Juli 2021	FLSTI fahren, mt Heike am Steinsee und Italiener in Oberpframmern			
2575	23. Juli 2021	FLHTKL fahren			
2576	24. Juli 2021	Kawasaki fahren, Ducati Jacken, FLSTI fahren, mit Forstners im Biergarten in Taufkirchen			
2577	25. Juli 2021	FXDL fahren, Heike Sex			
2578	26. Juli 2021	Zug Hörlkofen nach Hannover			
2579	27. Juli 2021	TS Ben			
2580	28. Juli 2021				
2581	29. Juli 2021	Privaten Laptop Control-M installiert, API und Rest-API funktioniert, TS Ben			
2582	30. Juli 2021	API auf meinem Laptop, Hamburg gefahren			
2583	31. Juli 2021	mit Heike in Hamburg			
2584	1. August 2021	mit Heike in Hamburg. Hannover gefahren			
2585	2. August 2021	mit Heike am Maschsee, essen, geilen Sex			
2586	3. August 2021	Macbook bestellt, Ubuntu VM, Heike am Maschsee, essen			
2587	4. August 2021	Sunny			
2588	5. August 2021	Zug Hannover nach Hörlkofen			
2589	6. August 2021	MV geilen Sex, waschen, FLSTI fahren			
2590	7. August 2021	Kawasaki fahren, Fielmann RayBan abgegeben.FLHTKL mit Heike Schliersee gefahren und im Regen zurück	Übungen		
2591	8. August 2021	FLSTI fahren, FLHTKL und FXDL putzen, Heike Sex, übernachtet	Übungen		
2592	9. August 2021	MV geilen Sex, Kawasaki fahren			
2593	10. August 2021	Kids bei mir, Impfen, Heike und Familie Mexikanisch essen			
2594	11. August 2021	MV Sex, Kawasaki fahren			
2595	12. August 2021	Kids bei mir, Spaghetti kochen, FLSTI fahren			
2596	13. August 2021	MV Sex, MFT auf Laptop installiert, TS Lenah, Heike bei mir	Übungen		
2597	15. August 2021	VRSCDX fahren, mit Heike FXDL fahren zum Moosinniger Weiher, Sex			
2598	16. August 2021				
2599	17. August 2021	MV Sex, VRSCDX fahren	Übungen		
2600	18. August 2021	MV geilen Sex, VRSCDX fahren	Übungen		
2601	19. August 2021	Kawasaki fahren	Übungen		
2602	20. August 2021	Ducati bezahlt und abgeholt, Fitnessstudio, bei Heike, Sauna	seitliche Übungen, 45Min Stepper		
2603	21. August 2021	Ducati ausgeladen, TS Angelina, VRSCDX fahren, FLSTI fahren			
2604	22. August 2021	Kawasaki fahren, Heike Sex (Tisch), mit Heike im Kino Kaiserschmarrndrama			
2605	23. August 2021	MV geilen Sex mit Strapon, QR Code scannen, Forstner grillen			
2606	24. August 2021	MV geilen Sex mit Strapon, FXDL fahren	seitliche Übungen		
2607	25. August 2021	Kawasaki fahren	seitliche Übungen		
2608	26. August 2021	Ducati zulassen,  Kennzeichenwechsel FLHTKL,VRSCDX wechseln, Ducati fahren			
2609	27. August 2021	MV geilen Sex mit Strapon, Sauna	Übungen, Laufband 65Min		
2610	28. August 2021	Therme Bad Aibling, gefahren Heike geblieben			
2611	29. August 2021				
2612	30. August 2021				
2613	31. August 2021	Ducati fahren			
2614	1. September 2021	MV geilen Sex, Heike beendet, Ducati fahren			
2615	2. September 2021	FXDL fahren, TÜV Gutachten VRSCDX geholt	seitliche Übungen, Stütz		
2616	3. September 2021	MV Sex, FLSTI fahren, Zulassungsstelle VRSCDX Eintragungen, Ducati fahren			
2617	4. September 2021	VRSCDX fahren, Ducati fahren	seitliche Übungen, Stütz		
2618	5. September 2021	MV Sex, Ducati fahren, FLSTI fahren	seitliche Übungen, Stütz		
2619	6. September 2021	VRSCDX fahren			
2620	7. September 2021	MV geilen Sex mit Strapon, Kawasaki fahren, Kawasaki umgefallen	seitliche Übungen, Stütz		
2621	8. September 2021	Ducati fahren, Grünbacher Biergarten	seitliche Übungen, Stütz		
2622	9. September 2021	MV Sex, Kawasaki fahren, Pizza essen Liberty	seitliche Übungen, Stütz		
2623	10. September 2021	MV Sex, Ducati fahren durchs Leitzachtal	seitliche Übungen, Stütz		
2624	11. September 2021	FLSTI fahren			
2625	12. September 2021	Kawasaki fahren, VRSCDX fahren			
2626	13. September 2021	Hannover fahren			
2627	14. September 2021	Zimmer anschauen			
2628	15. September 2021	Zimmer zugesagt, München gefahren			
2629	16. September 2021				
2630	17. September 2021	Ducati fahren	seitliche Übungen, Stütz		
2631	18. September 2021	FLHTKL über Passau und Deggendorf fahren, VRSCDX fahren			
2632	19. September 2021	VRSCDX fahren, FXDL fahren, Forstner beim essen, Kawasaki Kette ölen	seitliche Übungen, Stütz		
2633	20. September 2021	FXDL fahren	seitliche Übungen, Stütz		
2634	21. September 2021	FLSTI fahren	seitliche Übungen, Stütz		
2635	22. September 2021	FLSTI fahren	seitliche Übungen, Stütz		
2636	23. September 2021	Ducati fahren, Hinterradbremse klemmt und tropft	seitliche Übungen, Stütz		
2637	24. September 2021	Ducati fahren	seitliche Übungen, Stütz		
2638	25. September 2021	Kawasaki fahren, Arber, Passau			
2639	26. September 2021	VRSCDX fahren	seitliche Übungen, Stütz		
2640	27. September 2021	4Soft telefonat wg DevOps Job, Ducati fahren	seitliche Übungen, Stütz		
2641	28. September 2021	VRSCDX fahren, HD Eck	seitliche Übungen, Stütz		
2642	29. September 2021	FXDL fahren			
2643	30. September 2021	Ducati fahren	seitliche Übungen, Stütz		
2644	1. Oktober 2021	FXDL fahren	seitliche Übungen, Stütz		
2645	2. Oktober 2021	FLHTKL fahren, Passau, Arber	seitliche Übungen, Stütz, 60 situps		
2646	3. Oktober 2021	FLHTKL fahren	seitliche Übungen, Stütz, 80 situps		
2647	4. Oktober 2021	Hannover fahren, z/OS Kurs, Zimmer Hannover			
2648	5. Oktober 2021	z/OS Kurs			
2649	6. Oktober 2021	z/OS Kurs, Blumenstrauß für Petra			
2650	7. Oktober 2021	z/OS Kurs			
2651	8. Oktober 2021	Erding fahren			
2652	9. Oktober 2021	VRSCDX fahren	seitliche Übungen, Stütz, 80 situps		
2653	10. Oktober 2021	FLSTI fahren	seitliche Übungen, Stütz, 80 situps		
2654	11. Oktober 2021	MV Sex, Kawasaki fahren	seitliche Übungen, Stütz, 80 situps		
2655	12. Oktober 2021	MV Sex	seitliche Übungen, Stütz, 80 situps		
2656	13. Oktober 2021	Hannover fahren	seitliche Übungen, Stütz, 80 situps		
2657	14. Oktober 2021				
2658	15. Oktober 2021	Erding fahren			
2659	16. Oktober 2021	Kawasaki fahren	seitliche Übungen, Stütz, 80 situps		
2660	17. Oktober 2021	MV Sex, FLSTI fahren, Leonie Geburtstag	seitliche Übungen, Stütz, 80 situps		
2661	18. Oktober 2021	RAV Winterreifen, CB telefoniert	situps		
2662	19. Oktober 2021		seitliche Übungen, Stütz, situps		
2663	20. Oktober 2021	MV geilen Sex, VRSCDX, Ducati und Kawasaki fahren	situps		
2664	21. Oktober 2021	Pötzinger RAV4 Plugin Hybrid			
2665	22. Oktober 2021	MV geilen Sex, RAV4 Plugin Hybrid gekauft, Forster da zum Essen	situps		
2666	23. Oktober 2021	FLSTI und FXDL fahren	seitliche Übungen, Stütz, situps		
2667	24. Oktober 2021	VRSCDX fahren			
2668	25. Oktober 2021	Hannover fahren			
2669	26. Oktober 2021				
2670	27. Oktober 2021				
2671	28. Oktober 2021	Erding fahren			
2672	29. Oktober 2021	Naomi angeschrieben im Afro Portal	seitliche Übungen, Stütz, situps		
2673	30. Oktober 2021	Buggy entsorgt, FLSTI fahren, Naomi treffen und Italienisch essen			
2674	31. Oktober 2021	FLSTI fahren,bei Naomi gewesen, essen und zum Steinsee gefahren, geküsst	seitliche Übungen, Stütz, situps		
2675	1. November 2021				
2676	2. November 2021	MV geilen Sex, Toyota Hybrid zugelassen	situps		
2677	3. November 2021	Theresa telefoniert	seitliche Übungen, Stütz, situps		
2678	4. November 2021	MV geilen Sex, Theresa telefoniert			
2679	5. November 2021	Had-Eck fahren			
2680	6. November 2021	 Theresa telefoniert	situps		
2681	7. November 2021				
2682	8. November 2021	Had-Eck VRSCDX und FLSTI gebracht, Theresa telefoniert	seitliche Übungen, Stütz, situps		
2683	9. November 2021	Lindiwe, Theresa telefoniert	situps		
2684	10. November 2021	Hannover fahren			
2685	11. November 2021				
2686	12. November 2021	Lindiwe Video telefoniert, Erding fahren			
2687	13. November 2021	Jolan VC, Lindiwe VC	situps		
2688	14. November 2021		seitliche Übungen, Stütz, situps		
2689	15. November 2021	Dorine VC, Toyota RAV4 Hybrid Übergabe, Theresa beendet			
2690	16. November 2021	Dorine VC, MV geilen Sex, Mautaapi VC			
2691	17. November 2021		situps		
2692	18. November 2021	Mautaapi VC, MV Sex, Dorine VC	situps		
2693	19. November 2021	Roseline in München getroffen,Mautaapi VC			
2694	20. November 2021	Mautaapi VC	 Roseline VC		
2695	21. November 2021	Roseline VC, Butzbach nach Hörlkofen gefahren			
2696	22. November 2021	MV Sex, Mautaapi VC 			
2697	23. November 2021	Mautaapi VC, Roseline VC, Roseline in München getroffen, Küssen mit Roseline	seitliche Übungen, Stütz, situps		
2698	24. November 2021	Mautaapi VC, Roseline VC			
2699	25. November 2021	MV Sex, Mautaapi VC, Roseline VC	seitliche Übungen, Stütz, situps		
2700	26. November 2021	MacBook Air upgrade, Roseline in FFB geholt, geilen Sex, bei mir übernachtet			
2701	27. November 2021	Roseline geilen Sex, bei mir übernachtet, Mautaapi VC, Roseline Kronthaler Weiher			
2702	28. November 2021	Roseline geilen Sex, bei mir übernachtet, Mautaapi VC, Roseline in Erding spazieren			
2703	29. November 2021	Roseline geilen Sex, Mautaapi VC, Roseline FFB gefahren			
2704	30. November 2021	Mautaapi VC, MV Geilen Sex, Roseline VC	situps		
2705	1. Dezember 2021	HD Winterlager, Mautaapi VC, Roseline VC			
2706	2. Dezember 2021	MV geilen Sex, Roseline VC	seitliche Übungen, Stütz, situps		
2707	3. Dezember 2021	Mautaapi VC, Roseline VC, Roseline in FFB geholt, Roseline Sex	seitliche Übungen, Stütz, situps		
2708	4. Dezember 2021	Roseline Sex, Mautaapi VC, Roseline Arika Shop München			
2709	5. Dezember 2021	Roseline Sex, mit Roseline an Spitzingsee und Schliersee gefahren			
2710	6. Dezember 2021	Roseline Sex, Roseline FFB gefahren	seitliche Übungen, Stütz, situps		
2711	7. Dezember 2021	MV geilen Sex, Mautaapi VC, Roseline VC, Limberg SMS - doofe Kuh			
2712	8. Dezember 2021	Mautaapi VC, Roseline VC	seitliche Übungen, Stütz, situps		
2713	9. Dezember 2021	MV geilen Sex, Roseline Sex	seitliche Übungen, Stütz, situps		
2714	10. Dezember 2021	Roseline Sex			
2715	11. Dezember 2021	Roseline Sex			
2716	12. Dezember 2021	Roseline Sex, mit Roseline in Seebruck und Reith im Winkel	Bankstütz		
2717	13. Dezember 2021	Roseline Sex, geiler Blowjob	seitliche Übungen, Stütz, situps		
2718	14. Dezember 2021	MV geilen Sex, Mautaapi VC, Roseline  VC			
2719	15. Dezember 2021	Roseline  VC, 	seitliche Übungen, Stütz, situps		
2720	16. Dezember 2021	Mautaapi VC, Roseline  VC, Roseline FFB abgeholt, Roseline Sex	seitliche Übungen, Stütz, situps		
2721	17. Dezember 2021	Roseline Sex			
2722	18. Dezember 2021	Roseline Sex, Roaline LA gefahren, Mautaapi beendet			
2723	19. Dezember 2021	Roseline Sex, mit Finger Anal, hat ihr gefallen, Roseline Sudelfeld gefahren			
2724	20. Dezember 2021	Roseline Anal Sex, Roseline FFB gefahren	seitliche Übungen, Stütz		
2725	21. Dezember 2021		seitliche Übungen, Stütz, situps		
2726	22. Dezember 2021	Roseline FFB abgeholt, Roseline Sex	seitliche Übungen, Stütz, situps		
2727	23. Dezember 2021	Roseline Sex, Erding Köln fahren			
2728	24. Dezember 2021	Roseline Sex			
2729	25. Dezember 2021	Roseline Sex, Köln  Dom			
2730	26. Dezember 2021	Roseline Anal Sex sie fand es geil mit Spiegel, Museum Köln			
2731	27. Dezember 2021	Köln Erding fahren			
2732	28. Dezember 2021	Roseline Sex und Anal Sex	seitliche Übungen, Stütz, situps		
2733	29. Dezember 2021	Roseline FFB nach Pasing, muß nach Aschaffenburg, Forstner essen			
2734	30. Dezember 2021	Roseline gekommen, Roseline Sex			
2735	31. Dezember 2021	Roseline Sex, mit Roseline Sylvenstein und Walchensee			
2736	1. Januar 2022	Roseline Sex			
2737	2. Januar 2022	Roseline Sex, Roseline Anal Sex	seitliche Übungen, Stütz, situps		
2738	3. Januar 2022	Roseline Sex, Roseline Finger Anal Sex			
2739	4. Januar 2020	Roseline Finger Anal Sex, Roseline Sex	seitliche Übungen, Stütz, situps		
2740	5. Januar 2020	Roseline Sex und Finger Anal Sex, Ducati gestartet			
2741	6. Januar 2020	Roseline Sex und Finger Anal Sex, Roseline Sex	seitliche Übungen, Stütz, situps		
2742	7. Januar 2022	Roseline Sex			
2743	8. Januar 2022	Roseline Sex, Roseline Sex und Finger Anal Sex, Impfen	seitliche Übungen, Stütz, situps		
2744	9. Januar 2022	Roseline Sex, Roseline Schliersee			
2745	10. Januar 2022	Roseline Anal Sex, Roseline Bahnhof Hörlkofen gefahren			
2746	11. Januar 2022		seitliche Übungen, Stütz, situps		
2747	12. Januar 2022	MV beendet, HaD-Eck wegen Highnecker	Stütz		
2748	13. Januar 2022		seitliche Übungen, Stütz, situps		
2749	14. Januar 2022	Roseline Bahnhof Hörlkofen geholt, Roseline Sex			
2750	15. Januar 2022	Roseline Sex, München Afro Shop, Rouladen gekocht	seitliche Übungen, Stütz, situps		
2751	16. Januar 2022	Roseline Sex, Moosburg spazieren an der Isar	seitliche Übungen, Stütz, situps		
2752	17. Januar 2022	Roseline Sex und Finger Anal Sex, Roseline Anal Sex, Autowäsche, Hühnchen kochen			
2753	18. Januar 2022	Roseline Sex und Finger Anal Sex	seitliche Übungen, Stütz, situps		
2754	19. Januar 2022	Roselone Anal Sex, Roseline nach Tutzing			
2755	20. Januar 2022	Roseline Sex	seitliche Übungen, Stütz, situps		
2756	21. Januar 2022	Roseline Sex, Roseline Sex			
2757	22. Januar 2022		seitliche Übungen, Stütz, situps		
2758	23. Januar 2022	Roseline Sex			
2759	24. Januar 2022	Roseline Sex, Ducati mobile inseriert, Roseline Hörlkofen gefahren			
2760	25. Januar 2022		Stütz		
2761	26. Januar 2022		seitliche Übungen, Stütz, situps		
2762	27. Januar 2022	Roseline Hörlkofen geholt, Roseline Sex, Roseline Sex	seitliche Übungen, Stütz, situps		
2763	28. Januar 2022	Roseline Sex, Roseline Sex			
2764	29. Januar 2022	Roseline Sex, Roseline Anal Sex, mit Roseline am Schliersee, Roselien Anal Sex	Stütz, situps		
2765	30. Januar 2022	Roseline Sex, Roseline Sex, Dorfen gefahren			
2766	31. Januar 2022	Dr. Bloch Termin			
2767	1. Februar 2022	Roseline Sex			
2768	2. Februar 2022	Roseline Sex, Roseline blowjob bis zu Schluß	 Roseline Sex	seitliche Übungen, Stütz, situps	
2769	3. Februar 2022	Roseline Anal Sex im Keller	Stütz		
2770	4. Februar 2022	Roseline Sex			
2771	5. Februar 2022	Mit Roseline München Afro Shop, Milchhäusl	seitliche Übungen, Stütz, situps		
2772	6. Februar 2022	Roseline Sex, Roseline Porno geschaut, Roseline Sex mit lecken			
2773	7. Februar 2022	Roseline Sex, Manu Erding getroffen, Roseline Hörlkofen			
2774	8. Februar 2022		seitliche Übungen, Stütz, situps		
2775	9. Februar 2022		Stütz, situps		
2776	10. Februar 2022	Roselien Hörlkofen geholt, Roseline Sex			
2777	11. Februar 2022	Roseline Sex	seitliche Übungen, Stütz, situps		
2778	12. Februar 2022	Roseline Sex, Roseline Sex, House of Flames wg Ducati - FatBob			
2779	13. Februar 2022	Roseline Sex			
2780	14. Februar 2022	Roseline Sex, Roseline Anal Sex	seitliche Übungen, Stütz, situps		
2781	15. Februar 2022				
2782	16. Februar 2022	Roseline Sex	Stütz, situps		
2783	17. Februar 2022	Nusskuchen gebacken			
2784	18. Februar 2022	Roseline Anal Sex			
2785	19. Februar 2022	Roseline Sex, Aquapark, Vilsbiburg	seitliche Übungen, Stütz, situps		
2786	20. Februar 2022	Roseline Sex			
2787	21. Februar 2022	Roseline Sex			
2788	22. Februar 2022	Roseline Sex, Roseline Hörlkofen			
2789	23. Februar 2022		seitliche Übungen, Stütz, situps		
2790	24. Februar 2022	Roseline Hörlkofen			
2791	25. Februar 2022	Roseline Sex	seitliche Übungen, Stütz, situps		
2792	26. Februar 2022	Roseline Sex, Roseline München Afroshop und Riem Arcaden, Roseline Sex			
2793	27. Februar 2022	Roseline Sex, Roseline Oral Sex			
2794	28. Februar 2022	Roseline Sex	seitliche Übungen, Stütz, situps		
2795	1. März 2022	Roseline Sex, Kawasaki fahren			
2796	2. März 2022	Roseline Sex	seitliche Übungen, Stütz, situps		
2797	3. März 2022				
2798	4. März 2022	Roseline blowjob bis zum Schluss, Kawasaki fahren	Stütz, situps		
2799	5. März 2022	Indorf spazieren			
2800	6. März 2022	Forstner Fabi Geburstag, Chiemsee - Prien	Stütz, situps		
2801	7. März 2022	Roseline Sex, München fahren			
2802	8. März 2022	Ducati Inspektion Schwabmünchen, Ammersee	seitliche Übungen, Stütz, situps		
2803	9. März 2022	Kawasaki fahren	Stütz, situps		
2804	10. März 2022	AB fahren, Roseline Sex			
2805	11. März 2022	Roseline Sex, Erding fahren			
2806	12. März 2022	Roseline Sex, Kawasaki fahren, Roseline Sex	Stütz, situps		
2807	13. März 2022	Kawasaki Starnberg fahren			
2808	14. März 2022	Roseline Sex	seitliche Übungen, Stütz, situps		
2809	15. März 2022	AB fahren			
2810	16. März 2022	TS Camilla Latina, Kawasaki fahren			
2811	17. März 2022	FXDL fahren	seitliche Übungen, Stütz, situps		
2812	18. März 2022	Köln fahren			
2813	19. März 2022				
2814	20. März 2022	Köln nach Erding fahren			
2815	21. März 2022				
2816	22. März 2022	FXDL fahren			
2817	23. März 2022	FLHTKL fahren			
2818	24. März 2022	FLHTKL fahren und Roseline in Hörlkofen geholt			
2819	25. März 2022	FLHTKL fahren mit Roseline nach Vilsbiburg			
2820	26. März 2022	FLHTKL fahren mit Roseline nach Schliersee			
2821	27. März 2022	FLHTKL fahren, Roseline nach Markt Schwaben, Kawasaki fahren			
2822	28. März 2022	Köln fahren und RAV geholt			
2823	29. März 2022	Roseline Sex	Stütz,situps		
2824	30. März 2022	Roseline Sex, Ducati holen, Roseline Termin Anwalt Tutzing			
2825	31. März 2022				
2826	1. April 2022	Roseline Sex	seitliche Übungen, Stütz, situps		
2827	2. April 2022	Roseline Sex, Roseline Sex			
2828	3. April 2022	Roseline Sex	Stütz, situps		
2829	4. April 2022				
2830	5. April 2022	nach Hannover gefahren	seitliche Übungen, Stütz, situps		
2831	6. April 2022				
2832	7. April 2022	von Hannover nach Hause gefahren, Roseline in Würzburg zugestiegen			
2833	8. April 2022	Roseline Sex,Finger Anal	Stütz,situps		
2834	9. April 2022	Roseline Sex,Finger Anal			
2835	10. April 2022	Roseline Sex	seitliche Übungen, Stütz, situps		
2836	11. April 2022				
2837	12. April 2022	V-ROD und FLSTI in VIB geholt	seitliche Übungen, Stütz, situps		
2838	13. April 2022	Roseline Sex, VRSCDX fahren			
2839	14. April 2022	Roseline Sex, VRSCDX mit Roseline fahren	seitliche Übungen, Stütz, situps		
2840	15. April 2022	Roseline Sex	seitliche Übungen, Stütz, situps		
2841	16. April 2022		seitliche Übungen, Stütz, situps		
2842	17. April 2022	Roseline in Kirche in Taufkirchen, Roseline Blowjob bis zum Schluss, Dostojeski			
2843	18. April 2022	FLHTKL fahren, Biergarten Grünbach	seitliche Übungen, Stütz, situps		
2844	19. April 2022	Roseline Anal Sex, RAV Inspektion			
2845	20. April 2022	FLTSFI fahren	seitliche Übungen, Stütz, situps		
2846	21. April 2022	Roseline Sex, Zulassungstelle eintragen, Roseline Sex und Anal Sex,FLHTKL fahren, Roseline Sex			
2847	22. April 2022	Roseline Sex, Finger Anal, VRSCDX fahren			
2848	23. April 2022	Roseline Sex	seitliche Übungen, Stütz, situps		
2849	24. April 2022	Roseline Sex, Vineyard Kirche			
2850	25. April 2022	Roseline Sex	seitliche Übungen, Stütz, situps		
2851	26. April 2022	Roseline Sex, Finger Anal			
2852	27. April 2022		seitliche Übungen, Stütz, situps		
2853	28. April 2022	FLTSFI fahren, BMC Marcel,Peter, Andy essen in München			
2854	29. April 2022				
2855	30. April 2022		seitliche Übungen, Stütz, situps		
2856	1. Mai 2022		seitliche Übungen, Stütz, situps		
2857	2. Mai 2022	FLTSFI fahren	seitliche Übungen, Stütz, situps		
2858	3. Mai 2022	Hannover fahren			
2859	4. Mai 2022				
2860	5. Mai 2022	Erding fahren			
2861	6. Mai 2022	Roseline Sex, Finger Anal			
2862	7. Mai 2022	Roseline Anal Sex	Stütz, seitliche Übungen, situps		
2863	9. Mai 2022	FLHTKL fahren	Stütz, seitliche Übungen, situps	 Schildkröte	Chaser – Die Jagd beginnt (Ein Jack-Daniels-Thriller 13)
2864	11. Mai 2022	Ducati fahren, FXDL fahren, Roseline AB	Stütz, seitliche Übungen, situps	 Schildkröte	
2865	13. Mai 2022	Roseline Sex, Finger Anal	Stütz, seitliche Übungen, situps	 Schildkröte	Chaser – Die Jagd beginnt (Ein Jack-Daniels-Thriller 13)
2866	15. Mai 2022	FLHTKL fahren, Innsbruck	Stütz, seitliche Übungen, situps	 Schildkröte	Chaser – Die Jagd beginnt (Ein Jack-Daniels-Thriller 13)
2867	16. Mai 2022				
2868	17. Mai 2022	Roseline Sex, VRSCDX fahren	Stütz, seitliche Übungen, situps	 Schildkröte	
2869	19. Mai 2022	FLSTFI fahren	Stütz, seitliche Übungen, situps	 Schildkröte	
2870	21. Mai 2022	Roseline Sex, S-Bahn München, VRSCDX fahren	Stütz, seitliche Übungen, situps	 Schildkröte	
2871	22. Mai 2022	FLHTKL fahren	situps		
2872	23. Mai 2022	Roseline Sex	Stütz, seitliche Übungen, Schildkröte, min. Situps		
2873	27. Mai 2022	Roseline Sex, Finger Anal, Wurzer Müll	Stütz		
2874	28. Mai 2022	Roseline blowjob bis zum Schluss, FLHTKL fahren STA	Stütz, seitliche Übungen, Schildkröte, situps		
2875	29. Mai 2022	Roseline Sex, Leonie Kommunion			
2876	30. Mai 2022	Kawasaki fahren	Stütz, seitliche Übungen, Schildkröte, situps		
2877	1. Juni 2022	Forstner Spagetti essen			
2878	4. Juni 2022	FLHTKL fahren	Stütz, seitliche Übungen, Schildkröte, situps		
2879	7. Juni 2022				
2880	8. Juni 2022	Roseline Sex, Finger Anal, FLHTKL Arber	Stütz, seitliche Übungen, Schildkröte, situps		
2881	9. Juni 2022	Roseline Sex, Finger Anal, FLHTKL putzen			
2882	10. Juni 2022	VRSCDX fahren	situps		
2883	11. Juni 2022	FLHTKL Schlierss, Maxlrainer	Stütz, seitliche Übungen, Schildkröte		
2884	12. Juni 2022	Roseline Sex, Finger Anal, FLHTKL fahren Bad Ischl	situps		
2885	13. Juni 2022	FLSTFI fahren	Stütz		
2886	14. Juni 2022	FLSTFI fahren	situps		
2887	15. Juni 2022		Stütz		
2888	16. Juni 2022	Roseline Sex, VRSCDX fahren	Stütz, seitliche Übungen, Schildkröte		
2889	17. Juni 2022	Zug München fahren			
2890	18. Juni 2022	FLHTKL fahren Memmingen, Füssen	Stütz, seitliche Übungen, Schildkröte		
2891	19. Juni 2022	Roseline Sex, Finger Anal		Scharfschuss: Thriller (Die Harry-Bosch-Serie 17)	
2892	20. Juni 2022		Stütz, seitliche Übungen, Schildkröte	Scharfschuss: Thriller (Die Harry-Bosch-Serie 17)	
2893	24. Juni 2022	Roseline Sex, FLSTFI fahren	Stütz, seitliche Übungen, Schildkröte - Nur einen Durchgang	Scharfschuss: Thriller (Die Harry-Bosch-Serie 17)	
2894	25. Juni 2022	FLHTKL fahren Kufstein	Stütz, seitliche Übungen, Schildkröte, situps	Scharfschuss: Thriller (Die Harry-Bosch-Serie 17)	
2895	26. Juni 2022	Roseline Sex, FLHTKL fahren STA, Schweiger Biergarten		Scharfschuss: Thriller (Die Harry-Bosch-Serie 17)	
2896	27. Juni 2022	VRSCDX fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Scharfschuss: Thriller (Die Harry-Bosch-Serie 17)	
2897	28. Juni 2022	Kawasaki fahren		Scharfschuss: Thriller (Die Harry-Bosch-Serie 17)	
2898	30. Juni 2022	Kawasaki fahren		Funkenmord	
2899	1. Juli 2022	Roseline Sex		Funkenmord	
2900	2. Juli 2022	FLHTKL fahren, Chiemsee	Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Funkenmord	
2901	3. Juli 2022	VRSCDX fahren, Schweiger Biergarten	situps	Funkenmord	
2902	4. Juli 2022	Roseline Sex, Interview NTT DATA		Funkenmord	
2903	5. Juli 2022		Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Funkenmord	
2904	6. Juli 2022	FXDL fahren		Funkenmord	
2905	7. Juli 2022		Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Funkenmord	
2906	8. Juli 2022	FLHTKL fahren Mühldorf		Funkenmord	
2907	9. Juli 2022	Kawasaki fahren Wasserburg	Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Funkenmord	
2908	10. Juli 2022	VRSCDX fahren, Waldkraiburg		Funkenmord, Ausgerechnet Sylt	
2909	11. Juli 2022	Roseline Sex		Ausgerechnet Sylt	
2910	12. Juli 2022	FLSTFI fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Ausgerechnet Sylt	
2911	13. Juli 2022	Roseline Sex, Ducati fahren, FLSTFI fahren		Ausgerechnet Sylt	
2912	14. Juli 2022	FLSTFI fahren	MINIMUM: Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Eiskaltes Sylt	
2913	15. Juli 2022	Roseline Sex, Auto Waschstraße, FLSTFI fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Eiskaltes Sylt	
2914	16. Juli 2022	FLHTKL fahren, Passau. Großer Arber		Eiskaltes Sylt	
2915	17. Juli 2022		MINIMUM: Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Eiskaltes Sylt	
2916	18. Juli 2022	MV SMS, VRSCDX fahren		Eiskaltes Sylt, Vertraute Gefahr	
2917	19. Juli 2022	VRSCDX fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Vertraute Gefahr	
2918	20. Juli 2022	FLSTFI fahren		Vertraute Gefahr	
2919	21. Juli 2022	FLSTFI fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps PLUS	Vertraute Gefahr	
2920	22. Juli 2022	VRSCDX fahren, Bräustüberl Markt Schwaben		Vertraute Gefahr	
2921	23. Juli 2022	FLHTKL Gambach fahren		Vertraute Gefahr	
2922	24. Juli 2022	FLHTKL fahren, mit Birgit, Hoherodskopf			
2923	25. Juli 2022	FLHTKL fahren, Hoherodskopf		Vertraute Gefahr	
2924	26. Juli 2022	FLHTKL fahren, Wetzlar, Gießen, Lich		Vertraute Gefahr	
2925	27. Juli 2022	FLHTKL Erding fahren			
2926	28. Juli 2022	VRSCDX fahren	MINIMUM: Stütz, seitliche Übungen, Schildkröte	Ehrensache	
2927	29. Juli 2022	Erdiing-Berlin fahren		Ehrensache	
2928	30. Juli 2022	Roseline Sex, Berlin Bus Tour		Ehrensache	
2929	31. Juli 2022	Berlin Bootstour		Ehrensache	
2930	1. August 2022	Berlin - Erding fahren		Ehrensache	
2931	2. August 2022	Roseline Sex, FLHTKL putzen		Die Verlorene	
2932	3. August 2022		Stütz, seitliche Übungen, Schildkröte, Rücken situps	Die Verlorene	
2933	4. August 2022	FLHTKL fahren, Bärenwirt Fusch		Die Verlorene	
2934	5. August 2022	Roseline Sex, FLHTKL fahren Grossglockner Hochalpenstraße		Die Tote im Käfig	
2935	6. August 2022	Stoiber Ranoldsberg	Stütz	Die Tote im Käfig	
2936	7. August 2022	FLSTFI fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps	Die Tote im Käfig	
2937	8. August 2022			Die Tote im Käfig	
2938	9. August 2022	FLSTFI fahren		Die Tote im Käfig	
2939	10. August 2022	HD Fat Boy gekauft und Ducati verkauft, FLSTFI fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps	Die Tote im Käfig	
2940	11. August 2022				
2941	12. August 2022	Ducati in Augsburg abgegeben			
2942	13. August 2022	Roseline Sex, VRSCDX fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps		
2943	14. August 2022			Der Cleaner	
2944	15. August 2022	VRSCDX fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps	Der Cleaner	
2945	16. August 2022	VRSCDX fahren		Der Cleaner	
2946	17. August 2022	FLSTFI fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps	Der Cleaner	
2947	18. August 2022	Fat Boy Zulassung			
2948	19. August 2022			Der Cleaner, Das Grab meiner Schwester	
2949	20. August 2022	Roseline Sex, Fat Boy Augsburg geholt			
2950	21. August 2022	Fat Boy 114 fahren		Das Grab meiner Schwester	
2951	22. August 2022	Fat Boy 114 fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps	Das Grab meiner Schwester	
2952	23. August 2022	Fat Boy 114 fahren		Das Grab meiner Schwester	
2953	24. August 2022	Roseline Sex, Fat Boy fahren		Das Grab meiner Schwester	
2954	25. August 2022	Fat Boy 114 fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps	Das Grab meiner Schwester	
2955	26. August 2022			Das Grab meiner Schwester	
2956	27. August 2022	München fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps	Das Grab meiner Schwester	
2957	28. August 2022	Roseline Sex,mit Roslelne im Kino		Das Grab meiner Schwester	
2958	29. August 2022	Griechisch Essen, Fat Boy 114 fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps, minimum	Das Grab meiner Schwester	
2959	30. August 2022	mit Roseline nach Hannover gefahren		Das Grab meiner Schwester	
2960	31. August 2022	TS Bens			
2961	1. September 2022				
2962	2. September 2022	Fat Boy 114 fahren		Der Heilige Tod	
2963	3. September 2022	VRSCDX fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps, minimum	Der Heilige Tod	
2964	4. September 2022	Fat Boy 114 fahren Chiemsee, Kino Bullet Train		Der Heilige Tod	
2965	5. September 2022	Roseline Sex, FLHTKL fahren Mühldorf	Stütz, seitliche Übungen, Rücken situps	Der Heilige Tod	
2966	6. September 2022	Erding-Hannover fahren			
2967	7. September 2022	Hannover-Erding fahren			
2968	8. September 2022			Der Heilige Tod	
2969	9. September 2022	Roseline Sex		Der Heilige Tod	
2970	10. September 2022		Stütz, seitliche Übungen, Rücken situps	Der Fahrer	
2971	11. September 2022	Spagetthi Carbonara		Der Fahrer	
2972	12. September 2022	Fat Boy 114 fahren Schliersee	Stütz, seitliche Übungen, Rücken situps	Der Fahrer	
2973	13. September 2022	Fat Boy 114 fahren, FLSTFI fahren Fabi Einschulung		Der Fahrer	
2974	14. September 2022	Roseline Sex		Der Fahrer.Geister	
2975	15. September 2022		Stütz, seitliche Übungen, Rücken situps, situps	Geister	
2976	16. September 2022			Geister, Das Schwert Gottes	
2977	17. September 2022		Stütz, seitliche Übungen, Rücken situps, situps	Das Schwert Gottes	
2978	18. September 2022	Kino Film Ticket ins Paradies		Der Hurricane	
2979	19. September 2022	Roseline Sex	Stütz, seitliche Übungen, Rücken situps, situps	Der Hurricane	
2980	20. September 2022			Das Duell	
2981	21. September 2022	FLSTFI fahren, VRSCDX fahren			
2982	22. September 2022				
2983	23. September 2022	Roseline Sex		Das Duell	
2984	24. September 2022	Hochzeit Sebastian	situps		
2985	25. September 2022	Roseline Sex			
2986	26. September 2022	Frankfurt fahren			
2987	27. September 2022	Gambach - Erding fahren			
2988	28. September 2022	Bettenlager		Das Duell	
2989	29. September 2022			Das Duell	
2990	30. September 2022	Roseline Sex, Fat Boy 114 fahren	Stütz, seitliche Übungen, Rücken situps, situps - minimum	Der neunte Schritt	
2991	1. Oktober 2022			Der neunte Schritt	
2992	2. Oktober 2022	Roseline Sex Finger Anal	Stütz, seitliche Übungen, Rücken situps	Der neunte Schritt	
2993	3. Oktober 2022	FLHTKL fahren		Der neunte Schritt	
2994	4. Oktober 2022	Sandra München abgeholt			
2995	5. Oktober 2022	FLSTFI fahren			
2996	6. Oktober 2022	AB fahren			
2997	7. Oktober 2022	Wendelstein mit Zahnradbahn			
2998	8. Oktober 2022	KZ Gedenkstätte, Sandra München Bahnhof gefahren			
2999	9. Oktober 2022	Roseline Sex, Fat Boy 114 fahren		Der Dschungel	
3000	10. Oktober 2022	Hannover fahren		Der Dschungel	
3001	11. Oktober 2022			Der Dschungel	
3002	12. Oktober 2022			Der Dschungel	
3003	13. Oktober 2022	Erding fahren		Der Dschungel	
3004	14. Oktober 2022	Roseline Sex, FLHTKL fahren 		Der Dschungel	
3005	15. Oktober 2022		Stütz, seitliche Übungen, Rücken situps	Der Dschungel	
3006	16. Oktober 2022	Roseline Sex, FLHTKL Schliersee fahren		Der Dschungel	
3007	17. Oktober 2022	FLHTKL fahren, Leonie Geburtstag	Stütz, seitliche Übungen, Rücken situps		
3008	18. Oktober 2022	VRSCDX fahren			
3009	19. Oktober 2022	MB Reifenwechsel, Roseline am Ostbahnhof geholt		Blackout	
3010	20. Oktober 2022	FLHTKL fahren Augsburg	Stütz, seitliche Übungen		
3011	21. Oktober 2022				
3012	22. Oktober 2022	Roseline Sex, FLHTKL putzen	Stütz, seitliche Übungen, Rücken situps	Blackout	
3013	23. Oktober 2022	Fat Boy114 fahren		Blackout	
3014	24. Oktober 2022		Stütz, seitliche Übungen, Rücken situps	Das Revier	
3015	25. Oktober 2022	ED - FFM fahren,  ctmshare, TS Paula im Hotel			
3016	26. Oktober 2022	ctmshare, FFM - ED fahren			
3017	27. Oktober 2022	FLSTFI fahren		Das Revier	
3018	28. Oktober 2022	Roseline Sex	Stütz, seitliche Übungen, Rücken situps	Das Revier	
3019	29. Oktober 2022	VRSCDX fahren	Stütz, seitliche Übungen,	Das Revier	
3020	30. Oktober 2022	FLHTKL fahren Landshut		Das Revier	
3021	31. Oktober 2022	Roseline Sex, FLHTKL fahren Passau	Stütz, seitliche Übungen,situps	Das Revier	
3022	1. November 2022			Das Revier	
3023	2. November 2022			Das Revier	
3024	3. November 2022			Das Revier	
3025	4. November 2022	Gespräch REWE	Stütz, seitliche Übungen,situps	Der Erlöser	
3026	5. November 2022	Roseline Sex		Der Erlöser	
3027	6. November 2022	Erding - Hannover fahren	Stütz, seitliche Übungen,situps	Der Erlöser	
3028	7. November 2022	TS  Carida			
3029	8. November 2022	Go-Kart fahren			
3030	9. November 2022			Der Erlöser	
3031	10. November 2022	Hannover nach Erding gefahren		Der Erlöser	
3032	11. November 2022	Roseline Sex mit Vibrator und Anal Vibrator bei mir		Sleepers	
3033	12. November 2022			Sleepers	
3034	13. November 2022	Wäsche, spazieren, Pizza backen		Sleepers	
3035	14. November 2022			Sleepers	
3036	15. November 2022	Kanban Schulung		Zwölf Tage	
3037	16. November 2022	US Nachricht das sie in München ist, Kanban Schulung, Roseline Sex		Zwölf Tage	
3038	17. November 2022	Kanban Schulung. Film Rocky		Zwölf Tage	
3039	18. November 2022	Gespräch REWE		Zwölf Tage	
3040	19. November 2022	Roseline Sex, Kino Black Panther: Wakanda Forever	Stütz, Katzenbuckel, situps	Zwölf Tage	
3041	20. November 2022			Der Verrat	
3042	21. November 2022				
3043	22. November 2022	Erding - Hannover fahren			
3044	23. November 2022	TS Brenda		Der Verrat	
3045	24. November 2022	Hannover - Erding fahren, IB telefoniert		Der Verrat	
3046	25. November 2022	Roseline Sex		Der Verrat	
3047	26. November 2022	Roseline Sex, Erding Weihnachtsmarkt Erding		Der Verrat	
3048	27. November 2022		Stütz, Katzenbuckel, seitliche Übungen, situps	Der Verrat	
3049	28. November 2022	Roseline Sex		Die Hexe	
3050	29. November 2022	FLFBS und FLHTKL HadEck bringen		Die Hexe	
3051	30. November 2022	Roseline Sex, Gespräch REWE	Stütz, Katzenbuckel, seitliche Übungen, situps	Die Hexe	
3052	1. Dezember 2022	REWE Job Zusage		Die Hexe	
3053	2. Dezember 2022			Die Hexe	
3054	3. Dezember 2022	Roseline Sex, Weihnachtsmarkt Landshut	Stütz, Katzenbuckel, seitliche Übungen, situps	Die Hexe	
3055	4. Dezember 2022	Weihnachtsmarkt Landshut		Kalla City	
3056	5. Dezember 2022			Kalla City	
3057	6. Dezember 2022	TS Nonny		Kalla City	
3058	7. Dezember 2022		Stütz, Katzenbuckel		
3059	8. Dezember 2022			Kalla City	
3060	9. Dezember 2022		Stütz, Katzenbuckel, situps		
3061	10. Dezember 2022	Roseline Sex		Kalla City	
3062	11. Dezember 2022		Stütz, Katzenbuckel, seitliche Übungen, situps		
3063	12. Dezember 2022	ivv Kündigung, Dorfen Brucker Kaffee		Kalla City	
3064	13. Dezember 2022		Stütz, Katzenbuckel, seitliche Übungen, situps	Kalla City	
3065	14. Dezember 2022	ivv Kündigung als einschreiben, Python programmieren		Kalla City	
3066	15. Dezember 2022	FLHTKL holen		Kalla City	
3067	16. Dezember 2022	Python programmieren		Kalla City	
3068	17. Dezember 2022	Roseline Sex, Rosenheim Roseline Jacke kaufen		Kalla City	
3069	18. Dezember 2022	Roseline Sex	Stütz, Katzenbuckel, seitliche Übungen, situps		
3070	19. Dezember 2022	Python programmieren	Stütz, Katzenbuckel	Ronin	
3071	20. Dezember 2022	Python programmieren, Papiere Standesamt, Hannover gefahren			
3072	21. Dezember 2022	Python programmieren			
\.


--
-- Data for Name: journalnew; Type: TABLE DATA; Schema: public; Owner: mspruck
--

COPY public.journalnew (key, datum, erfolg, sport, buch, erkenntnis) FROM stdin;
1	22.12.2022	Python programmieren, Hannover - Erding fahren, Sandra nach Erding gekommen			
2	23.12.2022	Python und postgres			
3	24.12.2022	ED - Gambach fahren			
4	25.12.2022	 			
5	26.12.2022	Gambach - Köln fahren			
6	27.12.2022	Python und postgres			
7	28.12.2022	einkaufen, Roseline Sex			
8	29.12.2022	Python und Postgres			
9	30.12.2022	Python und Postgres, Visual Studio Code in Git			
10	31.12.2022	Python und Postgres, Visual Studio Code in Git			
11	01.01.2023	Köln nach Erding fahren, Roseline WoZi Sex			
12	03.01.2023	Python, VSCode auf Macbook Air			
13	04.01.2023	Termin Standesamt			
14	05.01.2023	Python csv file lesen und DB schreiben, Parallels installiert auf Mac mit Windows			
15	06.01.2023	MacBook Parallels Windows Control-M installieren			
16	07.01.2023	Kawasaki Interessent da, Mac/Win VCStudio mit Git, Elena tefoniert, Mühldorf Kaffee, TopGun			
18	10.01.2023	Linux Mint, Roseline Sex			
19	11.01.2023	Had-Eck Dyno gebracht			
20	13.01.2023	Burger King Dorfen			
22	15.01.2023		Stütz, Katzenbuckel, seitliche Übungen, situps		
23	16.01.2023				
24	17.01.2023	Kawasaki abmelden			
25	18.01.2023	Python Buch			
26	19.01.2023	Roseline Sex	Stütz, Katzenbuckel, seitliche Übungen, situps		
27	20.01.2023	Python Übungen			
28	21.01.2023	Roseline Sex	Stütz, Katzenbuckel, seitliche Übungen, situps		
29	22.01.2023	Kawasaki verkauft und abgeholt, Forstner essen in Taufkirchen			
30	23.01.2023		Stütz, Katzenbuckel, seitliche Übungen, situps		
31	24.01.2023	PyCharm installation			
32	25.01.2023	MFT und SAP migration	Stütz, Katzenbuckel, seitliche Übungen, situps, Kettlebell start		
33	26.01.2023	MFT und SAP migration	Kettlebell Minimal Übungen		
34	27.01.2023	MFT und SAP migration, LibreOffice Dell installieren			
35	28.01.2023	Roseline Sex, LibreOffice auf Macbook installiert, WS gefahren, keine Pfeife geraucht	Stütz, Katzenbuckel, seitliche Übungen, Kettlebell Video alle 3mal		
36	29.01.2023	Keine Pfeife geraucht	Kettlebell Übungen		
37	20.01.2023	SAP Migration, keine Pfeife geraucht			
38	31.01.2023	SAP und MFT migration, Steuerrückzahlung 2021, Keine Pfeife geraucht, Zigarillo gepafft	Kettlebell Übungen		
39	02.02.2023	MFT,SAP migration, Dörr Untersuchungsergebnis, Hannover-Erding fahren			
40	03.02.2023	MFT, SAP migration, Dietrich Control-M Schulung			
41	04.02.2023	Roseline Sex, Waldkraiburg C&A, Mühldorf, Lethal Weapon 1	Stütz, Kettlebell		
42	05.02.2023	Lethal Weapon 2			
43	06.02.2023	MFT, SAP migration, Dietrich Control-M Schulung,Lethal Weapon 3	Stütz, seitliche ÜbungenKettlebell		
44	07.02.2023	MFT, SAP migration ,Lethal Weapon 4			
45	08.02.2023	MFT, SAP migration, KFC Parsdorf			
46	09.02.2023	MFT, SAP migration	Stütz, Katzenbuckel, seitliche Übungen, Kettlebell		
47	10.02.2023	MFT, SAP migration, Ulli mail als Sandra wg 3er			
48	11.02.2023	Roseline Sex, München fahren			
49	12.02.2023	Erkältung			
50	13.02.2023	Standesamt 150,00 Euro , MFT, SAP migration			
51	14.02.2023	MFT, SAP Migration, ED - AB - Gambach fahren			
52	15.02.2023	Control-M Tag in FFM, FFM-AB-ED fahren			
53	16.02.2023	MFT, SAP Migration, Sichtschutz Balkon entfernt			
54	17.02.2023	Roseline sex, MFT, SAP Migration			
55	18.02.2023	Ebersberg Kaffee, Chiemsee	Kettlebell		
56	19.02.2023		Kettlebell		
57	20.02.2023	MFT, SAP Migration			
58	21.02.2023	MFT, SAP Migration			
59	22.02.2023	Letzter Arbeitstag ivv			
60	23.02.2023	Roseline Sex, FLSTFI fahren, Dorfen Kaffee eat & meet	Stütz, Kettlebell		
61	24.02.2023	FLSTFI fahren, Dateien auf MacBook	Kettlebell, situps mit Gewicht		
62	25.02.2023	Roseline Sex, München fahren, Python depot			
63	01.02.2023	MFT,SAP migration, Dietrich Control-M Schulung, TS Angie Deluxen	 	 	TS Geldverschwenung, kein Ständer, Bilder veraltet
64	26.02.2023		einmal Stütz, Kettlebell, situps mit Gewicht		
65	27.02.2023		Kettlebell		
66	28.02.2023	ED - AB - Gambach fahren			
69	03.03.2023	BG heisser Chat, Gambach-AB-ED fahren, WÜ Landstrasse	 		
68	02.03.2023	John Doe Flörsheim, Grosser Feldberg gefahren, BG heisser Chat	 		
70	04.03.2023	Roseline Sex, Dostojewski	Kettlebell		
71	05.03.2023	Fabi Geburtstag, Forstner Kaffee			Tanjas Mutter heiß, Denke an Sandra
67	01.03.2023	FFM mit Zug fahren	Kettlebell		Tanjas Mutter ist heiß, denke an Sandra,zu spüren
72	06.03.2023	Anhänger zur HU	Kettlebell, situps mit Kettlebell		Denke an Sandra zu spüren, berühren
73	07.03.2023	Roseline Sex, Geld eingezahlt MB, Schliersee Milchhäusl	Kettlebell+		Denke an Sandra, sie berühren, sie spüren
74	08.03.2023	LA gefahren, Döner essen, Tchibo Tasse & Filter			Immer wieder an Sandra denken
75	09.03.2023	Roseline Sex, spazieren Indorf	Stütz, Bank		Sandra im Kopf
76	10.03.2023	Mühldorf Kaffee trinken			wie es wäre Sandra zu spüren
77	11.03.2023		Bank, Stütz, Kettlebell-		Denke daran Sandra spüren und berühren, Sex mit Birgit
78	12.03.2023	Freising Stoffmarkt			Denke daran Sandra spüren und berühren, Sex mit Birgit
80	14.03.2023	Mammut Schuhe bestellt, Roseline Zahnarzt			Denke daran Sandra spüren und berühren, denke an Sex mit Birgit
81	15.03.2023	Roseline Dr. Bloch, München fahren, Anhänger abgeholt			denke an Sex mit Sandra, an Sex mit Birgit
17	08.01.2023	MacBook und Dell VirtualBox mit Linux Mint, Kawasaki verkauft, Forstners essen			
79	13.03.2023	Roseline Sex, FLHTKL Vilsbiburg Mareis	Bank, Stütz, seitliche Übungen, Kettlebell		Denke an Sandra spüren & berühren, Sex mit Birgit
142	14.05.2023	Vagrant auf AlmaLinux, Drohne am Krontahler Weiher, Ansible Video und auf MacBook			
82	16.03.2023	Roseline Sex, FLHTKL fahren	Bank, Stütz, seitliche Übungen, Kettlebell		Denke an Sex mit Sandra, Sex mit Birgit
83	17.03.2023	FLSTFI fahren, VRSCDX fahren	Bank, Stütz, seitliche Übungen		Denke an Sex mit Sandra, Sex mit Birgit
84	18.03.2023	TÜV Termin ausgemacht, FLHTKL fahren Traunreut			Denke an Sex mit Sandra, Sex mit Birgit
85	19.03.2023	Roseline Sex, Kircheim Eis essen, IHlE Erding	Stütz, situp		Denke an Sex mit Sandra, Sex mit Birgit
86	20.03.2023	ED - Darmstadt fahren			
87	21.03.2023	Darmstadt - AB fahren, Louis einkaufen, AB - ED fahren			Denke immer wieder an Sex mit Sandra, Sex mit Birgit
88	22.03.2023	Roseline Sex, FLHTKL und FLSTFI HU			Denke immer wieder an Sex mit Sandra, Sex mit Birgit
89	23.03.2023	FLHTKL fahren Maxlrain	Bank, Stütz, seitliche Übungen, situps		denke an CB; Sandra spüren; Birgit spüren
90	24.03.2023	Whatsapp Sandra	Bank, Stütz, seitliche Übungen		
91	25.03.2023	Roseline Sex, ED Foot Markt			
143	15.05.2023	Udemy Administration of Red Hat Linux Test	Bank, Stütz 3*50, seitliche Übungen 3*40		
144	16.05.2023	Udemy BASH Programming, Version Control with Git			
145	17.05.2023	Udemy BASH Programming, Dostojewski ED	Bank, Stütz, seitliche Übungen, 1*50, situps		
92	26.03.2023	MotoGP Portimao	Bank		Denke immer wieder an Sex mit Sandra, Sex mit Birgit, CB, MV
93	27.03.2023	Kino Film der vermessene Mensch	Bank, Stütz, situps		
94	28.03.2023	FLSTFI, VRSCDV Had-Eck gebracht, Mareis Kaffee, Kuchen Vilsbiburg			
95	29.03.2023	Roseline Sex, Pfannkuchen	Bank, Stütz, Sodbrennen		Denke an Sex mit Sandra
96	30.03.2023	Zahnarzt, Fossil Uhren bestellt	Bank, Stütz, seitliche Übungen		
97	31.03.2023	ED nach AB und Köln fahren			
98	01.04.2023		Bank, Stütz, seitliche Übungen		
99	02.04.2023		Stütz		
100	03.04.2023	REWE Köln Erster Arbeitstag			
101	04.04.2023	REWE Köln			
102	05.04.2023	REWE Köln			
103	06.04.2023	REWE Köln			
104	07.04.2023		Stütz 150St		
105	08.04.2023	Köln – ED fahren, Fossil Uhren Paket			
106	09.04.2023	Roseline Sex			
107	10.04.2023	FLHTKL fahren Wasserburg	Bank, Stütz, seitliche Übungen		
108	11.04.2023	Fossil Uhr getragen, Roseline Fossil Uhr bestellt, RAV Pötzinger	Bank, Stütz		
109	12.04.2023	RAV Pötzinger abgeholt			
110	13.04.2023	Hilux Angebot	Stütz		
111	14.04.2023	Dubliner essen			
112	15.04.2023	Roseline Sex	Bank, Stütz, seitliche Übungen		
113	16.04.2023	Kino John Wick 5	Bank, Stütz, seitliche Übungen 3*50, situps		
114	17.04.2023	FLHTKL fahren	Bank, Stütz, seitliche Übungen 3*50, situps		
117	19.04.2023	Film Apocalypse Now, Solar Powerbank			
116	18.04.2023	Roseline AB, Sandra telefoniert, Film Apocalypse Now			
118	20.04.2023	RestAPI arbeiten	Bank, Stütz, seitliche Übungen 3*50		
119	21.04.2023	RestAPI arbeiten			
120	22.04.2023	Roseline Sex, FLHTKL Straubing fahren	Bank, Stütz, seitliche Übungen 3*50		Denke an Sex mit Sandra
121	23.04.2023		Bank, Stütz 3*50,  seitliche Übungen 2*50		
122	24.04.2023	Udemy Kurs Linux Bootcamp			
123	25.04.2023	Satzinger & Alice telefoniert, Udemy Kurs Linux Bootcamp	Bank 150		
124	26.04.2023	Udemy Kurs Linux Bootcamp, Had-Eck			Sandra Chat
125	27.04.2023	Udemy Linux Bootcamp, Administration of Red Hat Linux 8,VRSCDX fahren	Bank, Stütz 3*50, situps		
126	28.04.2023	Udemy Linux Bootcamp, Administration of Red Hat Linux 8, Roseline Babbel App und Udemy A1 Kurs			
127	29.04.2023	Roseline Sex, Udemy Administration of Red Hat Linux 8,FLHTKL Frontenhausen, Gangkofen,Mühldorf	Bank, Stütz 2*50		Denke an Sex mit Sandra
128	30.04.2023	VRSCDX fahren mit GoPro	Bank, Stütz 1*50		
129	01.05.2023	Sauerteig Brot backen	Bank, Stütz 3+50		
130	02.05.2023	Udemy Administration of Red Hat Linux, Roseline AB, Linux Bootcamp			
131	03.05.2023	Linux Bootcamp, BMC workshop, VRSCDX fahren			
132	04.05.2023	BMC workshop, FLSTFI fahren und GoPro	Bank, Stütz 3*50		
133	05.05.2023	FLSTFI fahren und GoPro, iPhone Rewe, Udemy Administration of Red Hat Linux, Linux Bootcamp	Bank 150		
134	06.05.2023	VRSCDX fahren mit GoPro			
135	07.05.2023	VRSCDX fahren mit GoPro - Rosenheim	Bank, Stütz 3*50		
136	08.05.2023	Drohne DJI Air 2s geliefert, Probeflug OK, macht Spass			
137	09.05.2023	VGH wg Arbeitszeugnis,Linux Bootcamp, Drohne DJI Air 2s draussen geflogen, Marc telefoniert			
138	10.05.2023	McAfee auf Mac, Video schneiden mit GoPro Player, Linux Bootcamp	Bank, Stütz 3*50, situps		
139	11.05.2023	Udemy Administration of Red Hat Linux, Linux Bootcamp	Bank,Stütz 1*50		
140	12.05.2023	FLSTFI fahren, amadeus treffen			
141	13.05.2023	Ampfing Baggerraceparty, Mühldorf, Udemy Administration of Red Hat Linux			
146	16.05.2023	Udemy BASH Programming, Version Control with Git			
147	17.05.2023	Udemy BASH Programming, Dostojewski ED	Bank, Stütz, seitliche Übungen, 1*50, situps		
148	14.05.2023	Vagrant auf AlmaLinux, Drohne am Krontahler Weiher, Ansible Video und auf MacBook			
149	15.05.2023	Udemy Administration of Red Hat Linux Test	Bank, Stütz 3*50, seitliche Übungen 3*40		
150	18.05.2023	Roseline Sex, FLHKL fahren Landshut, vagrant VM gestartet	Bank 150		
151	19.05.2023	VRSCDX fahren	Stütz 150, situps 100		
152	20.05.2023	FLHTKL fahren mit GoPro	Stütz 150		
153	21.05.2023	FLHTKL fahren mit Pro Thenner Weiher	Stütz 150		
154	22.05.2023	Balkon Sichtschutz, Udemy: Version Control with Git, spazieren Indorf			
155	23.05.2023	telefoniert mit Ben Stokes, spazieren Indorf			
156	24.05.2023	Udemy Version Control with Git, GCP Fundamentals	Bank, Stütz, spazieren Indorf		
157	25.05.2023	Udemy GCP Fundamentals, Gespräch mit Rochella von BMC	spazieren Indorf		
158	26.05.2023	Fielmann wg Brille	spazieren Indorf		
159	27.05.2023	FLHTKL Burghausen, Mattigkofen, Altaussee, Grundlsee, Hotel Seeresidenz in Altaussee, Roseline Sex			Denke an Sex mit Sandra
160	28.05.2023	FLTHKL Loser Mautstrasse, Gosausee am Parkplatz umgefallen, kurvenreiche  Hochkönigstrasse			Denke an Sex mit Sandra
161	29.05.2023	FLHTKL, VRSCDX putzen	spazieren Indorf		Denke an Sex mit Sandra
162	30.05.2023	Ihle essen			
163	31.05.2023	Udemy GCP Fundamentals, FLSTFI fahren	spazieren Indorf		Denke an Sex mit Sandra
164	01.06.2023	Control-M & EMA Server AlmaLinux, WEB geht , Udemy  Web Development Bootcamp	Bank, Stütz, seitliche Übungen, spazieren Indorf		Denke an Sex mit Sandra
165	02.06.2023	AlmaLinux Control-M funktioniert mit API, Udemy Web Development Bootcamp, Roseline Sex	spazieren Indorf		Denke an Sex mit Sandra
166	03.06.2023	ED-Köln fahren			
167	04.06.2023	Drohne geflogen, Rhein Beach			
168	05.06.2023	Onboarding Porz, Tim Sex			
169	07.06.2023	Köln Porz, Udemy Web Development Bootcamp			
170	08.06.2023	Köln – ED, KFC			
171	09.06.2023	FLSTFI fahren, Brille abgeholt, FLSFTI, VRSCDX mit Reiniger putzen, Griechishc essen			
172	10.06.2023	Roseline sex, FLHTKL Kössen Biker treffen fahren, Andi Huber grillen	Bank 200		
173	12.06.2023	FLHTKL Elmau, Landl, Schliersee	 		
174	12.06.2023	 	Bank, Stütz, seitliche Übungen, situps, spazieren Indorf		
175	13.06.2023	Job Absage BMC, Udemy Web Development Bootcamp			
176	14.06.2023	Udemy Web Development Bootcamp, FLHTKL fahren Mühldorf	Bank, Stütz, seitliche Übungen		
177	15.06.2023	Udemy Web Development Bootcamp, IHLE essen	Bank, Stütz, seitliche Übungen		
178	16.06.2023	Udemy Web Development Bootcamp, Landgasthof Schweiger mit Forstners	Bank		
179	17.06.2023	Köln fahren, Gaffl Kneipe			
180	18.06.2023	Rhein Hohenzollernbrücke, Strand			
181	19.06.2023	Köln Porz			
182	20.06.2023	Köln Porz			
183	21.06.2023	Köln Porz, Datacenter Tour			
184	22.06.2023	Köln Porz			
185	23.06.2023				
186	24.06.2023	Sandra DUS Flughafen, Erding gefahren			
187	25.06.2023	FLSFTI fahren, Italienisch essen			
188	26.06.2023	Udemy Web Development Bootcamp	Bank, Stütz, seitliche Übungen		
189	27.06.2023	Udemy Web Development Bootcamp	Bank, 1*Stütz und seitliche Übungen		
190	28.06.2023	Udemy Web Development Bootcamp, HTML,CSS Übungen			
191	29.06.2023	Udemy Web Development Bootcamp, node.js, Postman, VRSCDX fahren	Bank, Stütz und seitliche Übungen		
192	29.06.2023	Udemy Web Development Bootcamp, node.js, Postman, VRSCDX fahren	Bank, Stütz und seitliche Übungen		
193	30.06.2023	Udemy Web Development Bootcamp, node.js, Postman, API Swagger, express	Bank, situps		
194	01.07.2023	Roseline Sex, FLHTKL fahren			
195	02.07.2023	ED nach Gambach			
196	03.07.2023	REWE FFM			
197	04.07.2023	REWE FFM, UDEMY Web Dev Bootcamp			
198	05.07.2023	REWE FFM, UDEMY Web Dev Bootcamp			
199	06.07.2023	REWE FFM, UDEMY Web Dev Bootcamp, BG getroffen			BG heiße message
200	07.07.2023	REWE FFM, UDEMY Web Dev Bootcamp, JS YouTube, BG message, Drohne Gambach geflogen			BG heiße message zum Sex treffen
202	09.07.2023	Roseline Sex, VRSCDX fahren			
203	10.07.2023	Augenarzt	Bank		
204	11.07.2023	FLHTKL fahren Had Eck	Bank		
228	04.08.2023		Bank, Stütz, seitliche Übungen		
201	08.07.2023	Gambach Erding gefahren, ab Nürnberg Landstrasse			
205	12.07.2023	DJI Osmo Action 3 geliefert	Bank		
206	13.07.2023	DJI Osmo Action 3 erstes Video	Bank, situps, Kettlebell		
207	14.07.2023	Augenarzt			
208	15.07.2023	Balkon Bretter streichen	Bank, situps, Kettlebell		
209	16.07.2023	Balkon Bretter streichen, VRSCDX fahren mit DJI Osmo Action	Bank		
210	17.07.2023	FLSFTI fahren			
211	18.07.2023	FLSFTI fahren, HB mit Strapon	Bank		
212	19.07.2023		Bank		
213	20.07.2023	Augenarzt, Hautarzt, FLHTKL fahren			
214	21.07.2023	Sachen packen	Bank		
215	22.07.2023	FLHTKL fahren, Erding – Sylvenstein – Landeck			
216	24.07.2023	FLHTKL fahren, Landeck – Sterzing – Sölden – Timmelsjochstrasse - St. Leonhard 			
217	25.07.2023	FLHTKL fahren, St. Leonhard - Jaufenpass - Brixen - Klausen - Grödner Joch – Kufar – St.- Martin			
219	27.07.2023	FLHTKL fahren, Cortina – Pieve di Cadore -Sexten – Innichen - Lienz – Heiligenblut			
220	28.07.2023	FLHTKL fahren, Großglockner – Zell am See – Lofer – Kössen – Erding, Ihle essen			
222	29.07.2023				
223	30.07.2023	Kino Erding Oppenheimer			
224	31.07.2023	Termin Standesamt			
225	01.08.2023	Hautarzt			
218	26.07.2023	FLHTKL fahren, St.-Martin – Cortine - Misurina – Cortina			
229	05.08.2023		Bank		
21	14.01.2023	Roseline Sex, Freising gefahren			
226	02.08.2023	TomTom Navi, Griechisch essen ED Illios	Bank, Stütz, seitliche Übungen		
227	03.08.2023				
221	23.07.2023	FLHTKL fahren, Silvretta – Zürs – Lech essen – Hahntennjoch – Imst - Landeck			
230	06.08.2023	Munich River Church, Burger King			
231	07.08.2023	jd lesen json files			
232	08.08.2023		Bank, Stütz, seitliche Übungen		
233	09.08.2023	Termin Standesamt			
234	10.08.2023	VRSCDX fahren	Bank		
235	10.08.2023	VRSCDX fahren	Bank		
236	11.08.2023	FLHTKL putzen	Bank		
237	12.08.2023	FLSTFI fahren			
238	13.08.2023	FLHTKL fahren			
239	14.08.2023		Bank, situps		
240	15.08.2023	Forstners zum essen			
241	16.08.2023	Dr. Bloch	Bank		
242	17.08.2023	FLSTFI fahren			
243	18.08.2023	jq installation, VRSCDX fahren			
244	19.08.2023	FLHTKL fahren Passau, Regen	Bank		
245	20.08.2023	FLHTKL fahren			
246	21.08.2023	Standesamt, McDonalds essen			
247	22.08.2023	Bart abrasiert, FLSTFI fahren	Bank, Nacken		
248	23.08.2023	Stadtpark spazieren	Bank, Nacken		
249	24.08.2023	Hautklinik München			
250	25.08.2023	agent script mir jq, Roseline München Kirche	Bank, Nacken		
251	26.08.2023	Roseline Sex, FLSTFI fahren			
252	27.08.2023		Bank, Nacken		
253	28.08.2023	Kleidung für Hochzeit, Trauringe gekauft			
254	29.08.2023		Bank, Nacken		
255	30.08.2023	Mühldorf gefahren			
256	31.08.2023	FLSTFI fahren	Bank, Nacken, situps		
257	01.09.2023		Bank, Nacken, situps		
258	02.09.2023	FLHTKL fahren Ammersee			
259	03.09.2023	FLHTKL fahren STA Paradies			
260	04.09.2023	Hochzeitsstrauch	Bank, Nacken		
261	05.09.2023	Hochzeitstorte, VRSCDX fahren	Bank, Nacken		
262	06.09.2023	VRSCDX fahren			
263	07.09.2023	FLHTKL fahren Rosenheim			
264	08.09.2023		Bank, Nacken		
265	09.09.2023	FLSTFI fahren			
266	10.09.2023	FLHTKL fahren, Asia			
267	11.09.2023	Trauringe abgeholt, FLSTFI fahren			
268	12.09.2023	VRSCDX fahren			
269	13.09.2023	Freising fahren	Bank, Nacken		
270	14.09.2023	Nusskuchen gebacken, München HBF			
271	15.09.2023	Hochzeit, Ammersee, Griechisch Essen			
272	16.09.2023	FLSTFI fahren			
273	17.09.2023	Stadtpark Erding, McDonalds			
274	20.09.2023	AB fahren, McDonalds			
275	21.09.2023	FLSTFI fahren, Control-M Tag München			
276	22.09.2023				
278	24.09.2023		walking		
280	26.09.2023	Roseline MUC HBF fahren, VRSCDX fahren			
279	25.09.2023	 	Bank		
277	23.09.2023	Garage Schrank geräumt, Schrank nach Pesenlern	Bank, Nacken		
281	27.09.2023	spazieren	Bank		
282	28.09.2023	HolyFreedom Quattro Waxed Evo Motorrad Textiljacke, Udemy Docker and Kubernetes, FLHTKL fahren	Bank, Nacken		
283	29.09.2023	Macbook Docker installiert, Udemy Docker & Kubernetes, FLHTKL fahren, Flora Whatsapp	walken Riem		
284	30.09.2023	HolyFreedom Quattro Camo, FLHTKL fahren IN			
285	01.10.2023	FLHTKL fahren VIB	walken Riem		
286	02.10.2023	Flora Whatsapp, FLHTKL fahren Mühldorf	Bank, Nacken		Flora gefällt mir, aber das macht keinen Sinn etwas anzufangen
287	03.10.2023	ED – Gambach fahren			
288	04.10.2023	OKR Rewe FFM			
289	05.10.2023	Rewe FFM, BG getroffen geküsst			Hätte gerne mit BG Sex gehabt
290	06.10.2023	Rewe FFM, Linden Sex und Massage			
291	07.10.2023	Gambach – ED fahren			
292	08.10.2023		walken Riem 2h		
293	09.10.2023				
294	10.10.2023	Meine BahnCard gekündigt, FLSTFI fahren	Bank, Nacken		
295	12.10.2023	HB Sex			
296	11.10.2023	FLHTKL fahren	Bank, Nacken		
297	16.10.2023		Nacken		
298	17.10.2023	Leonie Geburtstagsfeier			
299	18.10.2023	Hauptbahnhof München fahren			
300	13.10.2023	VRSCDX fahren	Bank, Nacken		
301	14.10.2023	FLHTKL waschen,  Screen Protector  Kit; VRSCDX waschen			
302	15.10.2023	Roseline Sex,Roseline Sex, München Hope Church	Bank, Nacken		
303	19.10.2023				
304	20.10.2023	Eishockey Landshut vs Bad Nauheim			
305	21.10.2023	FLSTFI fahren, Roseline Church Ingolstädter Strasse			
306	22.10.2023	München Hope Church			
307	23.10.2023	Roseline Hope Church			
308	24.10.2023	Flora Whatsapp			
309	25.10.2023	Flora Whatsapp offen geschrieben			
310	26.10.2023	RAV Winterreifen, Perkmann Tee, Weisswurscht, Schwitzbad unter Decke			
311	27.10.2023	Schwitzbad unter Decke			
312	28.10.2023	Schwitzbad unter Decke, Kompressor in Betrieb genommen, FLSTFI fahren			
313	29.10.2023	Schwitzbad unter Decke, München Hope Church			
314	30.10.2023	Schwitzbad unter Decke, FLHTKL fahren			
315	31.10.2023	Schwitzbad unter Decke, Film Die durch die Hölle gehen		Ronin	
316	01.11.2023	Schwitzbad unter Decke, FLHTKL fahren Chiemsee		Ronin	
317	02.11.2023	Roseline Sex, Schwitzbad unter Decke. Flora Whatsapp	Nacken	Ronin, Nie Wieder	
318	03.11.2023	Schwitzbad unter Decke, Eishockey Erding vs Dorfen	Nacken	Nie wieder	
319	04.11.2023	Schwitzbad unter Decke, FLSTFI putzen	Nacken	Nie wieder	
320	05.11.2023	BG Whatsapp, Schwitzbad unter Decke, München Hope Church	Nacken	Nie Wieder, Kugelsicher	
321	06.11.2023	Schwitzbad unter Decke, Roseline Hope Church, Sex im Hotel	Bank, Nacken	Kugelsicher	
322	07.11.2023	Schwitzbad unter Decke	Bank, Nacken	Kugelsicher, Der Sandmann	
323	08.11.2023	Roseline München HBF		Der Sandmann, Der Engel	
324	09.11.2023	Schwitzbad unter Decke, McDonalds	Bank, Nacken	Der Engel, Gone Forever, Die Agentin	
325	10.11.2023	Flora Whatsapp, Schwitzbad unter Decke	Bank, Nacken	Gone Forever, Die Agentin	
327	12.11.2023	Schwitzbad unter Decke, Hope Church	Bank	Late Show	
328	13.11.2023	Schwitzbad unter Decke	Bank	Rügenjagd	
329	14.11.2023	Roseline Tutzing		Rügenjagd, Rügengift	
330	15.11.2023	Schwitzbad unter Decke	Bank		
331	16.11.2023	Schwitzbad unter Decke, Zahnreinigung		Rügengift	
332	17.11.2023	Schwitzbad unter Decke, Erding Eishockey	Bank, Nacken, Kettlebell Rücken	Rügengift, Selbst denken	
326	11.11.2023	Flora Whatsapp, Schwitzbad unter Decke, Eishockey Deutschland Cup Landshut	Bank, Nacken	Die Agentin	
333	18.11.2023	Schwitzbad unter Decke, Schweinebraten	Bank, Nacken, Kettlebell Rücken		
334	19.11.2023	Roseline Sex, Schwitzbad unter Decke, München Hope Church	Bank, Nacken, Kettlebell Rücken	Rügengift, Selbst denken	
335	20.11.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Die Kundschafterin, Selbst denken	
336	21.11.2023	Schwitzbad unter Decke, McDonalds, ED Gladiator Trikot	Bank, Nacken, Kettlebell Rücken	Die Kundschafterin, Selbst denken	
337	22.11.2023	Roseline München Church, Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken 	Die Kundschafterin, Die Killerin, Selbst denken	
338	23.11.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Die Killerin, Selbst denken	
340	25.11.2023	Schwitzbad unter Decke, Margret & Krögers Wintergarten, Roseline Munich Hope Church		Die Killerin, Selbst denken	
341	26.11.2023	Schwitzbad unter Decke, Munich Hope Church	Bank, Nacken, Kettlebell Rücken	Die Rächerin, Selbst denken	
342	27.11.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Die Rächerin, Selbst denken	
343	28.11.2023	Schwitzbad unter Decke, MTDC Umzug	Bank, Nacken, Kettlebell Rücken 	Die Rächerin, Selbst denken	
344	29.11.2023	Roseline MUC Hbf nach AB, Schwitzbad unter Decke, McDonalds	Bank, Nacken, Kettlebell Rücken	Die Rächerin, Selbst denken, Wormwood	
345	30.11.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Wormwood, Selbst denken	
374	29.12.2023	Schwitzbad	Bank, Nacken, Kettlebell Rücken	Das Chamäleon, Draussen	
339	24.11.2023	Margret WhatsApp, Schwitzbad unter Decke, LA Xmas Markt, Eishockey LA vs Kaufbeuren	Bank, Nacken, Kettlebell Rücken 	Die Killerin, Selbst denken	
346	01.12.2023	Schwitzbad unter Decke, Eishockey LA - Kassel	Bank, Nacken, Kettlebell Rücken	Wormwood, Selbst denken	
347	02.12.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Wormwood, Selbst denken, Der Matroschka-Mörder	
348	03.12.2023	Schwitzbad unter Decke, Munich Hope Church	Bank, Kettlebell Rücken	Selbst denken, Winterquartier	
349	04.12.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Winterquartier, Selbst denken	
350	05.12.2023	Schwitzbad unter Decke, Film Immer Ärger mit Grandpa	Bank, Nacken, Kettlebell Rücken	Winterquartier, Selbst denken	
375	30.12.2023	Roseline Sex, Eishockey Ingolstadt vs Berlin		 	
351	06.12.2023	Schwitzbad unter Decke, ED Weihnachtsmarkt, Bosch Legacy Staffel 1 und 2	Bank, Nacken, Kettlebell Rücken	Winterquartier	
352	07.12.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Das Haus im Wald, Selbst denken	
353	08.12.2023	Schwitzbad unter Decke, Eishockey ED vs Buchloe	Bank, Nacken, Kettlebell Rücken	Das Haus im Wald, Selbst denken	
355	10.12.2023	Roseline Sex, Schrank aufgebaut, Schwitzbad unter Decke, Eishockey LA vs Regensburg	Bank	Friedhof für Fremde, Selbst denken	
356	11.12.2023	Roseline Gericht		Friedhof für Fremde, Selbst denken	
357	12.12.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Friedhof für Fremde, Selbst denken	
354	09.12.2023	Schwitzbad unter Decke, Schrank Bettenlager geholt, Flora Whatsapp	Bank, Nacken, Kettlebell Rücken	Das Haus im Wald	
358	13.12.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Friedhof für Fremde, Selbst denken	
359	14.12.2023	WC Sitz, Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Zimmer in Rot	
360	15.12.2023	Schwitzbad unter Decke, Eishockey Augsburg vs Bremerhaven, Whatsapp Flora	Bank, Nacken, Kettlebell Rücken	Zimmer in Rot	
361	16.12.2023	Gwendolin Markt Schwaben Sex, Roseline Church			Zimmer in Rot, Sandsturm
362	17.12.2023	Roseline Sex, Munich Church, Eishockey Erding vs Kempten	Bank, Nacken, Kettlebell Rücken	Sandsturm, Kaltblütig	
363	18.12.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Kaltblütig	
364	19.12.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Kaltblütig, Blutmond	
365	20.12.2023	Roseline AB, Schwitzbad 	Bank, Nacken, Kettlebell Rücken	Blutmond	
366	21.12.2023	Schwitzbad, Forstner essen Reiter Wartenberg	Bank, Nacken, Kettlebell Rücken	Blut und Rosen, Der Drache und der Geist	
367	22.12.2023	Schwitzbad	Bank, Nacken, Kettlebell Rücken	Der Drache und der Geist	
368	23.12.2023	Roseline Sex, Flora Whatsapp, Schwitzbad	Bank	Der Drache und der Geist, Affenhitze	
369	24.12.2023	Ente braten, Schwitzbad, Munich Church	Bank, Nacken, Kettlebell Rücken	Affenhitze	
370	25.12.2023	Schwitzbad	Bank, Nacken, Kettlebell Rücken	Affenhitze	
371	26.12.2023	Schwitzbad, Mc Donalds, Eishockey ED vs Schweinfurt	Bank, Nacken, Kettlebell Rücken	Affenhitze	
372	27.12.2023	Schwitzbad	Bank, Nacken, Kettlebell Rücken	Affenhitze, Das Chamäleon	
373	28.12.2023	Schwitzbad, Eishockey LA vs Selb	Bank, Nacken, Kettlebell Rücken	Das Chamäleon	
376	31.12.2023	Schwitzbad	Bank, Nacken, Kettlebell Rücken	Draussen, Neonregen	
377	01.01.2024	Schwitzbad, Flora Whatsapp	Bank, Nacken, Kettlebell Rücken	Neonregen, Die Affäre	
378	02.01.2024	Schwitzbad, Eishockey LA vs Bietigheim	Bank, Nacken, Kettlebell Rücken	Die Affäre	
379	03.01.2024	Schwitzbad, Forstner essen, Reacher Staffel 2	Bank, Nacken, Rücken	Die Affäre, Das Böse Nebenan	Streit mit Roseline
380	04.01.2024	Leonie da für Haare machen, Forstner Spagetti essen, Film Christine, Reacher Staffel 2	Bank, Nacken, Rücken	Das Böse Nebenan	
381	05.01.2024	Schwitzbad, Eishockey Erding vs Ulm 	Bank, Nacken, Rücken	Das Böse Nebenan	
382	06.01.2024	Schwitzbad, Reacher Staffel 2, BG Sexy whatsapp	Bank, Nacken, Rücken	Das Böse Nebenan	
383	07.01.2024	Schwitzbad, Munich Church, Film Platoon, Ergometer bestellt	Bank, Nacken, Rücken	Das Böse Nebenan, Der Poet	
384	08.01.2024	Schwitzbad, Erding nach Gambach fahren	Bank, Nacken, Rücken		
385	09.01.2024	Gambach arbeiten, AB fahren, Roseline Post mit Urteil, Eishockey Bad Nauheim vs Regensburg			
386	10.01.2024	FFM Büro, BG Whatsapp treffen geht nicht, Zimmer für das nächste mal		Der Poet	
387	11.01.2024	Gambach nach Köln fahren		Der Poet	
388	12.01.2024	Köln arbeiten bei Sandra		Der Poet	
389	13.01.2024			Der Poet, Das Klippenmädchen	
390	14.01.2024	Eishockey Köln vs Schwenningen		Das Klippenmädchen	
391	15.01.2024	Köln arbeiten bei Sandra, Köln nach ED fahren			
392	16.01.2024	Ergometer zusammengebaut, Schwitzbad, BMC Webinar Control-M	Bank, Nacken, Rücken, Ergometer 10Min	Das Klippenmädchen, Die eiskalte Kammer	
393	17.01.2024	Schwitzbad	Bank, Nacken, Rücken, Ergometer 20Min-20Min	Die eiskalte Kammer, Düsteres Wasser	
394	18.01.2024	Schwitzbad, Eishockey Augsburg vs München	Ergometer 25Min, Bank, Nacken, Rücken		
395	19.01.2024	Schwitzbad, Eishockey Erding vs Geretsried	Ergometer 30Min, Bank, Nacken, Rücken	Düsteres Wasser	
396	20.01.2024	Schwitzbad, Roseline Church, Film Marlowe	Ergometer 35Min, Bank, Nacken, Rücken	Düsteres Wasser, Verloschen	
397	21.01.2024	Schwitzbad, Church	Ergometer 40Min, Bank, Nacken, Rücken	Verloschen	
398	22.01.2024	Film Mafia Mamma	Ergometer 10Min	Verloschen	
399	23.01.2024		Ergometer 45Min	Verloschen	
400	24.01.2024	Schwitzbad, Film Saints and Sinners	Ergometer 45Min, Bank, Nacken, Rücken	Der Lehrmeister	
401	25.01.2024	Schwitzbad, FLHTKl und VRSCDX zu HD-Eck, Griechisch essen	Ergometer 35Min, Bank, Nacken, Rücken	Der Lehrmeister	
402	26.01.2024	Schwitzbad, Eishockey Landshut vs Rosenheim	Bank, Nacken, Rücken		
403	27.01.2024			Der Lehrmeister	
404	28.01.2024	Schwitzbad	Ergometer 30Min, Bank, Nacken, Rücken	Der Behüter	
405	29.01.2024	Schwitzbad	Ergometer 30Min, Bank, Nacken, Rücken	Der Behüter	
406	30.01.2024	Schwitzbad, Eishockey Landshut vs Dresden	Ergometer 35Min, Bank, Nacken, Rücken		
407	31.01.2024	Über AB nach Köln gefahren, Haus besichtigt			
408	01.02.2024	Köln nach FFM gefahren, T&C mtg, FFM über AB nach ED gefahren			
409	02.02.2024	Mayans	Ergometer 30Min	Der Behüter, Artiges Mädchen	
410	03.02.2024	HD Aktien verkauft, Schwitzbad, Film Born to be wild	Bank, Nacken, Rücken	Artiges Mädchen	
411	04.02.2024	Schwitzbad, Eishockey LA – Freiburg verpasst, Mayans	Ergometer 31Min, Bank, Nacken, Rücken	Artiges Mädchen	
412	05.02.2024	Schwitzbad, einkaufen, Mayans	Bank, Nacken, Rücken	Artiges Mädchens	
413	06.02.2024	Schwitzbad,Mayans	Bank, Nacken, Rücken	Artiges Mädchen	
414	07.02.2024	Schwitzbad, Mayans	Ergometer 30Min	Artiges Mädchen, Der Bewunderer	
415	08.02.2024	Mayans		Der Bewunderer	
416	09.02.2024	Schwitzbad, Mayans, griechisch essen	Ergometer 45Min, Bank, Nacken, Rücken	Der Bewunderer	
417	10.02.2024	Mayans, Film Merry me	Ergometer 26Min, Bank, Nacken		
418	11.02.2024	Schwitzbad, Film This little Love of Mine, Mayans, Kino Die Farbe Lila	Ergometer 60Min	Der Bewunderer	
419	12.02.2024	AB fahren, Mayans, FXDL verkauft, Mayans			
420	13.02.2024	Gipfeltreffen – Ringlstetter, Maischberger, Max Schmidt, Mayans, Pizza backen		Der Bewunderer	
421	14.02.2024	Schwitzbad, Film Die weisse Massai	Bank, Nacken, Rücken	Der Bewunderer	
422	15.02.2024	Schwitzbad, VIB FLHTKL und VRSCDX holen, Asphalt Cowboys	Ergometer 30Min		
423	16.02.2024	Schwitzbad, Asphalt Cowboys, Eishockey ED vs Amberg	Bank, Nacken, Rücken	Der Bewunderer	
424	17.02.2024	IMOT Messe, Five Guys, Trucker Babes, Grand Tour			
425	18.02.2024	Roseline Sex, Schwitzbad, Trucker Babes, IHLE Kaffee	Bank, Nacken, Rücken	Der Böse Mann	
426	19.02.2024	Trucker Babes, James May in India	Bank		
427	20.02.2024	Schwitzbad, Film Peppermint	Bank, Nacken, Rücken	Der Böse Mann	
428	21.02.2024	Schwitzbad	Bank, Nacken, Rücken	Der Böse Mann	 
429	22.02.2024	Yellowstone Serie			Der Böse Mann, Time is Honey
430	23.02.2024	Yellowstone, Eishockey Erding vs Amberg	Bank	Die Stumme Patientin	
431	24.02.2024	Yellowstone, Schwitzbad	Bank, Nacken, Rücken	Die Stumme Patientin	
432	25.02.2024	Yellowstone, Eishockey LA vs Kassel		Bank, Nacken, Rücken	
433	26.02.2024	tragbarer Monitor geliefert, Yellowstone	Bank	Die Stumme Patientin	
434	27.02.2024	Schwitzbad, Yellowstone	Bank, Nacken, Rücken		
435	28.02.2024	SPK Schliersee, Tegernsee fahren, Yellowstone			
436	29.02.2024	Schwitzbad	Bank, Nacken, Rücken	Die Stumme Patientin	
437	01.03.2024	Schwitzbad ,Yellowstone, Film The Contractor	Bank	Die Stumme Patientin	
438	02.03.2024	Schwitzbad, ED nach Gambach fahren	Bank	Die Stumme Patientin	
439	03.03.2024	Haus Feldatal, Eishockey Bad Nauheim vs LA	Bank		
441	05.03.2024	Serie Mr und Mrs Smith, AC/DC Karten		Die Stumme Patientin	
442	06.03.2024	Wilderness Serie	Bank	Die Stumme Patientin, Gehe mit den Toten	
440	04.03.2024	Gambach arbeiten, BG knutschen, fummeln Nippel saugen abef kein Sex, Serie Mr und Mrs Smith			
443	07.03.2024	Wilderness Serie, Film First Class, Film Hight Heat		Gehe mit den Toten	
444	08.03.2024	Gambach nach Köln farhen	Bank	Gehe mit den Toten, Auf zerbrochenem Glas	
445	09.03.2024	Köln in der Stadt, Film High Heat, Film Borrego		Auf zerbrochenem Glas, Vom gleichem Blut	
446	10.03.2024	Köln nach ED gefahren über Koblenz, Serie Treadstone			
447	11.03.2024	Schwitzbad, FLHTKL fahren, Serie Treadstone	Bank, Nacken, Rücken	Vom gleichem Blut	
448	12.03.2024	Schwitzbad, Serie Treadstone	Bank, Nacken, Rücken		
449	13.03.2024	Schwitzbad, Eishockey LA vs Kaufbeuren	Bank	Vom gleichem Blut	
450	14.03.2024	Schwitzbad, VRSCDX fahren, Film Ronin	Bank, Rücken	Vom gleichem Blut	
451	15.03.2024	Schwitzbad, Eishockey ED vs Königsbrunn	Bank, Nacken, Rücken	Vom gleichem Blut	
452	16.03.2024	Riem Arcaden, Film Die Götter müssen verrückt sein 1, Die glorreichen Sieben		Von zerfallenen Träumen	‚‘
453	17.03.2024	Schwitzbad. FLHTKL fahren MÜ, Film Die Götter müssen verrückt sein 1 & 2, Die glorreichen Sieben	Ergometer 30 Min, Bank	Von zerfallenen Träumen	
454	18.03.2024	Film Die Götter müssen verrückt sein 2 & 3	Ergometer 32 Min, Nacken	Vom Ende der Stille	
455	19.03.2024		Ergometer 32 Min, Bank	Vom Ende der Stille	
456	20.03.2024	CTM 9.0.21.200 upgrade, Schwitzbad, FLSTFI fahren, Schwitzbad	Bank, Nacken, Rücken	Vom Ende der Stille	
457	21.03.2024	Reiter Wartenberg essen	ERgometer 30 Min	Vom Ende der Stille	
458	22.03.2024	Schwitzbad, SpradeTV LA vs Kaufbeuren	Bank, Nacken, Rücken	Am Faden des Spielers	
459	23.03.2024		Ergometer 40 Min	Am Faden des Spielers	
460	24.03.2024	SpradeTV LA vs Kaufbeuren	Ergometer 31 Min, Bank, Nacken	Der Plan	
461	25.03.2024	RAV Service, Schliersee, Sudelfeld, MB		um den Schliersee gegangen	
462	26.03.2024	Schwitzbad, SpradeTV LA vs Kaufbeuren	Bank, Nacken	Der Plan	
463	27.03.2024	Dörr checkup		Der Plan	
464	28.03.2024	Schwitzbad, Film Top Gun	Ergometer 37 Min, Bank, Nacken	Der Plan	
465	29.03.2024	FLHTKL Chiemseee Prien fahren, Film Rambo Last Blood, Film John Rambo	Ergometer 46 Min	Der Plan	
466	30.03.2024	Schwitzbad	Bank, Cross Knee, Nacken, Rücken	Die Erinnerung so Kalt	
467	31.03.2024	Brunch, VRSCDX fahren, Film Ein Fisch Names Wanda, Film Thelma & Luise	Ergometer 45 Min	Die Erinnerung so Kalt	
468	01.04.2024	Schwittzbad, Flora message, Film Der Tot Steht ihr Gut	Ergometer 46 Min, Bank, Cross Knee, Nacken	Die Erinnerung so Kalt	
469	03.04.2024	Schwitzbad	Bank, Cross Knee, Nacken, Rücken	Was verborgen bleiben sollte	
470	04.04.2024		Ergometer 45 Min	Was verborgen bleiben sollte	
471	05.04.2024	VRSCDX fahren, Film Roadhouse	Bank, Cross Knee, Nacken, Rücken	Was verborgen bleiben sollte	
472	06.04.2024	FLHTKL Schliersee fahren, essen Hundham, Film Der Pferdeflüsterer	Bank, Cross Knee, Nacken, Rücken		
473	07.04.2024	FLHTKL fahren, Bad Tölz, Vorderriss	Was verborgen bleiben sollte		
474	08.04.2024	Schwitzbad	Bank, Cross Knee, Nacken	Was verborgen bleiben sollte	
475	09.04.2024	ED nach AB und Ffm gefahren, OKR Ffm, Roseline in AB geholt, Lahmer Esel essen			
476	10.04.2024	BMC in FFM,			
478	12.04.2024	Mit Roseline in der Stadt		Wenn die Zeit gekommen ist	
480	14.04.2024	Köln nach Erding gefahren		Wenn die Zeit gekommen ist	
481	15.04.2024	Schwitzbad	Bank, Cross Knee, Nacken	Wenn die Zeit gekommen ist	
482	16.04.2024	Schwitzbad, CB Whatsapp, Flora Whatsapp	Bank, Cross Knee, Nacken	Wenn die Zeit gekommen ist, Als die Nacht begann	
483	17.04.2024	Doku Bobby Wine	Bank, Cross Knee	Als die Nacht begann	
484	18.04.2024	Dr. Dörr	Ergometer 26 Min	Als die Nacht begann	
486	20.04.2024	Espresso Kocher, Eishockey DEB-Slowakei in Augsburg			
487	21.04.2024	Glas Zitronensaft, Tiramisu, Schwitzbad, Forstners Spagetti essen	Ergometer 40 Min	Als die Nacht begann	 
488	22.04.2024	Glas Zitronensaft	Bank		Als die Nacht begann
489	24.04.2024	Glas Zitronensaft, Film Mord im Pfarrhaus	Ergometer 40 Min	Auf verlorenen Wegen	
490	25.04.2024	Glas Zitronensaft, Film Bodybard	Ergometer 30 Min	Auf verlorenen Wegen	
491	26.04.2024	Glas Zitronensaft, Schwitzbad, Film Die Expendables	Ergometer 30 Min	Auf verlorenen Wegen	
492	27.04.2024	Glas Zitronensaft, VRSCDX fahren, umfallen, Film The Expandables 2	Ergometer 30 Min	Auf der Spur des Jägers	
493	28.04.2024	Glas Zitronensaft, Schwitzbad	Ergometer 40 Min	Auf der Spur des Jägers	
494	29.04.2024	Glas Zitronensaft, VRSCDX fahren, Vilsbiburg, WhatsApp FTG, CB		Auf der Spur des Jägers, An einem dunklen Ort	
495	30.04.2024	Glas Zitronensaft, FLHTKL fahren, Arber, Furth im Wald	Ergometer 40 Min	An einem dunklen Ort	
496	01.05.2024	Glas Zitronensaft, CB Video	Ergometer 40 Min	An einem dunklen Ort, Pistolero	
497	02.05.2024	Glas Zitronensaft, Schwitzbad	Ergometer 41 Min, Bank, Knee Cross, Nacken, Rücken	Pistolero	
498	03.05.2024	Glas Zitronensaft, Schwitzbad, Clarkson Farm 3	Ergometer 50 Min, Bank, Knee Cross, Nacken	Pistolero	
499	04.05.2024	Glas Zitronensaft, VRSCDX fahren, Wasserburg, Mühldorf	Ergometer 45 Min	Pistolero, Der Engelshenker	
477	11.04.2024	BMC in FFM, Flora gesprochen, Gambach nach Köln gefahren			
479	13.04.2024	Köln Aachener Weiher Biergarten gegessen, CB in Linkedin gemeldet		Wenn die Zeit gekommen ist	
485	19.04.2024	Schwitzbad	Bank, Cross Knee, Nacken	Als die Nacht begann	
3073	13.05.2024	Glas Zitronensaft, Meldeamt Erding. Eishockey D vs Schweden	Ergometer 45 Min	Dem Tod verpflichtet	
503	06.05.2024	Glas Zitronensaft, Schwitzbad	Ergometer 46 Min, Knee Cross, Nacken, Rücken	Der Engelshenker	
504	07.05.2024	Glas Zitronensaft, Python Programm, Clarksons Farm		Der Engelshenker, Zeuge X	
502	05.05.2024	Glas Zitronensaft, Clarksons Farm	Ergometer 45 Min	Der Engelshenker	
505	08.05.2024	Glas Zitronensaft, Python Programm, VRSCDX Rückspiegel, Clarksons Farm	Ergometer 40 Min	Zeuge X	
506	09.05.2024	Glas Zitronensaft, 	Ergometer 40 Min, 30 Min	Zeuge X, Dem Tod verpflichtet	
507	10.05.2024	Glas Zitronensaft, Schwitzbad, FLSTFI fahren, Eishockey D vs Slowakei, USA vs Schweden	Ergometer 51 Min, Knee Cross, Nacken, Rücken	Dem Tod verpfilchtet	
508	11.05.2024	Glas Zitronensaft, S-Bahn STA, Eishockey D vs USA	Ergometer 40 Min	Dem Tod verpflichtet	
509	12.05.2024	Glas Zitronensaft, Schwitzbad, FLHTKL fahren Pfaffenhofen, Biergarten Grünbach	Ergometer 26 Min	Dem Tod verpflichtet	
511	1.11.2015	Pino gassii	Sport	Buch	 
\.


--
-- Data for Name: km; Type: TABLE DATA; Schema: public; Owner: mspruck
--

COPY public.km (datum, typ, kennzeichen, km, bemerkung, von, bis, km_monat, km_saison, id) FROM stdin;
\.


--
-- Data for Name: reisekosten; Type: TABLE DATA; Schema: public; Owner: mspruck
--

COPY public.reisekosten (datum, hotel, strecke, km, kosten, key) FROM stdin;
08. Januar 2024	 	Erding - Gambach	444	 	1
09. Januar 2024	 	Gambach - FFM	38	 	2
10. Januar 2024	 	Gambach - FFM	38	 	3
11. Januar 2024	 	Gambach - Köln	175	 	4
12. Januar 2024	 	Köln Porz	17	 	5
15. Januar 2024	 	Köln Porz	17	 	6
16. Januar 2024	 	Köln -Erding	609	 	7
31. Januar 2024	 	Erding - Gambach	444	 	8
01. Feb 2024 	 	Gambach – FFM – ED	482	 	9
04. März 2024 	 	Gambach – FFM	38	 	11
02. März 2024 	 	Erding - Gambach	444	 	10
05. März 2024 	 	Gambach – FFM	38	 	12
06. März 2024 	 	Gambach – FFM	38	 	13
07. März 2024 	 	Gambach – FFM	38	 	14
08. März 2024 	 	Gambach – FFM	38	 	15
09. März 2024 	 	Gambach – ED	444	 	16
08. April 2024 	 	Erding – Gambach	444	 	17
09. April 2024 	 	Gambach – FFM	38	 	18
10. April 2024 	 	Gambach – FFM	38	 	19
11. April 2024 	 	Gambach – FFM	38	 	20
12. April 2024 	 	Gambach – ED	444	 	21
\.


--
-- Name: blutdruck_key_column_seq; Type: SEQUENCE SET; Schema: public; Owner: mspruck
--

SELECT pg_catalog.setval('public.blutdruck_key_column_seq', 149, true);


--
-- Name: depot_key_seq; Type: SEQUENCE SET; Schema: public; Owner: mspruck
--

SELECT pg_catalog.setval('public.depot_key_seq', 67, true);


--
-- Name: dkv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mspruck
--

SELECT pg_catalog.setval('public.dkv_id_seq', 189, true);


--
-- Name: journalnew_key_seq; Type: SEQUENCE SET; Schema: public; Owner: mspruck
--

SELECT pg_catalog.setval('public.journalnew_key_seq', 3073, true);


--
-- Name: km_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mspruck
--

SELECT pg_catalog.setval('public.km_id_seq', 1, false);


--
-- Name: reisekosten_key_seq; Type: SEQUENCE SET; Schema: public; Owner: mspruck
--

SELECT pg_catalog.setval('public.reisekosten_key_seq', 25, true);


--
-- Name: blutdruck blutdruck_pkey; Type: CONSTRAINT; Schema: public; Owner: mspruck
--

ALTER TABLE ONLY public.blutdruck
    ADD CONSTRAINT blutdruck_pkey PRIMARY KEY (key_column);


--
-- Name: depot depot_pkey; Type: CONSTRAINT; Schema: public; Owner: mspruck
--

ALTER TABLE ONLY public.depot
    ADD CONSTRAINT depot_pkey PRIMARY KEY (key);


--
-- Name: dkv dkv_pkey; Type: CONSTRAINT; Schema: public; Owner: mspruck
--

ALTER TABLE ONLY public.dkv
    ADD CONSTRAINT dkv_pkey PRIMARY KEY (id);


--
-- Name: journal_klon journal_klon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.journal_klon
    ADD CONSTRAINT journal_klon_pkey PRIMARY KEY (key);


--
-- Name: journalnew journalnew_pkey; Type: CONSTRAINT; Schema: public; Owner: mspruck
--

ALTER TABLE ONLY public.journalnew
    ADD CONSTRAINT journalnew_pkey PRIMARY KEY (key);


--
-- Name: km km_pkey; Type: CONSTRAINT; Schema: public; Owner: mspruck
--

ALTER TABLE ONLY public.km
    ADD CONSTRAINT km_pkey PRIMARY KEY (id);


--
-- Name: reisekosten reisekosten_pkey; Type: CONSTRAINT; Schema: public; Owner: mspruck
--

ALTER TABLE ONLY public.reisekosten
    ADD CONSTRAINT reisekosten_pkey PRIMARY KEY (key);


--
-- Name: TABLE blutdruck; Type: ACL; Schema: public; Owner: mspruck
--

GRANT ALL ON TABLE public.blutdruck TO postgres;


--
-- Name: TABLE depot; Type: ACL; Schema: public; Owner: mspruck
--

GRANT ALL ON TABLE public.depot TO depot;


--
-- Name: TABLE dkv; Type: ACL; Schema: public; Owner: mspruck
--

GRANT ALL ON TABLE public.dkv TO dkv;
GRANT ALL ON TABLE public.dkv TO postgres;


--
-- Name: TABLE journalnew; Type: ACL; Schema: public; Owner: mspruck
--

GRANT ALL ON TABLE public.journalnew TO journal;


--
-- Name: TABLE km; Type: ACL; Schema: public; Owner: mspruck
--

GRANT ALL ON TABLE public.km TO km;


--
-- Name: TABLE reisekosten; Type: ACL; Schema: public; Owner: mspruck
--

GRANT ALL ON TABLE public.reisekosten TO postgres;


--
-- PostgreSQL database dump complete
--

