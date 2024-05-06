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
-- Name: week; Type: TABLE; Schema: public; Owner: mspruck
--

CREATE TABLE public.week (
    zeit character varying(5) NOT NULL,
    montag character varying(30) NOT NULL,
    dienstag character varying(30) NOT NULL,
    mittwoch character varying(30) NOT NULL,
    donnerstag character varying(30) NOT NULL,
    freitag character varying(30) NOT NULL,
    samstag character varying(30) NOT NULL,
    sonntag character varying(30) NOT NULL,
    id character varying NOT NULL
);


ALTER TABLE public.week OWNER TO mspruck;

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
?	Hautarzt	20.07.2023		Dr. Huber			 	 	147
10.07.2023	Augenarzt	10.07.2023	10.07.2023	Dr. Widmann	Tropfen	0.00	 	 	141
20.07.2023	Rathaus Apotheke	0	20.07.2023	Dr. Huber	Tabletten, Salbe	28,88	 	 	145
30.03.2023	Dr. Huber	30.03.2023		Dr. Huber	Zahnreinigung	261,27	17.04.2023	261,27	139
							 	 	156
21.08.2023	Apotheke		16.08.2023	Dr. Bloch	Vocado	109,49	29.08.2023	109,49	151
18.07.2023	Augenarzt	20.07.2023		Dr. Widmann		67,19	07.09.2023	67,19	146
31.07.2023	Augenarzt	20.07.2023		Dr. Widmann		24,13	07.09.2023	24,13	148
10.07.2023	Rathaus Apotheke	0	10.07.2023	Dr. Widmann	Augentropfen	19,83	12.09.2023	19,83	143
14.07.2023	Rathaus Apotheke	0	12.07.2023	Dr. Widmann	Antibiotika Tabletten	27,51	12.09.2023	27,51	144
09.08.2023	Med. Labor Passau	20.07.2023		Dr. Huber	Labor	61,87	27.11.2023	 	149
08.10.2023	Dr. Bloch	16.08.2023	16.08.2023	Dr. Bloch	Vocado	27,74	 	27,74	150
16.11.2023	Dr. Huber	16.11.2023		Dr. Huber	Zahnreinigung	263,85	29.11.2023	 263,85	155
21.11.2023	Dr. Stolz	24.08.2023	24.08.2023	Dr. Stolz		122,45	07.12.2023	122,45	152
24.08.2023	Apotheke		24.08.2023	Dr. Stolz		56,13	07.11.2023	0,30	153
16.11.2023	Dr. Bloch		16.11.2023	Dr. Bloch	Vocado	109,54	02.12.2023	109,54	154
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
339	24.11.2023	Margret WhatsApp, Schwitzbad unter Decke, LA Xmas Markt, Eishockey LA vs Kaufbeuren	Bank, Nacken, Kettlebell Rücken 	Die Killerin, Selbst denken	
346	01.12.2023	Schwitzbad unter Decke, Eishockey LA - Kassel	Bank, Nacken, Kettlebell Rücken	Wormwood, Selbst denken	
347	02.12.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Wormwood, Selbst denken, Der Matroschka-Mörder	
348	03.12.2023	Schwitzbad unter Decke, Munich Hope Church	Bank, Kettlebell Rücken	Selbst denken, Winterquartier	
349	04.12.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Winterquartier, Selbst denken	
350	05.12.2023	Schwitzbad unter Decke, Film Immer Ärger mit Grandpa	Bank, Nacken, Kettlebell Rücken	Winterquartier, Selbst denken	
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
\.


--
-- Data for Name: km; Type: TABLE DATA; Schema: public; Owner: mspruck
--

COPY public.km (datum, typ, kennzeichen, km, bemerkung, von, bis, km_monat, km_saison, id) FROM stdin;
\.


--
-- Data for Name: week; Type: TABLE DATA; Schema: public; Owner: mspruck
--

COPY public.week (zeit, montag, dienstag, mittwoch, donnerstag, freitag, samstag, sonntag, id) FROM stdin;
08:00							 	1
12:00							 	5
13:00							 	6
17:00							 	10
20:00							 	13
21:00							 	14
22:00							 	15
23:00							 	16
24:00							 	17
14:00					Erding nach Augsburg fahren		 	7
15:00							16:00 to 17:30 Church	8
18:00							18:00 Erding vs Kempten	11
19:00					19:30 Augsburg vs Bremerhaven		 	12
10:00		ttt	ttt				 	3
11:00	Roseline Gericht	Knowledge Exchange	Knowledge Exchange				 	4
16:00	 						 	9
09:00	S2: 09:06-09:47 ; 09:26-10:07						 	2
\.


--
-- Name: depot_key_seq; Type: SEQUENCE SET; Schema: public; Owner: mspruck
--

SELECT pg_catalog.setval('public.depot_key_seq', 67, true);


--
-- Name: dkv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mspruck
--

SELECT pg_catalog.setval('public.dkv_id_seq', 157, true);


--
-- Name: journalnew_key_seq; Type: SEQUENCE SET; Schema: public; Owner: mspruck
--

SELECT pg_catalog.setval('public.journalnew_key_seq', 368, true);


--
-- Name: km_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mspruck
--

SELECT pg_catalog.setval('public.km_id_seq', 1, false);


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
-- Name: week week_pkey; Type: CONSTRAINT; Schema: public; Owner: mspruck
--

ALTER TABLE ONLY public.week
    ADD CONSTRAINT week_pkey PRIMARY KEY (id);


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
-- Name: TABLE week; Type: ACL; Schema: public; Owner: mspruck
--

GRANT ALL ON TABLE public.week TO postgres;


--
-- PostgreSQL database dump complete
--

