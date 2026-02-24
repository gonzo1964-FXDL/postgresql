--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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
-- Name: journal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.journal (
    key integer DEFAULT nextval('public.journalnew_key_seq'::regclass) NOT NULL,
    datum character varying(30) NOT NULL,
    erfolg character varying(100) NOT NULL,
    sport character varying(80) NOT NULL,
    buch character varying(50) NOT NULL,
    erkenntnis character varying(100) NOT NULL
);


ALTER TABLE public.journal OWNER TO postgres;

--
-- Data for Name: journal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.journal (key, datum, erfolg, sport, buch, erkenntnis) FROM stdin;
3075	1.11.2015	Pino gassi			
3076	2.11.2015	Pino gassi, Gindelalm			
3077	3.11.2015	Pino gassi, Tauchen			
3078	4.11.2015	Pino gassi			
3079	5.11.2015	Pino gassi, Rosenheim einkaufen		Die Menschen, die es nicht verdienen	
3080	6.11.2015	Pino gassi, McTrek Rosenheim einkaufen		Die Menschen, die es nicht verdienen	
3081	7.11.2015	Pino gassi, Fliesen kaufen		Die Menschen, die es nicht verdienen	
3082	8.11.2015	Pino gassi, Geitau		Die Menschen, die es nicht verdienen	
3083	9.11.2015	Pino gassi		Die Menschen, die es nicht verdienen	
3084	10.11.2015	Maria Stundenhotel, Java programmieren		Die Menschen, die es nicht verdienen	
3085	11.11.2015	Maria Stundenhotel, Java programmieren		Die Menschen, die es nicht verdienen	
3086	12.11.2015	Java programmieren		Die Menschen, die es nicht verdienen	
3087	13.11.2015	Pino gassi, Java programmieren, Sauna Bad Wiessee		Die Menschen, die es nicht verdienen	
3088	14.11.2015	Pino gassi, Therme Bad Aibling		Die Menschen, die es nicht verdienen	
3089	15.11.2015	Pino gassi		Die Menschen, die es nicht verdienen	
3090	16.11.2015	Pino gassi		Die Menschen, die es nicht verdienen	
3091	17.11.2015	Maria, Java programmieren		Die Menschen, die es nicht verdienen	
3092	18.11.2015	Maria, Java programmieren		Die Menschen, die es nicht verdienen	
3093	19.11.2015	Java programmieren, JobOSR		Moerderisches Verlangen	
3094	20.11.2015	Pino gassi, Java programmieren, JobOSR		Moerderisches Verlangen	
3095	21.11.2015	Pino gassi, Rosenheim einkaufen		Moerderisches Verlangen	
3096	22.11.2015	Pino gassi, Schliersee		Moerderisches Verlangen	
3097	23.11.2015	Pino gassi		Moerderisches Verlangen	
3098	24.11.2015	Pino gassi, Sabine Geburtstag		Moerderisches Verlangen	
3099	25.11.2015	Maria, JobOSR, Julia		Moerderisches Verlangen	
3100	26.11.2015	Maria		Moerderisches Verlangen	
3101	27.11.2015	Pino gassi		Toedliche Gier	
3102	28.11.2015	Pino gassi, Therme Bad Aibling		Toedliche Gier	
3103	29.11.2015	Pino gassi		Toedliche Gier	
3104	30.11.2015	Pino gassi		Toedliche Gier	
3105	1.12.2015			Toedliche Gier	
3106	2.12.2015	Maria		Auftrag Mord	
3107	3.12.2015	Angi Bernried		Auftrag Mord	
3108	4.12.2015	Pino gassi		Auftrag Mord	
3109	5.12.2015	Pino gassi		Auftrag Mord	
3110	6.12.2015	Pino gassi, Weihnachtsmarkt		Auftrag Mord	
3111	7.12.2015	Pino gassi, JobOSR		Auftrag Mord	
3112	8.12.2015	Maria, JobOSR		Auftrag Mord, Ruhe in Frieden	
3113	9.12.2015	JobOSR		Ruhe in Frieden	
3114	10.12.2015	Maria, JobOSR		Ruhe in Frieden	
3115	11.12.2015	Pino gassi, JobOSR, Sauna Bad Wiessee		Ruhe in Frieden	
3116	12.12.2015	Therme Bad Aibling		Ruhe in Frieden	
3117	13.12.2015	Pino gassi	Boxen	Ruhe in Frieden	
3118	14.12.2015		Boxen	Ruhe in Frieden	
3119	15.12.2015	Notebook neu installiert		Ruhe in Frieden	
3120	16.12.2015	Git Training, Maria		Ruhe in Frieden	
3121	17.12.2015	Maria		Ruhe in Frieden	
3122	18.12.2015	Pino gassi	Boxen	Asphalt	
3123	19.12.2015	Pino gassi	Boxen	Asphalt	
3124	20.12.2015	Pino gassi Weissachauen		Asphalt	
3125	21.12.2015	Pino gassi		Asphalt	
3126	22.12.2015	Maria	Boxen	Asphalt	
3127	23.12.2015	Maria		Asphalt	
3128	24.12.2015	Pino gassi, Mama telefoniert		Asphalt	
3129	25.12.2015	Pino gassi	Boxen	Asphalt	
3130	26.12.2015	Pino gassi, Therme Bad Aibling		Asphalt	
3131	27.12.2015	Pino gassi		Asphalt	
3132	28.12.2015	Pino gassi, Gambach gefahren		Schlaglicht	
3133	29.12.2015	Pino gassi, Mama Geburtstag, TS Gina			
3134	30.12.2015	Pino Gassi, Hausham gefahren		Schlaglicht	
3135	31.12.2015	Pino gassi			
3136	1.01.2016	Pino gassi	Boxen	Schlaglicht	
3137	2.01.2016	Pino gassi		Schlaglicht	
3138	3.01.2016	Pino gassi, spazieren Schliersee		Schlaglicht	
3139	4.01.2016	Pino gassi	Boxen	Schlaglicht	
3140	5.01.2016	Pino gassi, TS Jessia Silver abspritzen		Schlaglicht	
3141	6.01.2016	Pino gassi, Holzkirchen, Land Cruiser angeschaut	Boxen	Schlaglicht	
3142	7.01.2016	Maria		Schlaglicht	
3143	8.01.2016	Pino gassi	Boxen	Schlaglicht	
3144	9.01.2016	Pino gassi		Schlaglicht	
3145	10.01.2016	Pino gassi	Boxen	Schlaglicht	
3146	11.01.2016	Pino gassi, Sparkasse wg Darlehen	Boxen	Schlaglicht	
3147	12.01.2016	Maria		Die Minnesota Verschwoerung	
3148	13.01.2016	Maria, Termin Tättowieren		Die Minnesota Verschwoerung	
3149	14.01.2016	JobOSR, Angie Bernried		Die Minnesota Verschwoerung	
3150	15.01.2016	Pino gassi	Boxen	Die Minnesota Verschwoerung	
3151	16.01.2016	Pino gassi	Boxen	Die Minnesota Verschwoerung	
3152	17.01.2016	Pino gassi	Boxen	Die Minnesota Verschwoerung	
3153	18.01.2016	Pino gassi, Verso Inspektion		Die Minnesota Verschwoerung	
3154	19.01.2016	Maria		Die Minnesota Verschwoerung	
3155	20.01.2016	JobOSR		Die Minnesota Verschwoerung	
3156	21.01.2016	JobOSR		Die Minnesota Verschwoerung	
3157	22.01.2016	Pino gassi, Seedrache Taettowieren		Die Minnesota Verschwoerung	
3158	23.01.2016	Pino gassi, Rosenheim McTrek		Die Minnesota Verschwoerung	
3159	24.01.2016	Pino gassi		Die Minnesota Verschwoerung	
3160	25.01.2016	Pino gassi		Die Minnesota Verschwoerung	
3161	26.01.2016	JobOSR, MBO review		Mörderisches Stillwater	
3162	27.01.2016	JobOSR, Trans Izabella		Mörderisches Stillwater	
3163	28.01.2016	JobOSR, Maria		Mörderisches Stillwater	
3164	29.01.2016	Pino gassi		Mörderisches Stillwater	
3165	30.01.2016	Pino gassi, Handy repariert		Mörderisches Stillwater	
3166	31.01.2016	Pino gassi		Mörderisches Stillwater	
3167	1.02.2016	Pino gassi		Mörderisches Stillwater	
3168	2.02.2016	JobOSR		Mörderisches Stillwater	
3169	3.02.2016	JobOSR, Maria		Mörderisches Stillwater	
3170	4.02.2016	JobOSR		Mörderisches Stillwater	
3171	5.02.2016	Pino gassi		Mörderisches Stillwater	
3172	6.02.2016	Pino gassi, Bad Aibling Therme		Mörderisches Stillwater	
3173	7.02.2016	Pino gassi		Nicht ihre Schuld	
3174	8.02.2016	Pino gassi		Nicht ihre Schuld	
3175	9.02.2016	Pino gassi		Nicht ihre Schuld, Lebkuchenmann	
3176	10.02.2016			Lebkuchenmann	
3177	11.02.2016	Angi Bernried		Lebkuchenmann	
3178	12.02.2016	Pino gassi		Lebkuchenmann	
3179	13.02.2016	Pino gassi		Lebkuchenmann	
3180	14.02.2016	Pino gassi		Lebkuchenmann	
3181	15.02.2016	Pino gassi		Lebkuchenmann	
3182	16.02.2016	Maria Stundenhotel		Lebkuchenmann	
3183	17.02.2016	Python, Maria		Lebkuchenmann	
3184	18.02.2016	Maria, Python		Lebkuchenmann	
3185	19.02.2016	Pino gassi, Python		Lebkuchenmann	
3186	20.02.2016	Pino gassi		Lebkuchenmann	
3187	21.02.2016	Pino gassi		Lebkuchenmann	
3188	22.02.2016	Pino gassi, Python		Relic	
3189	23.02.2016	Maria		Relic	
3190	24.02.2016			Relic	
3191	25.02.2016	Maria		Relic	
3192	26.02.2016	Pino gassi		Relic	
3193	27.02.2016	Pino gassi		Relic	
3194	28.02.2016	Pino gassi		Relic	
3195	29.02.2016	Pino gasi		Relic	
3196	1.03.2016	Pino gassi, Pyhton		Relic	
3197	2.03.2016	Python		Relic	
3198	3.03.2016	Zahnarzt, Python		Relic	
3199	4.03.2016	Pino gassi, Python		Relic	
3200	5.03.2016	Pino gassi, Therme Bad Aibling		Relic	
3201	6.03.2016	Pino gasi		Relic	
3202	7.03.2016	Pino gassi		Relic	
3203	8.03.2016	Pino Riffenthal, Maria Hotel übernachtet			
3204	9.03.2016	Maria		Relic	
3205	10.03.2016	Pyhton		Relic	
3206	11.03.2016	Pino gassi		Relic	
3207	12.03.2016	Pino gassi		Relic	
3208	13.03.2016	Pino gassi		Relic	
3209	14.03.2016	Pino gassi, Python		Relic	
3210	15.03.2016	Python, Maria, JobOSR new Release und SF		Guter Bulle, boeser Bulle	
3211	16.03.2016	Python, Maria		Guter Bulle, boeser Bulle	
3212	17.03.2016	Python, JobOSR		Guter Bulle, boeser Bulle	
3213	18.03.2016	Pino gassi, JobOSR		Guter Bulle, boeser Bulle	
3214	19.03.2016	Pino gassi, Therme Bad Aibling		Guter Bulle, boeser Bulle	
3215	20.03.2016	Pino gassi	Boxen	Guter Bulle, boeser Bulle	
3216	21.03.2016	Pino gassi	Boxen	Guter Bulle, boeser Bulle	
3217	22.03.2016	JobOSR		Guter Bulle, boeser Bulle	
3218	23.03.2016	JobOSR		Guter Bulle, boeser Bulle	
3219	24.03.2016	Pino gassi		Guter Bulle, boeser Bulle	
3220	25.03.2016	Pino gassi		Guter Bulle, boeser Bulle	
3221	26.03.2016	Pino gassi		Guter Bulle, boeser Bulle	
3222	27.03.2016	Pino gassi		Guter Bulle, boeser Bulle	
3223	28.03.2016	Pino gassi	Boxen	Die Psychopathen	
3224	29.03.2016	Pino gassi	MTB, Boxen	Die Psychopathen	
3225	30.03.2016	Maria, JobOSR		Die Psychopathen	
3226	31.03.2016	JobOSR, Maria, Angi Bernired		Die Psychopathen	
3227	1.04.2016	Pino gassi		Die Psychopathen	
3228	2.04.2016	Pino gassi, Therme Bad Aibling	MTB	Die Psychopathen	
3229	3.04.2016	Pino gassi	MTB	Die Psychopathen	
3230	4.04.2016	Pino gassi		Die Psychopathen	
3231	5.04.2016	Maria		Die Psychopathen	
3232	6.04.2016			Die Psychopathen	
3233	7.04.2016	Maria		Die Psychopathen	
3234	8.04.2016	Pino gassi		Die Psychopathen	
3235	9.04.2016	Pino gassi, Holz		Die Psychopathen	
3236	10.04.2016	Pino gassi, Schwimmbad Bad Wiessee		Der Chemiker	
3237	11.04.2016	Pino gassi	MTB	Der Chemiker	
3238	12.04.2016	Maria Stundenhotel		Der Chemiker	
3239	13.04.2016			Der Chemiker	
3240	14.04.2016	Maria Stundenhotel		Der Chemiker	
3241	15.04.2016	Pino gassi		Der Chemiker	
3242	16.04.2016	Pino gassi, Therme Bad Aibling	MTB	Der Chemiker	
3243	17.04.2016	Pino gassi	MTB	Der Chemiker	
3244	18.04.2016	Pino gassi	MTB	Der Chemiker	
3245	19.04.2016	Maria		Der Chemiker	
3246	20.04.2016	Maria		Der Chemiker	
3247	21.04.2016	Pyhton xml parser		Paketbombe	
3248	22.04.2016	Pino gassi	MTB	Paketbombe	
3249	23.04.2016	Pino gassi	MTB	Paketbombe	
3250	24.04.2016	Pino gassi	MTB	Paketbombe	
3251	25.04.2016	Pino gassi	MTB	Paketbombe	
3252	26.04.2016	Maria		Paketbombe	
3253	27.04.2016	Maria		Paketbombe	
3254	28.04.2016	Maria		Paketbombe	
3255	29.04.2016	Pino gassi		Paketbombe	
3256	30.04.2016	Pino gassi, Therme Bad Aibling	MTB	Paketbombe	
3257	1.05.2016	Pino gassi	MTB	Die Scharfschuetzen	
3258	2.05.2016	Pino gassi, Manu angerufen	MTB	Die Scharfschuetzen	
3259	3.05.2016	Python		Die Scharfschuetzen	
3260	4.05.2016	Python		Die Scharfschuetzen	
3261	5.05.2016	Pino gassi	MTB	Die Scharfschuetzen	
3262	6.05.2016	Pino gassi		Die Scharfschuetzen	
3263	7.05.2016	Pino Gassi	MTB, Neuhaus Bhf	Die Erzfeinde	
3264	8.05.2016	Pino gassi, Mama telefoniert	MTB, MB Berg	Die Erzfeinde	
3265	9.05.2016	Pino gassi, Manu angerufen, treffen auf Kaffee - ging nicht	MTB	Die Erzfeinde	
3266	10.05.2016	Maria		Die Erzfeinde	
3267	11.05.2016	Maria		Die Erzfeinde	
3268	12.05.2016	Maria, Brief Manu - bekomme aber bestimmt keine Antwort		Die Erzfeinde	
3269	13.05.2016	Pino gassi		Die Erzfeinde	
3270	14.05.2016	Pino gassi, Therme Bad Aibling	MTB - Berg Woernsmuehl	Die Erzfeinde	
3271	15.05.2016	Pino gassi	MTB - Berg Woernsmuehl	Die Erzfeinde	
3272	16.05.2016	Pino gassi, Therme Bad Aibling	MTB - Miesbach	Die Erzfeinde	
3273	17.05.2016	Pino gassi	MTB - Berg Woernsmuehl	Die Erzfeinde	
3274	18.05.2016	Pino gassi	MTB	Die Erzfeinde	
3275	19.05.2016	Pino gassi, Mantel geliefert		Die Erzfeinde	
3276	20.05.2016	Pino gassi, Hut	MTB - Berg Woernsmuehl	Allen wollen Tequila	
3277	21.05.2016	Pino gassi, Holz sägen		Allen wollen Tequila	
3278	22.05.2016	Pino gassi	MTB - Miesbach	Allen wollen Tequila	
3279	23.05.2016	Pino gassi		Allen wollen Tequila	
3280	24.05.2016	Maria, Pino OP		Allen wollen Tequila	
3281	25.05.2016	Maria		Allen wollen Tequila	
3282	26.05.2016	Pino gassi	MTB - Berg Woernsmuehl	Allen wollen Tequila	
3283	27.05.2016	Pino gassi		Allen wollen Tequila	
3284	28.05.2016	Pino gassi	MTB - Berg Woernsmuehl	Allen wollen Tequila	
3285	29.05.2016	Pino gassi	MTB - Miesbach	Allen wollen Tequila	
3286	30.05.2016	Pino gassi		Truck Stop - Rastplatz de Grauens	
3287	31.05.2016			Truck Stop - Rastplatz de Grauens	
3288	1.06.2016			Truck Stop - Rastplatz de Grauens, Kite	
3289	2.06.2016			Kite	
3290	3.06.2016	Pino gassi, Tierazrt		Kite	
3291	4.06.2016	Pino gassi, Holz sägen		Kite	
3292	5.06.2016	Pino gassi	MTB - Berg Woernsmuehl	Kite	
3293	6.06.2016	Pino gassi		Kite	
3294	7.06.2016	python prog, KD telefoniert		Kite	
3295	8.06.2016			Kite	
3296	9.06.2016	Angi Bernried		Kite	
3297	10.06.2016	Pino gassi		Kite	
3298	11.06.2016	Pino gassi, Therme Bad Aibling	MTB - Berg Woernsmuehl	Kite	
3299	12.06.2016	Pino gassi	MTB - Berg Woernsmuehl	Kite	
3300	13.06.2016	Pino gassi		Kite	
3301	14.06.2016	Maria	 Mama, Kerstin telefoniert		Kite
3302	15.06.2016			Kite	
3303	16.06.2016	Maria		Kite	
3304	17.06.2016	Pino gassi		Kite	
3305	18.06.2016	Pino gassi	 Harley Davidson Dyna Low Rider gekauft		painful dependency
3306	19.06.2016	Pino gassi		painful dependency	
3307	20.06.2016	Pino gassi	 Rosenheim Louis Helm gekauft		painful dependency
3308	21.06.2016			So wahr uns Gott helfe	
3309	22.06.2016	Maria Stundenhotel und Neufahrn Mühlseen		So wahr uns Gott helfe	
3310	23.06.2016	Maria getriffen, draussen 	 Helm gekauft		So wahr uns Gott helfe
3311	24.06.2016	Pino gassi, Harley zugelassen		So wahr uns Gott helfe	
3312	25.06.2016	Pino gassi, Holz sägen, TG und Keller raeumen		So wahr uns Gott helfe	
3313	26.06.2016	Pino gassi	 Kerstin telefoniert		So wahr uns Gott helfe
3314	27.06.2016	Pino gassi	 Harley überwiesen	 Sabine 15000,00 Euro für Harley geliehen	
3315	28.06.2016	Maria	 Lederjacke gekauft		So wahr uns Gott helfe
3316	29.06.2016			So wahr uns Gott helfe	
3317	30.06.2016	Maria		So wahr uns Gott helfe	
3318	1.07.2016	Pino gassi		So wahr uns Gott helfe	
3319	2.07.2016	Pino gassi	 mit Chris Harley geholt, Therme Bad Aibling		So wahr uns Gott helfe
3320	3.07.2016	Pino gassi	  Harley gefahren		So wahr uns Gott helfe
3321	4.07.2016	Pino gassi	 Landratsamt		So wahr uns Gott helfe
3322	5.07.2016	Pino gassi	 Lukas Geburtstag		So wahr uns Gott helfe
3323	6.07.2016	Maria		So wahr uns Gott helfe	
3324	7.07.2016			So wahr uns Gott helfe	
3325	8.07.2016	Pino gassi		So wahr uns Gott helfe	
3326	9.07.2016	Pino gassi	 Holz sägen mit Motorsäge	 Harley Sitzpolster	  Harley gefahren
3327	10.07.2016	Pino gassi		So wahr uns Gott helfe	
3328	11.07.2016	Pino gassi, Fahrstunde		So wahr uns Gott helfe	
3329	12.07.2016	Prüfauftrag für Führerschein erhalten		So wahr uns Gott helfe	
3330	13.07.2016	Angi Bernried		Tannenbergs letzter Fall	
3331	14.07.2016	Pino gassi	 HNO	 Louis Jacke und Hose gekauft	
3332	15.07.2016	Pino gassi	 Fahrstunde		Tannenbergs letzter Fall
3333	16.07.2016	Pino gassi	 Therme Bad Aibling		Tannenbergs letzter Fall
3334	17.07.2016	Pino gassi		Tannenbergs letzter Fall	
3335	18.07.2016	Fahrstunde	 HNO		Tannenbergs letzter Fall
3336	19.07.2016	Pino gassi	 Fahrstunde		Tannenbergs letzter Fall
3337	20.07.2016	Pino gassi, Führerschein Prüfung	 erste fahrt mit der Harley		Tannenbergs letzter Fall
3338	21.07.2016	Maria		Tannenbergs letzter Fall	
3339	22.07.2016	Pino gassi	 Augenarzt	 Harley fahren	
3340	23.07.2016	Pino gassi, Harley fahren		Die Schwester	
3341	24.07.2016	Pino gassi	 Harley fahren		Isarbrodeln
3342	25.07.2016	Pino gassi	 Harley fahren		Isarbrodeln
3343	26.07.2016	Maria getroffen und sie hat es beendet		Isarbrodeln	
3344	27.07.2016	Doerr Fuehrerschein Bescheinigung		Isarbrodeln	
3345	28.07.2016	Harley an Arbeit gefahren			
3346	29.07.2016	aerztl. Bescheinigung fuer Fuehrerschein abgegeben		Isarbrodeln	
3347	30.07.2016	Pino gassi	 Harley fahren Sylvenstein	 Therme Bad Aibling	 Essen Dinzler
3348	31.07.2016	Pino gassi	 Harley gefahren		Isarbrodeln
3349	1.08.2016	Pino gassi		Isarbrodeln	
3350	2.08.2016	Harley an Arbeit gefahren		Isarbrodeln	
3351	3.08.2016	Harley an Arbeit gefahren		Isarbrodeln	
3352	4.08.2016	Harley an Arbeit gefahren, Maria SMS		Isarbrodeln	
3353	5.08.2016	Pino gassi, Bauhof MB, Maria SMS		Isarbrodeln	
3354	6.08.2016	Pino gassi, Harley gefahren		Isarbrodeln	
3355	7.08.2016	Pino gassi, Harley gefahren		Isarbrodeln	
3356	8.08.2016	Pino gassi		Isarbrodeln	
3357	9.08.2016	Maria		Isarbrodeln	
3358	10.08.2016	Maria		Isarbrodeln	
3359	11.08.2016	Harley arbeit gefahren		Isarbrodeln	
3360	12.08.2016	Pino gassi		Isarbrodeln	
3361	13.08.2016	Pino gassi	 Harley gefahren	 Louis Rosenheim, Sabine Hose gekauft	
3362	14.08.2016	Pino gassi	 Boot fahren, akku kaputt		Isarbrodeln
3363	15.08.2016	Pino gassi		Isarbrodeln	
3364	16.08.2016	Pino gassi	 Harley Inspektion, Leihmaschine Street Bob		Isarbrodeln
3365	17.08.2016	Pino gassi		Isarbrodeln	
3366	18.08.2016	Pino gassi	 Harley fahren		Isarbrodeln
3367	19.08.2016	Pino gassi		Isarbrodeln	
3368	20.08.2016	Pino gassi	 Harley gefahren, Simsee	 Dinzler essen	
3369	21.08.2016	Pino gassi	 Therme Bad Aibling		
3370	22.08.2016	Pino gassi	  Harley fahren, Ammersee, Kloster Andechs 		Die Schwester
3371	23.08.2016	Pino gassi	 Harley fahren Chiemsee		Die Schwester
3372	24.08.2016	Pino gassi	 Harley fahren Sylvenstein		Die Schwester
3373	25.08.2016	Pino gassi	 Boot kaputt		Der Faenger
3374	26.08.2016	Pino gassi	 Harley fahren, Sylvenstein, Walchensee		Der Faenger
3375	27.08.2016	Pino gassi	 Harley fahren	 Freibad Miesbach	
3376	28.08.2016	Pino gassi	 Harley fahren Samerberg		Der Faenger
3377	29.08.2016	Pino gassi	 Harley gefahren	 Führerschein geholt	
3378	30.08.2016	Pino gassi	 Harley fahren		Der Faenger
3379	31.08.2016	Harley arbeit gefahren		Der Faenger	
3380	1.09.2016	Harley arbeit gefahren		Der Faenger	
3381	2.09.2016	Pino gassi	 Harley fahren		Der Faenger
3382	3.09.2016	Pino gassi	 Harley fahren Achensee, falsch Richtung Innsbruck		Der Faenger
3383	4.09.2016	Pino gassi	 Harley gefahren Thiersee		Der Faenger
3384	5.09.2016	Pino gassi		Der Faenger	
3385	6.09.2016	Angie Bernried		Der Faenger	
3386	7.09.2016	Harley arbeit gefahren		Der Faenger	
3387	8.09.2016	Maria		Der Faenger	
3388	9.09.2016	Pino gassi	 Berkmann	 Kerstin Deinert Sex	
3389	10.09.2016	Pino gassi	 OTT Bad Toelz		Der Faenger
3390	11.09.2016	Pino gassi	 Harley fahren		Der Faenger
3391	12.09.2016	Pino gassi		Der Faenger	
3392	13.09.2016	Harley arbeit gefahren		Der Faenger	
3393	14.09.2016	Pino gassi	 Harley gefahren Sylvenstein, Walchensee		Der Faenger
3394	15.09.2016	Harley arbeit gefahren		Der Faenger	
3395	16.09.2016	Pino gassi		Der Faenger	
3396	17.09.2016	Pino gassi	 Therme Bad Aibling		Der Faenger
3397	18.09.2016	Pino gassi, Harley fahren, rutschig		Der Faenger	
3398	19.09.2016	Pino gassi		Der Faenger	
3399	20.09.2016			Der Faenger	
3400	21.09.2016	Harley arbeit gefahren, sehr nebelig, Handschuhe werden schnell nass	 Pino gassi	 Stutemeyer	
3401	22.09.2016	Pino gassi	 Harley fahren, Simsee	 Pino impfen	
3402	23.09.2016	Pino gassi		Der Faenger	
3403	24.09.2016	Pino gassi	 Harley fahren	 Autoaustellung Miesbach	
3404	25.09.2016	Pino gassi	 Harley fahren, Chiemsee		Der Faenger
3405	26.09.2016	Pino gassi		Der Faenger	
3406	27.09.2016	Mama telefoniert		Der Faenger	
3407	28.09.2016	Pino gassi	 Harley fahren Sylvenstein		Der Faenger
3408	29.09.2016	Harley arbeit gefahren		Himmelhorn	
3409	30.09.2016	Pino gassi		Himmelhorn	
3410	1.10.2016	Pino gassi	 Harley fahren		Himmelhorn
3411	2.10.2016	Pino gassi		Himmelhorn	
3412	3.10.2016	Pino gassi		Himmelhorn	
3413	4.10.2016			Himmelhorn	
3414	5.10.2016	Pino gassi	 Harley fahren		Himmelhorn
3415	6.10.2016	Maria		Himmelhorn	
3416	7.10.2016	Pino gassi		Himmelhorn	
3417	8.10.2016	Pino gassi	 Therme Bad Aibling		Himmelhorn
3418	9.10.2016	Pino gassi	 Harley fahren		Himmelhorn
3419	10.10.2016	Pino gassi		Himmelhorn	
3420	11.10.2016	Maria		Himmelhorn	
3421	12.10.2016	Maria		Himmelhorn	
3422	13.10.2016	Pino gassi, Harley fahren		Himmelhorn	
3423	14.10.2016	Pino gassi		Himmelhorn	
3424	15.10.2016	Pino gassi, Harley fahren		Himmelhorn	
3425	16.10.2016	Pino gassi, Harley fahren		Himmelhorn	
3426	17.10.2016	Pino gassi, Harley fahren		Himmelhorn	
3427	18.10.2016	Maria		Himmelhorn	
3428	19.10.2016	Termin Taettowierer ausgemacht		Himmelhorn	
3429	20.10.2016	Maria		Himmelhorn	
3430	21.10.2016	Pino gassi, Verso Service		Himmelhorn	
3431	22.10.2016	Pino gassi, Harley  fahren um den Chiemsee		Himmelhorn	
3432	23.10.2016	Pino gassi, Harley fahren		Himmelhorn	
3433	24.10.2016	Pino gassi, Physio , Harley fahren		Himmelhorn	
3434	25.10.2016	Maria		Himmelhorn	
3435	26.10.2016	Pino gassi, Taettowieren		Himmelhorn	
3436	27.10.2016	Pino gassi, Harley fahren		Himmelhorn	
3437	28.10.2016	Pino gassi		Himmelhorn	
3438	29.10.2016	Pino gassi, Harley fahren		Himmelhorn	
3439	30.10.2016	Pino gassi, Harley fahren		Himmelhorn	
3440	31.10.2016	Pino gassi, Harley fahren		Tod in Schweden	
3441	1.11.2016	Pino gassi, Harley putzen		Tod in Schweden	
3442	2.11.2016	Angi Bernried		Tod in Schweden	
3443	3.11.2016				
3444	4.11.2016	Pino gassi		Tod in Schweden	
3445	5.11.2016	Pino gassi, Harley Ölwechsel, Therme Bad Aibling		Tod in Schweden	
3446	6.11.2016	Pino gassi		Tod in Schweden	
3447	7.11.2016	Pino gassi		Tod in Schweden	
3448	8.11.2016	Maria Stundenhotel		Tod in Schweden	
3449	9.11.2016	Pino gassi, Ölfilter gewechselt		Tod in Schweden	
3450	10.11.2016	Maria		Tod in Schweden	
3451	11.11.2016	Pino gassi		Tod in Schweden	
3452	12.11.2016	Pino gassi, Harley Batterie ausgebaut		Tod in Schweden	
3453	13.11.2016	Pino gassi		Tod in Schweden	
3454	14.11.2016	Pino gassi		Im Wald	
3455	15.11.2016	Maria		Im Wald	
3456	16.11.2016	Pino gassi, Taettowieren		Im Wald	
3457	17.11.2016	Maria		Im Wald	
3458	18.11.2016	Pino gassi		Im Wald	
3459	19.11.2016	Pino gassi, Holz sägen		Im Wald	
3460	20.11.2016	Pino gassi		Im Wald	
3910	14.02.2018			Feingeist	
3461	21.11.2016	BMC Contractor - Luis		Im Wald	
3462	22.11.2016	Maria		Im Wald	
3463	23.11.2016	Krank		Im Wald	
3464	24.11.2016	Pino gassi		Im Wald	
3465	25.11.2016	Pino gassi, Sabine Geburstag, Mama telefoniert		Im Wald	
3466	26.11.2016	Pino gassi, Therme Bad Aibling		Im Wald	
3467	27.11.2016	Pino gassi, Kerstin telefoniert		Im Wald	
3468	28.11.2016	Pino gassi		Im Wald	
3469	29.11.2016			Im Wald	
3470	30.11.2016			Im Wald	
3471	1.12.2016	Maria		Im Wald	
3472	2.12.2016	Pino gassi		Im Wald	
3473	3.12.2016	Pino gassi		Im Wald	
3474	4.12.2016	Pino gassi		Der Turbo von Marrakesch	
3475	5.12.2016	Pino gassi		Der Turbo von Marrakesch	
3476	6.12.2016	Pino gassi		Der Turbo von Marrakesch	
3477	7.12.2016	Pino gassi, München Augenklinik		Der Turbo von Marrakesch	
3478	8.12.2016	Pino gassi, München Augenklinik		Der Turbo von Marrakesch	
3479	9.12.2016	Pino gassi		Der Turbo von Marrakesch	
3480	10.12.2016	Pino gassi, München Augenklinik		Der Turbo von Marrakesch	
3481	11.12.2016	Pino gassi		Der Turbo von Marrakesch	
3482	12.12.2016	Pino gassi		Der Turbo von Marrakesch	
3483	13.12.2016			Der Turbo von Marrakesch	
3484	14.12.2016			Unkrautkiller	
3485	15.12.2016	Maria		Unkrautkiller	
3486	16.12.2016	Pino gassi		Unkrautkiller	
3487	17.12.2016	Pino gassi			
3488	18.12.2016	Pino gassi		Unkrautkiller	
3489	19.12.2016	Pino gassi, Maria beendet		Unkrautkiller	
3490	20.12.2016	Pino gassi			
3491	21.12.2016	Pino gassi			
3492	22.12.2016	Pino gassi, Sabine Augenklinik OP		Unkrautkiller	
3493	23.12.2016	Pino gassi		Unkrautkiller	
3494	24.12.2016	Pino gassi, Dauerauftrag geändert auf 465,00		Unkrautkiller	
3495	25.12.2016	Pino gassi		Unkrautkiller	
3496	26.12.2016	Pino gassi		Unkrautkiller	
3497	27.12.2016	Pino gassi		Unkrautkiller	
3498	28.12.2016	Mama telefoniert, Job Absage		Champagnerblut	
3499	29.12.2016	Pino gassi, Mama Geburtstag, telefoniert		Champagnerblut	
3500	30.12.2016	Pino gassi		Champagnerblut	
3501	31.12.2016	Pino gassi, Ingrid SMS, WC kaufen		Champagnerblut	
3502	1.01.2017	Pino gassi, Mama telefoniert, Maria SMS	MTB fahen	Champagnerblut	will sie nicht mehr treffen, lass mich nicht weiter verarschen, miesen Character
3503	2.01.2017	Pino gassi		Champagnerblut	
3504	3.01.2017	Pino gassi		Champagnerblut	
3505	4.01.2017	Pino gassi, Biker Stiefel House of Flames gekauft		Champagnerblut	
3506	5.01.2017	Pino gassi		Champagnerblut	
3507	6.01.2017	Pino gassi, KD SMS, Whiskey kuchen gebacken		Champagnerblut	
3508	7.01.2017	Pino gassi, Mama telefoniert		Champagnerblut	
3509	8.01.2017	Pino gassi		Champagnerblut	
3510	9.01.2017	Pino gassi, Handschuhe bestellt		Champagnerblut	
3511	10.01.2017	TS Maggi		Champagnerblut	
3512	11.01.2017	System reboot sudo entry		Champagnerblut	
3513	12.01.2017	Pino gassi, Handschuhe Sabine bestellt		Champagnerblut	
3514	13.01.2017	Pino gassi		Schwarzes Netz	
3515	14.01.2017	Pino gassi		Schwarzes Netz	
3516	15.01.2017	Pino gassi		Schwarzes Netz	
3517	16.01.2017	Pino gassi		Schwarzes Netz	
3518	17.01.2017			Schwarzes Netz	
3519	18.01.2017			Schwarzes Netz	
3520	19.01.2017			Schwarzes Netz	
3521	20.01.2017	Pino gassi		Schwarzes Netz	
3522	21.01.2017	Pino gassi		Schwarzes Netz	
3523	22.01.2017	Pino gassi		Schwarzes Netz	
3524	23.01.2017	Pino gassi		Schwarzes Netz	
3525	24.01.2017	Schule		Schwarzes Netz	
3526	25.01.2017	BMC onsite		Schwarzes Netz	
3527	26.01.2017			Schwarzes Netz	
3528	27.01.2017	Pino gassi		Schwarzes Netz	
3529	28.01.2017	Pino gassi, Kuchen backen		Schwarzes Netz	
3530	29.01.2017	Pino gassi, Dinzler		Schwarzes Netz	
3531	30.01.2017	Pino gassi		Schwarzes Netz	
3532	31.01.2017	Pino gassi		Schwarzes Netz	
3533	1.02.2017	Gorschlüter wg HD Reifen		Schwarzes Netz	
3534	2.02.2017	Zahnzarzt		Schwarzes Netz	
3535	3.02.2017	Pino gassi		Schwarzes Netz	
3536	4.02.2017	Pino gassi, Therme Bad Aibling, Dinzler		Gas und Galle	
3537	5.02.2017	Pino gassi		Gas und Galle	
3538	6.02.2017	Pino gassi		Gas und Galle	
3539	7.02.2017	EMA V900 upgrade		Gas und Galle	
3540	8.02.2017	MBO		Gas und Galle	
3541	9.02.2017			Gas und Galle	
3542	10.02.2017	Pino gassi, Cycle Factory wegen Reifen wechsel		Gas und Galle	
3543	11.02.2017	Pino gassi, Krapfen backen		Gas und Galle	
3544	12.02.2017	Pino gassi, Flur wischen		Gas und Galle	
3545	13.02.2017	Pino gassi		Gas und Galle	
3546	14.02.2017	Control-M Tag München		Gas und Galle	
3547	15.02.2017	BMC R&D onsite, Harley Boots		Gas und Galle	
3548	16.02.2017	Pino gassi		Gas und Galle	
3549	17.02.2017	Pino gassi, IMOT München, Lederweste gekauft		Gas und Galle	
3550	18.02.2017	Pino gassi		Gas und Galle	
3551	19.02.2017	Pino gassi, Dinzler		Mr K	
3552	20.02.2017	Pino gassi		Mr K	
3553	21.02.2017	BMC WCM session		Mr K	
3554	22.02.2017	BMC WCM session		Mr K	
3555	23.02.2017	MUCCT4D und MUCCT1T auf V900 upgrade		Mr K	
3556	24.02.2017	Pino gassi, Allianz Harley ummelden		Mr K	
3557	25.02.2017	Pino gassi, Gemuese, Krapfen, Therme Bad Aibling		Mr K	
3558	26.02.2017	Pino gassi		Mr K	
3559	27.02.2017	Pino gassi, Manu geholfen mit Presentation, Harley Batterie einbauen, Motorrad Kleidung		Mr K	
3560	28.02.2017	Pino gassi, Juergen gestorben		Mr K	
3561	1.03.2017	Pino gassi, Eybel Pralinen, Harley umgemeldet 03 bis 11		Mr K	
3562	2.03.2017	Pino gassi, Harley fahren, Cyclic Factory wg Auspuff		Mr K	
3563	3.03.2017	Pino gassi, Harley fahren		Mr K	
3564	4.03.2017	Pino gassi, Harley fahren, Herrmannsdorfer		Der Nagelkiller	
3565	5.03.2017	Pino gassi, Harley fahren		Der Nagelkiller	
3566	6.03.2017	Pino gassi, KH Agatharied MRT		Der Nagelkiller	
3567	7.03.2017	Pino gassi, Dr Berkmann, Gambach, SMS Maria nur Unsinn und warum ueberhaupt angeschrieben			
3568	8.03.2017	Pino gassi, Gambach, Juergen Beerdigung, Birgit getroffen, Birgit hat keine Zeit am Abend			
3569	9.03.2017	Pino gassi, Ingird SMS hat keine Zeit, Angi Bernried, SMS Maria, aber das ist einfach zu doof 		Der Nagelkiller	
3570	10.03.2017	Pino gassi		Der Nagelkiller	
3571	11.03.2017	Pino gassi	 Harley fahren		Der Nagelkiller
3572	12.03.2017	Pino gassi, Harley fahren Tatzelwurm		Der Nagelkiller	
3573	13.03.2017	Pino gassi, Manu zu Hause wegen Presentation gefragt, Harley fahren Sudelfeld, Tatzelwurm		Der Nagelkiller	
3574	14.03.2017	Hochzeitstag, MUCCT3T-V900, MUCCT4T-V900		Der Nagelkiller	
3575	15.03.2017	Harley Reifen Wechsel Cycle Factory		Der Nagelkiller	
3576	16.03.2017	Harley Arbeit gefahren, MUCCT6T-V900, Rene lunch		Der Nagelkiller	
3577	17.03.2017	Pino gassi, Harley fahren, Hermannsdorfer		Der Nagelkiller	
3578	18.03.2017	Pino gassi, Therme Bad Aibling		Der Nagelkiller	
3579	19.03.2017	Pino gassi		Der Nagelkiller	
3580	20.03.2017	Pino gassi, Harley fahren - Tatzelwurm, MUCCT5P-V900		Der Nagelkiller	
3581	21.03.2017	MUCCT5T-V900, MUCCT4P-V900		Der Nagelkiller	
3582	22.03.2017	Cycle Factory - Jekill and Hyde bestellt, MUCCT1P-V900		Der Nagelkiller	
3583	23.03.2017	Harley Arbeit gefahren, MUCCT3P-V900, Pino einschläfern		Der Nagelkiller	
3584	24.03.2017			Der Nagelkiller	
3585	25.03.2017	Harley fahren		Der Nagelkiller	
3586	26.03.2017	Harley fahren, BOB fahren Bayrischzell		Leutwyler	
3587	27.03.2017	Harley fahren		Leutwyler	
3588	28.03.2017	Harley arbeit fahren, ACS workshop		Leutwyler	
3589	29.03.2017	Harley arbeit fahren, ACS workshop		Leutwyler	
3590	30.03.2017	Harley arbeit fahren, ACS workshop		Leutwyler	
3591	31.03.2017	Harley fahren		Leutwyler	
3592	1.04.2017	Harley fahren, Sylvenstein, Bad Kohlgrub		Psychose	
3593	2.04.2017	Harley fahren		Psychose	
3594	3.04.2017	MUCCT6P-V900		Psychose	
3595	4.04.2017	Manu telefoniert, Stop JobOSR Development		Die Brandmoerder	
3596	5.04.2017	Dr. Dörr, Angie Bernried		Die Brandmoerder	
3597	6.04.2017	Semmeln holen		Die Brandmoerder	
3598	7.04.2017			Die Brandmoerder	
3599	8.04.2017	Harley fahren Tatzelwurm	MTB Schliersee	Die Brandmoerder	
3600	9.04.2017	Flur wischen, Harley fahren Kiefersfelden, Kufstein	MTB Schliersee	Die Brandmoerder	
3601	10.04.2017	Halrey fahren, Eybel Pralinen, Verso Sommerreifen	MTB Hausham	Die Brandmoerder	
3602	11.04.2017	Harley Inspektion	MTB Schliersee	Die Brandmoerder	
3603	12.04.2017	Harley Inspektion holen	MTB Schliersee - Berg	Die Brandmoerder	
3604	13.04.2017	Dauerauftrag Harley 100 Euro pro Monat an Sabine, Lammfleisch		Die Brandmoerder	
3605	14.04.2017	Harley fahren, Reit im Winkel, Ruhpolding		Die Brandmoerder	
3606	15.04.2017	Harley fahren, Herrmannsdorfer		Die Brandmoerder	
3607	16.04.2017			Die Brandmoerder	
3608	17.04.2017	Gulasch gekocht	MTB Miesbach	Angst	
3609	18.04.2017	Verso Werkstatt wg Fehlermeldung, Pino Steuer abgemeldet, DSL Anchluss 1und1		Der Fledermausmann	
3610	19.04.2017	Dinzler		Der Fledermausmann	
3611	20.04.2017	Harley Jekyll and Hyde Auspuff montiert, Pizza backen		Der Fledermausmann	
3612	21.04.2017	Harley fahren		Der Fledermausmann	
3613	22.04.2017	Harley fahren, Lammbraten		Der Fledermausmann	
3614	23.04.2017	BOB fahren Bayrischzell		Der Fledermausmann	
3615	24.04.2017	Harley fahren		Der Fledermausmann	
3616	25.04.2017	DR side installation		Der Fledermausmann	
3617	26.04.2017				
3618	27.04.2017	API Jobs	Hallenbad Erding	Der Fledermausmann	
3619	28.04.2017	Holz liefern		Der Fledermausmann	
3620	29.04.2017	Harley fahren	 Holz einrraeumen		Der Fledermausmann
3621	30.04.2017	Harley fahren		Der Fledermausmann	
3622	1.05.2017	Harley fahren	MTB fahren	Der Fledermausmann	
3623	2.05.2017	LED Scheinwerfer Harley bestellt	MTB fahren	Der Fledermausmann	
3624	3.05.2017	Tina Sex Hotel		Der Fledermausmann	
3625	4.05.2017	24h Blutdruck, Manu telefoniert		Der Fledermausmann	
3626	5.05.2017	Unterhaching Sex, einkaufen Louis , Lederjacke, Lederhose		Der Fledermausmann	
3627	6.05.2017	Harley fahren		Der Fledermausmann	
3628	7.05.2017	Harley LED Scheinwerfer montiert, Käsekuchen, Flur putzen		Der Fledermausmann	
3629	8.05.2017			Der Fledermausmann	
3630	9.05.2017	Maria SMS		Der Fledermausmann	
3631	10.05.2017	Harley fahren		Der Fledermausmann	
3632	11.05.2017	Harley arbeit fahren, Fonic Karte aufgeladen, Maria SMS	 Kreisverlehr Unterlaus angefahren		
3633	12.05.2017	Augenarzt Dr. Kau, Maria SMS			
3634	13.05.2017	Harley fahren		Der Fledermausmann	
3635	14.05.2017	Kuchen backen, Mama telefoniert		Der Fledermausmann	
3636	15.05.2017	Toyota RAV4 gekauft, Maria SMS wg treffen		Der Fledermausmann	
3637	16.05.2017	Harley arbeit fahren, Maria Café Münchener Freiheit getroffen		Der Fledermausmann	
3638	17.05.2017	Harley arbeit fahren, Maria SMS, BMC Dominic essen		Der Fledermausmann	
3639	18.05.2017	Harley fahren		Der Fledermausmann	
3640	19.05.2017	Toyota RAV4 gekauft, Maria SMS		Der Fledermausmann	
3641	20.05.2017	Harley fahren			
3642	21.05.2017	Harley fahren, kuchen backen		Der Fledermausmann	
3643	22.05.2017	Harley fahren, beinahe Vorfahrt genommen		Der Fledermausmann	
3644	23.05.2017	Harley arbeit fahren	MTB fahren, Uebungen		
3645	24.05.2017	Angi Bernried, Eigentümer Versammlung, neben Manu gesessen 	Uebungen	Der Fledermausmann	
3646	25.05.2017	Harley waschen, Auto saugen und ausräumen, Apfelkuchen backen	MTB fahren	Der Fledermausmann	
3647	26.05.2017	RAV4 uebergeben, Lieferung Kevlar Hose, Harley fahren		Der Fledermausmann	
3648	27.05.2017	Harley fahren	MTB fahren	Der Fledermausmann	
3649	28.05.2017	Harley fahren	MTB fahren	Der Fledermausmann	
3650	29.05.2017	Harley fahren, Hermannsdorfer, Protektoren geliefert		Der Fledermausmann	
3651	30.05.2017	RAV4 erste fahrt ins Büro / Erding	schwimmen Freibad	Der Fledermausmann	
3652	31.05.2017	Kevlar Hoodie geliefert	schwimmen Freibad	Der Fledermausmann	
3653	1.06.2017	Harley arbeit fahren, Maria SMS			
3654	2.06.2017	RAV4 uebergeben		Post Mortem - Tränen aus Blut	
3655	3.06.2017	Harley fahren Salzburg, Berchtesgaden, Koenigssee		Post Mortem - Tränen aus Blut	
3656	4.06.2017	Kuchen gebacken		Post Mortem - Tränen aus Blut	
3657	5.06.2017	Harley fahren		Post Mortem - Tränen aus Blut	
3658	6.06.2017	Physio MT, Maria SMS		Post Mortem - Tränen aus Blut	
3659	7.06.2017	BMC	schwimmen Freibad	Post Mortem - Tränen aus Blut	
3660	8.06.2017	Harley arbeit fahren, Maria SMS		Post Mortem - Tränen aus Blut	
3661	9.06.2017	Physio MT		Post Mortem - Tränen aus Blut	
3662	10.06.2017	Kuchen backen, Pizza backen	MTB	Post Mortem - Tränen aus Blut	
3663	11.06.2017	Harley fahren	MTB - Neuhaus Bhf	Post Mortem - Tränen aus Blut	
3664	12.06.2017		MTB fahren	Post Mortem - Tränen aus Blut	
3665	13.06.2017	Harley fahren, Physio MT		Post Mortem - Tränen aus Blut	
3666	14.06.2017	Harley arbeit fahren, Mama telefoniert, Maria SMS, Kerstin telefoniert, Chrissy SMS	schwimmen Freibad	Post Mortem - Tränen aus Blut	
3667	15.06.2017	Harley fahren	MTB Schliersee	Post Mortem - Tränen aus Blut	
3668	16.06.2017	Harley fahren, Physio MT		Post Mortem - Tränen aus Blut	
3669	17.06.2017	Harley fahren Mittenwald		Post Mortem - Tränen aus Blut	
3670	18.06.2017	Harley fahren		Post Mortem - Tränen aus Blut	
3671	19.06.2017	Harley fahren, Rosenheim Zoll Auto Steuer frei, Maria SMS wg treffen, Physio MT		Post Mortem - Tränen aus Blut	
3672	20.06.2017	Harley arbeit fahren	schwimmen Freibad	Post Mortem - Tränen aus Blut	
3673	21.06.2017	Maria SMS	schwimmen Freibad	Post Mortem - Tränen aus Blut	
3674	22.06.2017	Harley arbeit fahren, Burger King ED	schwimmen Freibad	Post Mortem - Zeit der Asche	
3675	23.06.2017	Manu total sexy, im T-Shirt zeichnet sich alles ab, Harley fahren, Physio MT		Post Mortem - Zeit der Asche	
3676	24.06.2017	Harley fahren	MTB Schliersee	Post Mortem - Zeit der Asche	
3677	25.06.2017	Hefegebaeck		Post Mortem - Zeit der Asche	
3678	26.06.2017	Kerstin , Mama telefoniert			
3679	27.06.2017	WCM workshop	schwimmen Kronthaler	Post Mortem - Zeit der Asche	
3680	28.06.2017	Physio		Post Mortem - Zeit der Asche	
3681	30.06.2017	Physio MT		Post Mortem - Zeit der Asche	
3682	1.07.2017	Wurstgulasch gekocht, Harley fahren			
3683	2.07.2017	Flur putzen	MTB Schliersee	Post Mortem - Zeit der Asche	
3684	3.07.2017			Post Mortem - Zeit der Asche	
3685	4.07.2017	Harley arbeit fahren	schwimmen Freibad		
3686	5.07.2017	Lukas Geburtstag		Post Mortem - Zeit der Asche	
3687	6.07.2017	Harley arbeit fahren, Maria SMS wg Kronthaler treffen	schwimmen Kronthaler	Post Mortem - Zeit der Asche	Warum versuche ich es immer wieder ….
3688	7.07.2017	Manu gewesen, schöne kleine Brüste im Shirt	 Physio		Post Mortem - Zeit der Asche
3689	8.07.2017	Harley fahren, Maria SMS treffen abgesagt	MTB, schwimmen Schliersee	Post Mortem - Zeit der Asche	Jetzt werde ich das unterlassen die MV nochmal anzuschreiben
3690	9.07.2017	Kerstin telefoniert	MTB, schwimmen Schliersee	Post Mortem - Zeit der Asche	
3691	10.07.2017	Kerstin,  Schliersbergalm, essen Bräuwirth		Post Mortem - Zeit der Asche	
3692	11.07.2017	essen Hopf  Weissbräustüberl	schwimmen Kronthaler	Post Mortem - Zeit der Asche	
3693	12.07.2017	Kerstin telefoniert	schwimmen Kronthaler	Post Mortem - Zeit der Asche	
3694	13.07.2017	Harley fahren	schwimmen Kronthaler	Post Mortem - Zeit der Asche	
3695	14.07.2017	Physio		Post Mortem - Zeit der Asche	
3696	15.07.2017	Harley fahren, Hopfbräu essen	MTB, schwimmen Schliersee	Post Mortem - Zeit der Asche	
3697	16.07.2017	Harley fahren	MTB, schwimmen Schliersee	Post Mortem - Zeit der Asche	
3698	17.07.2017	Harley fahren		Toedliche Ferien	
3699	18.07.2017	Harley arbeit fahren	schwimmen Kronthaler	Toedliche Ferien	
3700	19.07.2017	Harley arbeit fahren, BMC WCM workshop	schwimmen Kronthaler	Toedliche Ferien	
3701	20.07.2017	Harley arbeit fahren, regen nach Hause gefahren, EK SMS	schwimmen Kronthaler	Toedliche Ferien	
3702	21.07.2017	Lukas Schulabschluss, Harley fahren, Physio		Toedliche Ferien	
3703	22.07.2017	Harley fahren	MTB, schwimmen Schliersee	Toedliche Ferien	
3704	23.07.2017	Harley putzen, Paletten aus Anhänger	MTB, schwimmen Schliersee	Toedliche Ferien	
3705	24.07.2017	BG Geburtstags SMS		Toedliche Ferien	
3706	25.07.2017	Termin Harley Inspektion		Toedliche Ferien	
3707	26.07.2017	Mercure Hotel Elena		Toedliche Ferien	
3708	27.07.2017	Neopren Shorty schwimmen	schwimmen Kronthaler		
3709	28.07.2017	Harley fahren		Toedliche Ferien	
3710	29.07.2017	Harley fahren Wolfgang See, Hopf Bräustüberl essen	MTB, schwimmen Schliersee	Toedliche Ferien	
3711	30.07.2017	Harley fahren, Flur putzen	MTB Miesbach	Toedliche Ferien	
3712	31.07.2017	Maria SMS, Sparkasse Darlehen		Toedliche Ferien	
3713	1.08.2017	Maria Kronthaler Weiher, Maria Sex	schwimmen Kronthaler	Toedliche Ferien	
3714	2.08.2017	Harley fahen - House of flames		Post Mortem - Tage des Zorns	
3715	3.08.2017	Harley arbeit fahren	schwimmen Kronthaler	Post Mortem - Tage des Zorns	
3716	4.08.2017			Post Mortem - Tage des Zorns	
3717	5.08.2017	Paletten sägen, Harley fahren	MTB, schwimmen Schliersee	Post Mortem - Tage des Zorns	
3718	6.08.2017			Post Mortem - Tage des Zorns	
3719	7.08.2017	Physio		Post Mortem - Tage des Zorns	
3720	8.08.2017	Harley arbeit fahren	schwimmen Kronthaler	Post Mortem - Tage des Zorns	
3721	9.08.2017	MV Sex, House of Flames	schwimmen Kronthaler	Post Mortem - Tage des Zorns	
3722	10.08.2017	MV Sex	schwimmen Kronthaler	Post Mortem - Tage des Zorns	
3723	11.08.2017	Physio		Post Mortem - Tage des Zorns	
3724	12.08.2017	Paletten sägen, Therme Bad Aibling		Post Mortem - Tage des Zorns	
3725	13.08.2017	Harley fahren		Post Mortem - Tage des Zorns	
3726	14.08.2017	Physio		Post Mortem - Tage des Zorns	
3727	15.08.2017	Harley fahren	MTB fahren	Post Mortem - Tage des Zorns	
3728	16.08.2017	Mia Sex Mercure Hotel, Mama telefoniert	schwimmen Kronthaler	Post Mortem - Tage des Zorns	Panik beim schwimmen vor der Insel
3729	17.08.2017	MV Sex	schwimmen Kronthaler	Post Mortem - Tage des Zorns	
3730	18.08.2017	MV Telegram		Post Mortem - Tage des Zorns	
3731	19.08.2017	Paletten sägen		Post Mortem - Tage des Zorns	
3732	20.08.2017	Harley fahren, Kino Griesnockerlaffaere	MTB Neuhaus	Quercher und das Seelenrasen 	
3733	21.08.2017	Paletten sägen, Harley fahren	MTB Wörnsmühler Berg	Quercher und das Seelenrasen 	
3734	22.08.2017	Paletten sägen, Wendelstein Zahnradbahn 	MTB Schliersee	Quercher und das Seelenrasen 	
3735	23.08.2017	Paletten sägen, Harley fahren	MTB Hausham	Quercher und das Seelenrasen 	
3736	24.08.2017	MTB gestürzt	MTB Schliersee, schwimmen	Quercher und das Seelenrasen 	
3737	25.08.2017				
3738	26.08.2017	Gambach fahren			
3739	27.08.2017	Gambach			
3740	28.08.2017	Gambach nach Hausham, Harley fahren		Quercher und das Seelenrasen 	
3741	29.08.2017	Harley fahren zum Wilder Kaiser Tirol		Quercher und das Seelenrasen 	
3742	30.08.2017	Harley fahren Sylvenstein		Quercher und das Seelenrasen 	
3743	31.08.2017	Harley fahren Sudelfeld, KH Agatharied Thorax Röntgen, Helm geliefert		Quercher und das Seelenrasen 	
3744	1.09.2017			Quercher und das Seelenrasen 	
3745	2.09.2017	Rosenheim einkaufen		Quercher und das Seelenrasen 	
3746	3.09.2017			Quercher und das Seelenrasen 	
3747	4.09.2017	Harley fahren		Rissiges Eis	
3748	5.09.2017	Paletten sägen		Rissiges Eis	
3749	6.09.2017	Paletten sägen, Harley fahren		Rissiges Eis	
3750	7.09.2017	Harley fahren Dorfen		Rissiges Eis	
3751	8.09.2017	Harley fahren vormitttag und abend		Rissiges Eis	
3752	9.09.2017	Paletten sägen, Therme Bad Aibling		Rissiges Eis	
3753	10.09.2017	Schnitzel braten		Rissiges Eis	
3754	11.09.2017			Rissiges Eis	
3755	12.09.2017			Rissiges Eis	
3756	13.09.2017	Anhänger Paletten, IPAD 4 gebraucht, 		Rissiges Eis	
3757	14.09.2017	Tiziana Jabber		Rissiges Eis	
3758	15.09.2017			Rissiges Eis	
3759	16.09.2017	House of Flames 2018 Modelle, 2 Mädels Stundenhotel, Therme Bad Aibling, Maxlrainer Bräustüberl			
3760	17.09.2017	TS, Tortellini gekocht		Rissiges Eis	
3761	18.09.2017			Rissiges Eis	
3762	19.09.2017				
3763	20.09.2017	Angi Bernried		Rissiges Eis	
3764	21.09.2017	Harley Arbeit gefahren, Geek game		Rissiges Eis	
3765	22.09.2017	Harley fahren		Rissiges Eis	
3766	23.09.2017	Harley fahren, Braeustueberl Maxlrain Biergarten essen	MTB Schliersee	Rissiges Eis	
3767	24.09.2017	Pizza backen, Flur putzen	MTB Schliersee	Rissiges Eis	
3768	25.09.2017	Harley fahren		Die letzte Runde	
3769	26.09.2017	Harley arbeit fahren		Die letzte Runde	
3770	27.09.2017	Harley arbeit fahren, meeting Tiziana		Die letzte Runde	
3771	28.09.2017	Harley arbeit fahren		Die letzte Runde	
3772	29.09.2017	Harley fahren		Die letzte Runde	
3773	30.09.2017	harley fahren		Die letzte Runde	
3774	1.10.2017	Käsekuchen backen, Wirsing kochen		Die letzte Runde	
3775	2.10.2017	Paletten sägen, Anhänger	MTB Schliersee	Die letzte Runde	
3776	3.10.2017			Die letzte Runde	
3777	4.10.2017		Trampolin	Die letzte Runde	
3778	5.10.2017	Anhänger TÜV	Trampolin	Die letzte Runde	
3779	6.10.2017		Trampolin	Die letzte Runde	
3780	7.10.2017	Kochen Kartoffelpuffer	Trampolin	Die letzte Runde	
3781	8.10.2017		Trampolin	Die letzte Runde	
3782	9.10.2017			Die letzte Runde	
3783	10.10.2017	BMC essen 	Trampolin	Die letzte Runde	
3784	11.10.2017			Die letzte Runde	
3785	12.10.2017	Harley Arbeit fahren		Die letzte Runde	
3786	13.10.2017	Harley fahren		Die letzte Runde	
3787	14.10.2017	Harley fahren Sylvenstein, Kufstein, Thiersee	MTB Schliersee	Die letzte Runde	
3788	15.10.2017	Harley fahren	MTB Schliersee	Die letzte Runde	
3789	16.10.2017	Harley fahren		Die letzte Runde	
3790	17.10.2017	Harley Arbeit fahren		Die letzte Runde	
3791	18.10.2017	Harley Arbeit fahren	Trampolin	Die letzte Runde	
3792	19.10.2017	Angi Bernried		Die letzte Runde	
3793	20.10.2017			Die letzte Runde	
3794	21.10.2017	McTrek	Trampolin	Quercher und der Blutfall	
3795	22.10.2017		Trampolin	Quercher und der Blutfall	
3796	23.10.2017	Winterreifen	Trampolin	Quercher und der Blutfall	
3797	24.10.2017	Zahnzarzt Huber, Dr. Bachmaier		Quercher und der Blutfall	Maria SMS, eigentlich ist sie nervig, keine Ahnung warum ich geschrieben habe
3798	25.10.2017		Trampolin	Quercher und der Blutfall	stehe mal zur Entscheidung und schreibe nicht mehr
3799	26.10.2017	Harley arbeit fahren		Quercher und der Blutfall	
3800	27.10.2017		Trampolin	Quercher und der Blutfall	
3801	28.10.2017	Harley fahren		Quercher und der Blutfall	
3802	29.10.2017			Quercher und der Blutfall	
3803	30.10.2017	Holz sägen	Trampolin	Quercher und der Blutfall	
3804	31.10.2017	Harley fahren		Quercher und der Blutfall	
3805	1.11.2017		Trampolin	Quercher und der Blutfall	
3806	2.11.2017	Holz sägen, Harley fahren		Quercher und der Blutfall	
3807	3.11.2017	Holz sägen		Totenfang - David Hunter	
3808	4.11.2017	Harley fahren		Totenfang - David Hunter	
3809	5.11.2017	Dinzler		Totenfang - David Hunter	
3810	6.11.2017		Trampolin	Totenfang - David Hunter	
3811	7.11.2017			Totenfang - David Hunter	
3812	8.11.2017			Totenfang - David Hunter	
3813	9.11.2017			Totenfang - David Hunter	
3814	10.11.2017			Totenfang - David Hunter	
3815	11.11.2017	Therme Bad Aibling		Totenfang - David Hunter	
3816	12.11.2017	Krapfen backen		Totenfang - David Hunter	
3817	13.11.2017			Totenfang - David Hunter	
3818	14.11.2017			Totenfang - David Hunter	
3819	15.11.2017			Mooresschwaerze	
3820	16.11.2017			Mooresschwaerze	
3821	17.11.2017	Harley Ölwechsel mit Filter		Mooresschwaerze	
3822	18.11.2017	Holz sägen		Mooresschwaerze	
3823	19.11.2017	Rosenkohl kochen, Harley Batterie ausbauen, Flur putzen		Mooresschwaerze	
3824	20.11.2017	Lindner Schliersee Gutschein		Mooresschwaerze	
3825	21.11.2017			Mooresschwaerze	
3826	22.11.2017	Dörr 24h Blutdruck, REST API		Mooresschwaerze	
3827	23.11.2017	Termin Dörr		Mooresschwaerze	
3828	24.11.2017	Sabine Geburtstag, Mama telefoniert		Mooresschwaerze	
3829	25.11.2017	Holz sägen, Wirsing kochen, Kerstin telefoniert		Mooresschwaerze	
3830	26.11.2017			Mooresschwaerze	
3831	27.11.2017			Mooresschwaerze	
3832	28.11.2017			Mooresschwaerze	
3833	29.11.2017	zu hause arbeiten		Mooresschwaerze	
3834	30.11.2017	zu hause arbeiten		Mooresschwaerze	
3835	1.12.2017			Engelsschlaf	
3836	2.12.2017	Lamm kochen		Engelsschlaf	
3837	3.12.2017			Engelsschlaf	
3838	4.12.2017			Engelsschlaf	
3839	5.12.2017			Engelsschlaf	
3840	6.12.2017			Engelsschlaf	
3841	7.12.2017	github		Engelsschlaf	
3842	8.12.2017	github		Engelsschlaf	
3843	9.12.2017	Bolognese kochen		Engelsschlaf	
3844	10.12.2017	Bad putzen, Holz Balkon		Engelsschlaf	
3845	11.12.2017			Engelsschlaf	
3846	12.12.2017	Leih Notebook		Engelsschlaf	
3847	13.12.2017	BMC Pizza essen,  Termin taetowieren		Engelsschlaf	
3848	14.12.2017	Notebook re-installed		Nachtspiel	
3849	15.12.2017	Totenkopf taetowieren			
3850	16.12.2017	Meeritsch kochen		Nachtspiel	
3851	17.12.2017	Flur putzen		Nachtspiel	
3852	18.12.2017			Nachtspiel	
3853	19.12.2017	neuen Kindle		Nachtspiel	
3854	20.12.2017			Nachtspiel	
3855	21.12.2017	Angi Bernried		Nachtspiel	
3856	22.12.2017			Nachtspiel	
3857	23.12.2017	Wirsing kochen		Nachtspiel	
3858	24.12.2017	Mama und Kerstin telefoniert		Nachtspiel	
3859	25.12.2017			Nachtspiel	
3860	26.12.2017			Nachtspiel	
3861	27.12.2017	Gambach gefahren		Nachtspiel	
3862	28.12.2017	MTZ			
3863	29.12.2017	Giesen			
3864	30.12.2017	Hausham gefahren		Nachtspiel	
3865	31.12.2017			Nachtspiel	
3866	1.01.2018			Berechnung	
3867	2.01.2018	essen Kantine, Tiziana Training		Berechnung	
3868	3.01.2018	essen kantine, Tiziana Training		Berechnung	
3869	4.01.2018	essen Kantine, Tiziana Training		Berechnung	
3870	5.01.2018	Tiziana Training		Berechnung	
3871	6.01.2018	Wirsing kochen		Berechnung	
3872	7.01.2018	Rosenkohl kochen		Berechnung	
3873	8.01.2018	Tiziana Training		Berechnung	
3874	9.01.2018	essen Kantine, Tiziana Training		Berechnung	
3875	10.01.2018	ACS Tarining, essen Kantine, Tiziana Training			
3876	11.01.2018	ACS Training, essen Kantine			
3877	12.01.2018	Tätowieren "No Rules"			
3878	13.01.2018	Bohnesuppe kochen		Berechnung	
3879	14.01.2018	Holz oberen Balkon		Berechnung	
3880	15.01.2018	Herz Ultraschall, MV SMS		Berechnung	
3881	16.01.2018	MV SMS	Trampolin	Berechnung	
3882	17.01.2018	MV SMS	Trampolin	Berechnung	
3883	18.01.2018	Spagetti Carbonara, Handkreissaege	Trampolin	Berechnung	
3884	19.01.2018		Trampolin	Berechnung	
3885	20.01.2018	Lamm braten		Mordswald	
3886	21.01.2018			Mordswald	
3887	21.01.1900	MV Telegram	Trampolin	Mordswald	
3888	23.01.2018	MV Sex		Mordswald	
3889	24.01.2018	MV Sex		Mordswald	
3890	25.01.2018		Trampolin	Mordswald	
3891	26.01.2018			Mordswald	
3892	27.01.2018	Erbsensuppe, Krapfen	Trampolin	Mordswald	
3893	28.01.2018	MV Telegram, Change Management Training	Trampolin, boxsack	Mordswald	
3894	29.01.2018		Trampolin	Mordswald	
3895	30.01.2018	TS SMS		Mordswald	
3896	31.01.2018	Reiesepass beantragt, Tättowierer "No Limits"		Mordswald	
3897	1.02.2018	Kreditkartenantrag		Mordswald	
3898	2.02.2018			Mordswald	`
3899	3.02.2018			Mordswald	
3900	4.02.2018			Station TS12	
3901	5.02.2018	SPK Depot eroeffnet, Reisepass geholt		Station TS12	
3902	6.02.2018	MV Sex		Station TS12	
3903	7.02.2018	MV Sex, Thai essen, EMAPRD V918		Station TS12	
3904	8.02.2018	ESTA Antrag		Station TS12	
3905	9.02.2018			Station TS12	
3906	10.02.2018	McTrek		Feingeist	
3907	11.02.2018			Feingeist	
3908	12.02.2018	Belastungs EKG, Tättowierer  Linien Tintenfisch		Feingeist	
3909	13.02.2018			Feingeist	
3911	15.02.2018	AH Bernried		Feingeist	
3912	16.02.2018	IMOT München		Feingeist	
3913	17.02.2018			Feingeist	
3914	18.02.2018	Mama telefoniert, Dinzler kein guter Kaffee		Feingeist	
3915	19.02.2018	MV Sex, Gambach gefahren			
3916	20.02.2018	Birgit mitgenommen nach Butzbach, Zug nach Fankfurt gefahren, Flug Austin			
3917	21.02.2018	BMC Board meeting, Essen, Klapperschlange probiert, Tiziana anbandeln versucht			Tiziana klar Aussage das sie nicht moechte
3918	22.02.2018	BMC Board meeting			
3919	23.02.2018	Flug Frankfurt			
3920	24.02.2018	Birgit Kaffee trinken, Gambach nach Hausham gefahren			
3921	25.02.2018			Feingeist	
3922	26.02.2018	RAV abgeholt, Tättowierer Tintenfisch schattiert			
3923	27.02.2018	House of Flames wg Road King		Feingeist	
3924	28.02.2018	Control-M workshop Amadeus			
3925	1.03.2018	Control-M workshop BMW Welt München		Feingeist	
3926	2.03.2018	Thunderbike telefoniert		Feingeist	
3927	3.03.2018			Feingeist	
3928	4.03.2018			Drogenparty	
3929	5.03.2018			Drogenparty	
3930	6.03.2018	MV Sex		Drogenparty	
3931	7.03.2018	email HD Augsburg wegen Inzahlungnahme Low Rider, MV Nacht im Mercure Hotel MUC Ost			
3932	8.03.2018	MV Nacht im Mercure Hotel MUC Ost		Drogenparty	
3933	9.03.2018	FXDL Batterie eingebaut		Drogenparty	
3934	10.03.2018	FXDL fahren, HD FLHC Heritage Softail Classic 107 		Drogenparty	
3935	11.03.2018	FXDL fahren, Flur putzen		Drogenparty	
3936	12.03.2018	Überweisung Harley Davidson Softaill Heritage		Drogenparty	
3937	13.03.2018			Drogenparty	
3938	14.03.2018			Drogenparty	
3939	15.03.2018	MV Sex		Drogenparty	
3940	16.03.2018	Tättowierer Hintergrund Seedrache und Tintenfisch schattiert			
3941	17.03.2018	Pizza backen, SMS von Ingrid, ist in Bad Hofgastein		Drogenparty	
3942	18.03.2018	Ingrid SMS geantwortet		Drogenparty	
3943	19.03.2018		Trampolin	Drogenparty	
3944	20.03.2018		Trampolin	Drogenparty	
3945	21.03.2018	Zahnarzt Zahnreinigung, MV Sex, wahnsinnig geil		Drogenparty	
3946	22.03.2018	MV Sex, wahnsinnig geil, Manu mündl. Prüfung bestanden, umarmt		Drogenparty	
3947	23.03.2018			Drogenparty	
3948	24.03.2018	Erbsensuppe, Therme Bad Aibling, aber voll	Trampolin	Drogenparty	
3949	25.03.2018	Blumenkohl mit Lammkotlett	MTB, Trampolin	Drogenparty	
3950	26.03.2018	C&A einkaufen	Trampolin	Drogenparty	
3951	27.03.2018	BOB fahren Bayrischzell	Trampolin	Tote Unschuld	
3952	28.03.2018	RAV 30000km Inspektion	Trampolin	Tote Unschuld	
3953	29.03.2018		Trampolin	Tote Unschuld	
3954	30.03.2018	kochen Lachs, Kaesekuchen backen, Termin Taettowierer	Trampolin	Tote Unschuld	
3955	31.03.2018	kochen Lachs	Trampolin	Tote Unschuld	
3956	1.04.2018	kochen Lamm, Mama und Kerstin telefoniert	Trampolin	Blutmosaik	
3957	2.04.2018	FXDL fahren	Trampolin	Blutmosaik	
3958	3.04.2018	MV Sex, Sparkasse Kredit	Trampolin	Blutmosaik	
3959	4.04.2018	MV Kaffee bei McDonald	Trampolin	Blutmosaik	
3960	5.04.2018	MV Sex	Trampolin		
3961	6.04.2018	Kreditantrag, Brennholz geliefert, Tättowieren Seepferd, Anker, Seestern		Blutmosaik	
3962	7.04.2018	Holz einraeumen, Harley fahren		Blutmosaik	rund um Chiemsee, Kufstein
3963	8.04.2018	FXDL fahren, Lamm braten Bohnensalat		Blutmosaik	Gelting Harley Eck, Starnbergsee See
3964	9.04.2018	FXDL fahren	Trampolin	Blutmosaik	Feldkirchen, Glonn, Bruckmuehl, Leitzachtal
3965	10.04.2018	FXDL Arbeit gefahren, Kredit ausgezahlt	Trampolin	Blutmosaik	
3966	11.04.2018		Trampolin	Blutmosaik	
3967	12.04.2018	VS eVB Nummer, Sabine 16000,00 Euro	 KFZ-Zulassung Termin		Blutmosaik
3968	13.04.2018	Dauerauftrag Sabine kuendigen, Depot Fonds Anteil kaufen			
3969	14.04.2018	Augsburg fahren FLHC Brief holen, Auflauf gekocht	Trampolin	Die Todestherapie	
3970	15.04.2018	FXDL fahren	Trampolin	Die Todestherapie	Irschenberg, Brannenburg, Kufstein, Thiersee, Bayrischzell
3971	16.04.2018	FLHC zugelassen, Sabine 50,00 Tättowierung	Trampolin	Die Todestherapie	
3972	17.04.2018	MV Stundenhotel		Die Todestherapie	
3973	18.04.2018	MV Sex	Trampolin	Die Todestherapie	
3974	19.04.2018	MV Sex, FLHC in Augsburg geholt, Brief Toyota Bank	Trampolin	Die Todestherapie	
3975	20.04.2018	FXDL abholen wg Inspektion,  FLHC fahren, Tättowieren Seepferd, Anker schattieren			
3976	21.04.2018	FLHC, kochen Schweinelende, Spargel		Die Todestherapie	Kufstein, Walchsee, Wilder Kaiser, Thiersee, Landl
3977	22.04.2018	FLHC fahren	Trampolin	Die Todestherapie	Sylvensteinstausee, Walchensee
3978	23.04.2018		Trampolin	Die Todestherapie	
3979	24.04.2018	BOB , S-Bahn fahren arbeit fahren, MV Sex-quicky		Die Todestherapie	
3980	25.04.2018	FLHC arbeit fahren, Doerr Rezept, Eigentümer Versammlung		Die Todestherapie	
3981	26.04.2018		Trampolin	Die Todestherapie	
3982	27.04.2018	FXDL in Geretsrief geholt		Die Todestherapie	
3983	28.04.2018	FLHC fahren		Ihr kalter Atem	Nussdorf, Erl, Oberaudorf
3984	29.04.2018	FXDL fahren		Ihr kalter Atem	Nussdorf, Erl, Sudelfeld
3985	30.04.2018	Sehtest, KofferAnhänger gekauft, Wührer Führerscheinantrag	Trampolin	Ihr kalter Atem	
3986	1.05.2018	FLHC fahren	Trampolin	Ihr kalter Atem	Brannenburg
3987	2.05.2018	FLHC Arbeit fahren, Zahnarzt Huber			
3988	3.05.2018			Ihr kalter Atem	
3989	4.05.2018	Gemeinde Führerscheinantrag, Tättowierer Seestern schattieren			
3990	5.05.2018	FLHC fahren		Ihr kalter Atem	Chiemsee, Siegsdorf, Schneizlreuth, Lofer, Koessen, Nussdorf
3991	6.05.2018	FXDL fahren, Flur putzen		Ihr kalter Atem	Hoehenkirchen, Ebersberg
3992	7.05.2018	Sattlerei Sommerer, Führerschein Papiere Fahrschule Wührer		Ihr kalter Atem	
3993	8.05.2018	FLHC arbeit fahren, Buero Umzug, Cycle Factory wegen Fussraten		Ihr kalter Atem	
3994	9.05.2018			Ihr kalter Atem	
3995	10.05.2018	FXDL fahren			Nussdorf,Erl, Ebbs, Kufstein, Landl
3996	11.05.2018	FXDL Cycle Factory wegen Fussraten	Trampolin	Ihr kalter Atem	
3997	12.05.2018	Frikadellen, FXDL fahren, Steuererklärung abgegeben		Ihr kalter Atem	Bad Toelz, Holzkirchen, Sauerlach, Feldkirchen, Leitzachtal
3998	13.05.2018	FLHC fahren, Mama telefoniert, Muttertag	Trampolin	Ihr kalter Atem	Weyern, Feldkirchen, Vagen, Leitzachtal
3999	14.05.2018	Sattlerei	Trampolin	Ihr kalter Atem	
4000	15.05.2018	MV Sex draussen		Ihr kalter Atem	
4001	16.05.2018	MV Stundenhotel		Ihr kalter Atem	
4002	17.05.2018	MV Sex	Trampolin	Ihr kalter Atem	
4003	18.05.2018		Trampolin	Ihr kalter Atem	
4004	19.05.2018	FLHC fahren, Lamm kochen	Trampolin	Ihr kalter Atem	Nussdorf,Erl, Ebbs, Kufstein, Landl
4005	20.05.2018	FXDL fahren		Ihr kalter Atem	Irschenberg
4006	21.05.2018	FLHC fahren	Trampolin	Ihr kalter Atem	Weyern, Hoehenkirchen, Anzing, Erding, Dorfen, Bad Aibling
4007	22.05.2018	Sattlerei Sommerer Heritage Sitze		Kluftinger	
4008	23.05.2018	Auffahrrampe geliefert	Trampolin	Kluftinger	
4009	24.05.2018	BMC meeting und Italiener Essen, MV Sex		Kluftinger	
4010	25.05.2018		Trampolin	Kluftinger	
4011	26.05.2018	FXDL fahren, Fisch mit Spargel		Kluftinger	Nussdorf,Erl, Ebbs, Kufstein, Landl, Leitzachtal
4012	27.05.2018	FXDL fahren, Lachs mit Spargel	Trampolin	Kluftinger	Irschenberg, Vagen, Aying, Holzkirchen, Bad Toelz
4013	28.05.2018	FLHC Sattel fertig, FLHC Inspektion fahren		Kluftinger	HD Geretsried
4014	29.05.2018		Trampolin	Kluftinger	
4015	30.05.2018	FLHC abholen in Geretsried		Kluftinger	HD Geretsried, Miesbach, Leitzachtal
4016	31.05.2018	FXDL fahren, Tomatensosse kochen, FXDL und FLHC waschen		Kluftinger	Irschenberg, Vagen, Feldkirchen, Grossherenberg, Glonn, Ellmosen, Bad Aibling, Leitzachtal
4017	1.06.2018	Holz sägen, FLHC fahren		Kluftinger	Irschenberg, Vagen, Feldkirchen, Grossherenberg, Glonn, Antoling, Leitzachtal
4018	3.06.2018	FXDL fahren, Fisch braten	Trampolin	Kluftinger	Bad Toelz, Walchensee, Sylvenstein
4019	4.06.2018	FXDL fahren		Kluftinger	Irschenberg, Bruckmuehl, Feldkirchen, Glonn, Beyharting, Leitzachtal
4020	5.06.2018	FLHC arbeit fahren		Kluftinger	
4021	6.06.2018	FLHC arbeit fahren		Kluftinger	
4022	7.06.2018	Holz mitnehmen		Kluftinger	
4023	8.06.2018		Trampolin	Kluftinger	
4024	9.06.2018	FXDL fahren		Kluftinger	Irschenberg, Kolbermoor, Leitzachtal
4025	10.06.2018	FLHC fahren		Kluftinger	Weyern, Kreuzstrasse, Aying, Pullach, Hundham, Leitzachtal
4026	11.06.2018	FLHC fahren		Der Ruf des Kuckucks	Hundham, Brannenburg, Sudelfeld
4027	12.06.2018		schwimmen Kronthaler	Der Ruf des Kuckucks	
4028	13.06.2018		schwimmen Kronthaler	Der Ruf des Kuckucks	Panik beim schwimmen
4029	15.06.2018			Der Ruf des Kuckucks	
4030	16.06.2018	Holz sägen, FXDL fahren		Der Ruf des Kuckucks	Tegernsee, Sylvenstein, Bad Toelz, Holzkirchen, Kreuzstrasse, Vagen, Letzachtal
4031	17.06.2018	FLHC fahren, Fisch braten		Der Ruf des Kuckucks	Irschenberg, Feldkirchen, Glonn, Grafing, Vagen, Parsberg 
4032	18.06.2018		schwimmen Kronthaler	Der Ruf des Kuckucks	
4033	19.06.2018	MV Sex draussen	schwimmen Kronthaler	Der Ruf des Kuckucks	
4034	20.06.2018	FXDL Cycle Factory wegen Fussrasten und Lenker		Der Ruf des Kuckucks	
4035	21.06.2018	Fahrstunde		Der Ruf des Kuckucks	
4036	22.06.2018	Geld Anhänger abgehoben, FLHC fahren		Der Ruf des Kuckucks	Weyarn, Feldkirchen, Glonn, Grafing, Au, Leitzachtal
4037	24.06.2018	FLHC, Pilze kochen	Trampolin	Der Ruf des Kuckucks	Pang, Prutting, Wasserburg, Steinhöring, Zorneding, Glonn, Feldkirchen, Glonn, Leitzachtal
4038	25.06.2018	Fahrstunde		Der Ruf des Kuckucks	
4039	26.06.2018	FLHC arbeit fahren, Kerstin telefoniert	Trampolin	Der Ruf des Kuckucks	
4040	27.06.2018	Fuehrerscheinpruefung	Trampolin	Der Ruf des Kuckucks	
4041	28.06.2018			Der Ruf des Kuckucks	
4042	29.06.2018	Führerschein beim TÜV abgeholt, West Coast Choppers Helm geliefert			
4043	30.06.2018	FLHC fahren, kochen - Pilze	Trampolin	Wie sehr willst du leben	Irschenberg, Schoenau, Glonn, Feldkirchen, Bruckmuehl, Leitzachtal
4044	1.07.2018	FLHC fahren, Fisch braten	Trampolin	Wie sehr willst du leben	Parsberg, Nussdof, Ebbs, Kufstein, Thiersee, Landl
4045	2.07.2018	RAV MB-RX 168 Sommerreifen und Inspektion, FLHC putzen	Trampolin	Wie sehr willst du leben	
4046	3.07.2018	MV Sex		Wie sehr willst du leben	
4047	4.07.2018	Massage Gerät		Wie sehr willst du leben	
4048	5.07.2018	FXDL abholen, Lukas Geburtstag, Massage Geraet	Trampolin	Wie sehr willst du leben	Irschenberg, Leitzachtal
4049	6.07.2018			Wie sehr willst du leben	
4050	7.07.2018	FXDL fahren		Wie sehr willst du leben	Irschenberg, Tuntenhausen, Bad Endorf, Chieming, Reith im Winkl, Koessen, Kufstein, Landl
4051	8.07.2018	FXDL fahren, Massage Gerät, Fisch braten		Wie sehr willst du leben	Bad Toelz, Walchensee, Sylvenstein, Bad Toelz, Miesabch, Leitzachtal 
4052	9.07.2018	FLHC fahren	Trampolin	Wie sehr willst du leben	Hundham, Bad Feilnbach, Pullach, Beyharting, Glonn, Feldkirchen, Irschenberg, Leitzachtal
4053	10.07.2018	MV Sex		Wie sehr willst du leben	
4054	11.07.2018	Anhänger bezahlt, FLHC geräusche Cycle Factory, Massage Gerät		Wie sehr willst du leben	
4055	12.07.2018	Anhänger zugelassen & abgeholt, FXDL neue Zulassungbescheinigung, Massage Gerät		Wie sehr willst du leben	
4056	13.07.2018	FLHC fahren, Cycle Factoy - abroll geräusche, Massage Gerät	Trampolin	Wie sehr willst du leben	
4057	15.07.2018	FLHC fahren, FXDL in Anhänger fahren & Rückwärts rausrollen, Massage Gerät		Wie sehr willst du leben	FXDL in Anhänger ging sehr gut
4058	16.07.2018	FXDL fahren			Miesbach, Irschenberg, Golling, Vagen, Golling, Leitzachtal
4059	17.07.2018	Gref & Voelsing Bestellung, FLHC fahren, Holz sägen		Wie sehr willst du leben	MB, Tölz, Bad Heilnbrunn, Wolfratshausen,  Otterfing, Feldkirchen, Irschenberg, Leitzachtal
4060	18.07.2018	FLHC fahren		Champagnertod	MB, Brannenburg, Erl, Ebbs, Kufstein, Landl, Schliersee
4061	20.07.2018	FXDL fahren		Champagnertod	Parsberg, Bad Flintsbach, Brannenburg, Kiefersfelden, Thiersee, Landl
4646	20.04.2020	Kueche abgeloest			
4062	22.07.2018	Fisch und Pommes kochen		Champagnertod	
4063	23.07.2018	FLHC fahren, Anhänger holen		Champagnertod	Geretsried, Muensing, Seeshaupt, STA
4064	24.07.2018	FXDL fahren	Trampolin	Champagnertod	Wörnsmühl, Irschenberg , Au, Pang, Rohrdorf, Aschau, Sachrang, Kufstein, Landl
4065	25.07.2018	FLHC Geretsried holen			Parsberg, Braennenburg, Sudelfeld, Leitzachtal
4066	26.07.2018	Gambach fahren, MV mitgefahren, Hotel Grossen-Linden			
4067	27.07.2018	MV Hotel Grossen-Linden, Mama besucht, Kerstin besucht			
4068	28.07.2018	Gambach Hausham gefahren			
4069	29.07.2018	FLHC fahren		Champagnertod	Parsberg, Irschenberg, Pullach, Hundham, Leitzachtal, MB, Kreuzstrasse, Leitern, Weyern
4070	30.07.2018	Zulassungsstelle FLHC Leistungsänderung, FXDL fahren		Champagnertod	Bad Toelz, Sylvenstein, Walchensee
4071	31.07.2018	FXDL fahren, Freibad MB		Champagnertod	Irschenberg, Pulling, Brannenburg, Sudelfeld
4072	1.08.2018	FLHC fahren, Freibad MB			Parsberg, Bad Feilnbach, Raubling, Pullach, Vagen, Irschenberg
4073	2.08.2018	FXDL fahren, Freibad MB		Champagnertod	MB, Weyarn, Faistenar, Feldkirchen, Golling, Irschenberg, Parsberg
4074	3.08.2018	FXDL ABS entlueften, FLHC fahren		Champagnertod	MB, Weyarn, Faistenar, Feldkirchen, Vagen, Irschenberg, Leitzachtal, Schliersee 
4075	4.08.2018	FXDL fahren, FLHC Irschenberg, Seehamer See,  Dinzler essen, T-Bone Steak		Champagnertod	Parsberg, Erl , Kössen, St. Johann, Kufstein, Landl, Leitzachtal 
4076	5.08.2018	FXDL und FLHC waschen, Fisch braten		Champagnertod	
4077	6.08.2018	FXDL fahren		Champagnertod	Schliersee, Bayrischzell, Sudelfeld, Bab Feilnbach, Hundham, Leitzachtal, MB, Gmund
4078	7.08.2018	MV Sex, Doerr Rezept, Huber Rechnung		Champagnertod	
4079	8.08.2018	MV Sex		Champagnertod, Boeses Geheimnis	
4080	9.08.2018			Boeses Geheimnis	
4081	10.08.2018			Boeses Geheimnis	
4082	11.08.2018	FLHC fahren		Boeses Geheimnis	Parsberg, Au, Bad Feilnbach, Brannenburg, Erl, Ebbs, Kufstein, Landl, Schliersee
4083	12.08.2018	FXDL fahren, Fisch kochen		Boeses Geheimnis	Parsberg, Au, Bad Feilnbach, Brannenburg, Erl, Ebbs, Kufstein, Landl, Leitzachtal
4084	13.08.2018	FXDL fahren		Boeses Geheimnis	Gmund, Bad Toelz, Holki, Weyern, Seehamer See, Leitzachtal, Woernsmuehl
4085	14.08.2018	MV Sex		Boeses Geheimnis	
4086	15.08.2018	FLHC fahren, Pizza backen		Boeses Geheimnis	Parsberg, Auerschmid, Irschenberg, Woernsmuehl
4087	16.08.2018			Das Boese	
4088	19.08.2018	FXDL fahren, Fisch braten		Das Boese	Woernsmuehl, Hundham, Pang, Simsee, Frasdorf, Aschau, Sachrang, Kufstein, Landl
4089	20.08.2018	FLHC fahren, HD Geretsried wg Road King		Das Boese	MB, Bad Toelz, Geretsried, Bad Toelz, MB
4090	21.08.2018	FXDL arbeit fahren, CB hat auf email geantwortet		Das Boese	
4091	22.08.2018	FLHC arbeit fahren		Das Boese	
4092	23.08.2018	CB email und telefoniert, MV Sex		Das Boese	
4093	24.08.2018		Trampolin	Das Boese	
4094	25.08.2018	Gulasch kochen		Das Boese	
4095	26.08.2018			Das Boese	
4096	27.08.2018	FXDL fahren	Trampolin	Das Boese	Parsberg, Au, Brannenburg, Raubling, Pang, Golling, Irschenberg, Woernsmuehl
4097	28.08.2018	FXDL arbeit fahren		Das Boese	
4098	29.08.2018	FLHC arbeit fahren		Das Boese	
4099	30.08.2018			Das Boese	
4100	31.08.2018	Erbseneintopf		Das Boese	
4101	1.09.2018			Das Boese	
4102	2.09.2018	Fisch braten		Das Boese	
4103	3.09.2018	FLHC fahren, FXDL Sitzbank Sattlerei abgegeben		Rachgier	Gmund, Holki, Seehamer See, Leitzachtal, Woernsmuehl
4104	4.09.2018	Jekyll und Hyde Werkstattmodus		Rachgier	
4105	5.09.2018	FLHC arbeit fahren, CB telefoniert			
4106	6.09.2018	MV sex		Rachgier	
4107	7.09.2018			Rachgier	
4108	8.09.2018	Zwetschgenmus kochen,Ilona und Rolf getroffen Gmund, Steak braten		Rachgier	
4109	9.09.2018	FLHC fahren, Fisch braten		Rachgier	Parsberg, Bad Feilnberg, Brannenburg, Sudelfeld, Hundham
4110	10.09.2018	FLHC fahren		Rachgier	Hundham, Pullach, Beyharting, Glonn, Aying, Vagen, Leitzachtal
4111	11.09.2018			Rachgier	
4112	12.09.2018	Zwetschgenmus kochen, FLHC fahren		Rachgier	Parsberg, Au, Brannenburg, Sudelfeld, Hundham
4113	13.09.2018	Steak essen Muenchen BMC im Little London			
4114	14.09.2018			Rachgier	
4115	15.09.2018	Zwetchgenmus, FLHC fahren		Rachgier	Parsberg, Brannenburg, Kiefersfelden, Landl
4116	17.09.2018	FLHC fahren		Rachgier	Leitzachtal, Au, Bad Feilnbach, Brannenburg, Sudelfeld, Schliersee
4117	18.09.2018	FLHC arbeit fahren		Rachgier	
4118	19.09.2018	FLHC arbeit fahren			
4119	20.09.2018			Rachgier	
4120	21.09.2018			Rachgier	
4121	22.09.2018	Lammbraten, Holz sägen, Flur putzen, FLHC waschen		Rachgier	
4122	23.09.2018	FLHC fahren		Rachgier	Woernsmuehl, Hundham, Brannenburg, Kufstein, Landl, Hundham, Leitzachtal
4123	24.09.2018	Paletten mitgenommen		Rachgier	
4124	25.09.2018	FLHC arbeit fahren, FXDL Sitz abholen		Rachgier	
4125	26.09.2018	FXDL arbeit fahren, MidYear review		Rachgier	
4126	27.09.2018	MV Hotel Sex			
4127	28.09.2018	FXDL fahren		Rachgier	Parsberg, Irschenberg, Golling, Vagen, Leitzachtal
4128	30.09.2018	FLHC fahren		Rachgier	Bad Toelz, Sylvenstein, Walchensee, Bad Toelz
4129	1.10.2018	Keller geraeumt		Rachgier	
4130	2.10.2018			Rachgier	
4131	3.10.2018			Rachgier	
4132	4.10.2018	FLHC fahren, Thunfisch Aufstrich		Rachgier	Parsberg, Pang, Erl, Ebbs, Kufstein, Landl, Leitzachtal
4133	5.10.2018	FXDL fahren		Toedlicher Befehl	Parsberg, Au, Bad Feilnbach, Brannenburg, Erl, Ebbs, Kufstein, Landl, Schliersee
4134	6.10.2018	FXDL fahren, Frikadellen, Wirsching		Toedlicher Befehl	
4135	7.10.2018			Toedlicher Befehl	
4136	8.10.2018	FXDL fahren		Toedlicher Befehl	Hundham, Bad Feilnbach, Raubling, Pullach, Vagen, Leitzachtal
4137	9.10.2018	FLHC arbeit fahren		Toedlicher Befehl	
4138	10.10.2018	FLHC arbeit fahren		Toedlicher Befehl	
4139	11.10.2018	FLHC arbeit fahren		Toedlicher Befehl	
4140	12.10.2018	Satteltaschen lackieren		Toedlicher Befehl	
4141	13.10.2018	Lamm, FXFL fahren		Toedlicher Befehl	Hundham, Pullach, Feldkirchen, Unterlaus, Irschenebrg, Leitzachtal
4142	15.10.2018	FXDL fahren		Toedlicher Befehl	Woernsmuehl, Hundham, Bad Feilnbach, Brannenburg, Sudelfeld, Woernsmuehl
4143	16.10.2018	MV Sex		Der Fluestermann	
4144	17.10.2018	FLHC arbeit fahren		Der Fluestermann	
4145	18.10.2018			Der Fluestermann	
4146	19.10.2018			Der Fluestermann	
4147	20.10.2018	FLHC fahren, Wirsing kochen, FLHC waschen		Der Fluestermann	Parsberg, Bad Feilnbach, Brannenburg, Nussdorf, Erl, Ebbs, Kufstein, Landl, Schliersee
4148	21.10.2018	FXDL fahren		Der Fluestermann	Parsberg, Bad Feilnbach, Brannenburg, Kiefersfelden, Kufstein, Landl, Leitzachtal
4149	22.10.2018	CB Sex Hotel Salzburg		Der Fluestermann	
4150	23.10.2018			Der Fluestermann	
4151	24.10.2018	BMC essen Italiener			
4152	25.10.2018	RAV MB AX 812 Winterreifen wechseln		Der Fluestermann	
4153	26.10.2018			Der Fluestermann	
4154	27.10.2018	Rouladen gekocht, Apfelkuchen		Der Fluestermann	
4155	28.10.2018			Der Fluestermann	
4156	29.10.2018			Quercher und das Jammertal	
4157	30.10.2018	MV Sex		Quercher und das Jammertal	
4158	31.10.2018	MV Sex,  Hotel Achheim 6h Zimmer		Quercher und das Jammertal	
4159	1.11.2018	FLHC fahren		Quercher und das Jammertal	Parsberg, Au, Pang, Brannenburg, Nussdorf, Erl, Ebbs, Kufstein, Landl, Woernsmuehl
4160	2.11.2018	Hefebrezen gebacken		Quercher und das Jammertal	
4161	3.11.2018	FXDL fahren, Fisch braten, Tomatensalat		Quercher und das Jammertal	Bad Toelz, Penzberg, Sesshaupt, Muensing, WOR, Geretsried, Bad Toelz
4162	4.11.2018	FXDL fahren		Quercher und das Jammertal	Parsberg, Au, Pullach. Maxlrain, Golling, Irschenberg, Leitzachtal, Woernsmuehl
4163	5.11.2018	FLHC fahren			Bad Toelz, Holki, Foeching, Fellach, Kreuzstarsse, Feldkirchen, Vagen, Leitsachtal, Woernsmuehl
4164	6.11.2018	BMC exchange München, Award		Quercher und das Jammertal	
4165	7.11.2018	FXDL arbeit fahren		Quercher und das Jammertal	
4166	8.11.2018				
4167	9.11.2018	Bolognaise kochen		Quercher und das Jammertal	
4168	10.11.2018	FLHC fahren		Quercher und das Jammertal	Parsberg, Au, Pang, RO, Rohrdorf, Simsee, Bad Endorf, golling, Irschenberg, Leitzachtal, Woernsmuehl
4169	11.11.2018	FXDL fahren		Quercher und das Jammertal	Hundham, Brannenburg, Nussdorf, Rohrdorf, Simsee, Pang, Leitzachtal, Woernsmuehl
4170	12.11.2018	FXDL fahren		Quercher und das Jammertal	Hundham, Brannenburg, Nussdorf, Rohrdorf, Pang, Leitzachtal, Woernsmuehl
4171	13.11.2018	MV Sex im Auto		Quercher und das Jammertal	
4172	14.11.2018	MV Sex, Hotel Schwaig 6h Zimmer		Quercher und das Jammertal	
4173	15.11.2018			Quercher und das Jammertal	
4174	16.11.2018			Das Killer Hotel	
4175	17.11.2018	Frikadellen & Wirsing gekocht, FXDL waschen & zusammen mit FLHC in Anhänger		Das Killer Hotel	
4176	18.11.2018	Mama gestorben		Das Killer Hotel	
4177	19.11.2018	Bratkartoffeln & Bratwuerstchen		Das Killer Hotel	
4178	20.11.2018	Milchreis kochen		Das Killer Hotel	
4179	21.11.2018	MV beim Baecker in der frueh abgeholt und am abend nach hause gefahren		Das Killer Hotel	
4180	22.11.2018			Das Killer Hotel	
4181	23.11.2018			Der Schädelbrecher	
4182	24.11.2018	Pizza backen		Der Schädelbrecher	SM beim saufen erwischt
4183	25.11.2018	Nudel und Tomatensosse, Harley verzurrt Anhänger	walken, kurz laufen	Der Schädelbrecher	
4184	26.11.2018	Buch Muttertag - Nele Neuhaus gekauft	walken, kurz laufen	Der Schädelbrecher	
4185	27.11.2018	MV Sex im Auto		Der Schädelbrecher	
4186	28.11.2018	MV Sex, Hotel Schwaig 6h Zimmer	walken, kurz laufen	Der Schädelbrecher	
4187	29.11.2018	BMC workshop, MV nach Gi-Linden Hotel gefahren, Griedel gefahren	walken Krontahler		
4188	30.11.2018	MV Gi-Linden Hotel, Beerdigung Mama			
4189	1.12.2018	Griedel Ilona und Kerstin verabschiedet, MV Gi-Linden München gefahren		Der Schädelbrecher	
4190	2.12.2018		walken, Hugel aufwaerts, kurz laufen		
4191	3.12.2018	FLHC - HD Galerie Gelting / Wolfratshausen Winterlagerung		Der Schädelbrecher, Winterkalt	Anhänger verloren
4192	4.12.2018	MV Bäcker abgeholt		Winterkalt	
4193	5.12.2018	CB hat treffen für 10.12. abgesagt		Winterkalt	
4194	6.12.2018	MV Bäcker abgeholt		Winterkalt	
4195	7.12.2018			Winterkalt	
4196	8.12.2018	FXDL Batterie ausbauen, Schitzel mit Rosenkohl	walken, kurz laufen	Winterkalt	
4197	9.12.2018		walken ueber KH, kurz laufen	Winterkalt	
4198	10.12.2018	MV Sex, Hotel Schwaig 6h Zimmer		Winterkalt	
4199	11.12.2018	MV Sex im Auto, geilen BJ, Zahnarzt Termin		Winterkalt	
4200	12.12.2018	Dörr 24h Blutdruck, Blutabnahme		Winterkalt	
4201	13.12.2018	Dörr check, Ultraschall, MV Sex im Auto		Winterkalt	
4202	14.12.2018			Winterkalt	
4203	15.12.2018	Fisch mit Kartoffelsalat	walken Stadlberg	Winterkalt	
4204	16.12.2018	Fisch mit Bratkartoffeln	walken Stadlberg	Winterkalt	
4205	17.12.2018			Wovon träumst du?	
4206	18.12.2018			Wovon träumst du?	
4207	19.12.2018	MV Sex im Auto, geilen BJ			
4208	20.12.2018			Wovon träumst du?	
4209	21.12.2018			Wovon träumst du?	
4210	22.12.2018	Lamm kochen			
4211	23.12.2018				
4212	24.12.2018		walken	Wovon träumst du?	
4213	25.12.2018	Ilona telefoniert		Wovon träumst du?	
4214	26.12.2018	Apfelkuecherl	walken ueber KH	Wovon träumst du?	
4215	27.12.2018				
4216	28.12.2018				
4217	29.12.2018	Rosenkohl kochen	walken Stadlberg, Althausham	Wovon träumst du?	
4218	30.12.2018	Fisch braten		Wovon träumst du?	
4219	31.12.2018	Wirsing kochen	walken ueber KH, ohne Pause		
4220	1.01.2019		walken ueber KH, ohne Pause	Wovon träumst du?	
4221	2.01.2019			Wovon träumst du?	
4741	26.07.2020	Schnitzel braten			
4222	3.01.2019	`	walken, Baumstumpf & zurueck		30 Minuten, geht immer in der Mittagspause
4223	4.01.2019			Verschwunden	
4224	5.01.2019			Verschwunden	starker Schneefall
4225	6.01.2019			Verschwunden	starker Schneefall
4226	7.01.2019			Verschwunden	
4227	8.01.2019			Verschwunden	
4228	9.01.2019	MV Sex Hotel Ramada Oberding		Verschwunden	
4229	10.01.2019	MV Sex Hotel Ramada Oberding		Verschwunden	
4230	11.01.2019			Verschwunden	
4231	12.01.2019			Verschwunden	
4232	13.01.2019			Verschwunden	
4233	14.01.2019			Verschwunden	SM wieder mal am saufen, Flasche JD, liegt nackt im Buero auf dem Boden
4234	15.01.2019	MV Sex im Auto		Verschwunden	
4235	16.01.2019			Verschwunden	
4236	17.01.2019	MV abgeholt beim Bäcker		Verschwunden	
4237	18.01.2019			Die TodesApp	
4238	19.01.2019		walken	Die TodesApp	
4239	20.01.2019		walken	Die TodesApp	Stadlberg, viel Schnee, schwierig zu gehen
4240	21.01.2019			Die TodesApp	
4241	22.01.2019			Die TodesApp	
4242	23.01.2019			Die TodesApp	
4243	24.01.2019	MV Sex im Auto, Ruecksitz umgeklappt		Die TodesApp	
4244	25.01.2019			Die TodesApp	
4245	26.01.2019				
4246	27.01.2019			Die TodesApp	
4247	28.01.2019	SM bei Meyer-Huebner		Die TodesApp	
4248	29.01.2019	MV Sex im Auto, Rücksitz umgeklappt		Die TodesApp	
4249	30.01.2019	Regenz-Wagner Kurzzeitpflege fuer Lukas		Die TodesApp	
4250	31.01.2019			Die TodesApp	
4251	1.02.2019	Regenz-Wagner in Erlkam wg Termin		Die TodesApp	
4252	2.02.2019	Lukas Regens-Wagner nach Erlkam gefahren, online checkin		Die TodesApp	
4253	3.02.2019	Flughafen München, Nizza Fluege gestrichen			
4254	4.02.2019	Flughafen München, Flug Nizza			
4255	5.02.2019	Nizza arbeiten, KD SMS			
4256	6.02.2019	Nizza BMC workshop, GrandTour ipad geschaut			
4257	7.02.2019	Nizza BMC workshop			
4258	8.02.2019	Flug Nizza München, MV geilen OV, SM Notarzt, Einlieferung KH			
4259	9.02.2019	aufräumen, Birgit, Robert, Renate, Lukas Regens-Wagner geholt, SM im KH besucht			
4260	10.02.2019	Lukas Schrank raeumen, SM KH besucht			
4261	11.02.2019	Antrag Kurzzeitpflege an DAK, Manu auf Besuch, SM KH besucht			
4262	12.02.2019	MV Holzkirchen geholt, zu Hause, geilen Sex			
4263	13.02.2019	Kleidersaecke Renate gefahren, Kuechenschrank geraeumt, Regens-Wagner wegen Lukas, SM KH besucht			
4264	14.02.2019	Wäsche waschen, Alibert geräumt, einkaufen Alpengrossmarkt, SM KH besucht			
4265	15.02.2019	Bad Schrank raeumen, SM KH besucht, KD SMS			
4266	16.02.2019	Staub saugen, nass wischen, Flur, Bad Schrank raeumen, Fischstäbchen, SM KH besucht			
4267	17.02.2019	Fisch und Spinat kochen, SM KH besucht			
4268	18.02.2019	Doc wg Lukas Karte & Rezept, SM KH besucht			
4269	19.02.2019				
4270	20.02.2019	SM KH besucht			
4271	21.02.2019	Katzenkloo, saugen, SM KH besucht, einkaufen			
4272	22.02.2019	SM KH besucht			
4273	23.02.2019	Kochen Lachs und Spinat, SM KH besucht			
4274	24.02.2019	essen kochen, SM KH besuch, Lukas Regenz Wagner, MV in WOR abgeholt			
4275	25.02.2019	MV zu Hause geilen Sex, SM KH besucht			
4276	26.02.2019	MV Erding gefahren, Lissabon geflogen, BMC CAB treffen Sky bar, Grand Tour Prime Video			
4277	27.02.2019	BMC CAB treffen, TukTuk durch Lissabon			
4278	28.02.2019	BMC CAB treffen			
4279	1.03.2019	Lissabon nach Muenchen geflogen, MV Holiday Inn			
4280	2.03.2019	Hauham fahren, Lukas Regens Wagner abgeholt, SM KH besucht, Grand Tour Prime Video			
4281	3.03.2019	kochen Bratwurst mit Spinat, SM KH besucht, Grand Tour Prime Video		Blutschwarz	
4282	4.03.2019	Spaghetti mit Pesto, Grand Tour Prime Video			
4283	5.03.2019	Kammer OG Kleidung, Windeln, SM KH besucht, Grand Tour Prime Video			
4284	6.03.2019	MV Holzkirchen geholt und zu Hause geilen Sex, Bosch Prime Video			
4285	7.03.2019	MV geilen Sex im Auto, SM KH besucht,  Bosch Prime Video			
4286	8.03.2019	Staubsaugen,  SM KH besucht, Bosch Prime Video			
4287	9.03.2019	nass wischen, Katzenkloo, SM KH besucht, CB zu Hause			
4288	10.03.2019	Haehnchenbrust kochen, SM KH besucht, Bosch Prime Video		Blutschwarz	
4289	11.03.2019	SM KH besucht			
4290	12.03.2019	MV geilen Sex im Auto			
4291	13.03.2019	FXDL Batterie, Sitz einbauen, SM KH besucht		Blutschwarz	
4292	14.03.2019	FLHC Geretsried geholt, Seemueller Anhänger, SM KH besucht			
4293	15.03.2019	SM KH besucht		Blutschwarz	
4294	16.03.2019	FXDL fahren, kochen Huhn Brokkoli, Kartoffeln, SM KH besucht		Blutschwarz	MB, Irschenberg, Bruckmuehl, Ischenberg, Parsberg
4295	17.03.2019	FLHC fahren, kochen Spinat, Fisch, Kartoffeln, SM KH besucht			MB, Parsberg, Brannenburg, Raubling, Pang, Hundham, Woernsmuehl
4296	18.03.2019	einkaufen, SM KH besucht		Blutschwarz	
4297	19.03.2019				
4298	20.03.2019	FLHC fahren, SM KH besucht			MB, Weyarn, Kreuzstrasse, Bad Aibling, Pullach, Hundham, Woernsmuehl
4299	21.03.2019	FLHC fahren, SM KH besucht, MT Schmidts			MB, Glonn, Anzing, Mkt Schwaben, ED, Dorfen, RO, Bad Aibling, Pulalch, Hundahn, Woernsmuehl
4300	22.03.2019	FXDL fahren, SM KH abgeholt			Woernsmuehl, Hundham, Pullach, Beyharting, Fellach, Holki, Kreuzstrasse, MB
4301	23.03.2019	FLHC fahren		Blutschwarz	Hundham, Nussdorf, Erl, Koessen, Reit, Oberwoessen, Marquatstein,Aschau, 
4302	24.03.2019	FXDL fahren		Blutschwarz	MB, Kreuzstrasse, Hoehenkirchen, Anzing, Ebersberg, Steinhoering, Rott, Golling, Irschenberg
4303	25.03.2019			Blutschwarz	
4304	26.03.2019	MV geilen Sex im Auto,		Blutschwarz	
4305	27.03.2019			Blutschwarz	
4306	28.03.2019	FLHC Geretsried, Anhänger geholt		Blutschwarz	Geretsried, Bad Toelz, Holki, Pullach, Hundahm, Woernsmuehl
4307	29.03.2019			Blutschwarz	
4864	24.11.2020	MV Sex			
4308	30.03.2019	Lammcurry kochen, FXDL fahren		Blutschwarz	Irschenberg, Beyharting, Bruckmuehl, Fellach, Weyarn, MB, Irschenberg, Leitzach, Woernsmuehl
4309	31.03.2019	FLHC fahren		Blutschwarz	Woernsmuehl, Brannenburh, Nussdorfm, Raubling, RO, Pang, Ulach, Faisting, Weyarn, Seeham, Leitzach
4310	1.04.2019	FLHC fahren HD Geretsried wg KessTech		Blutschwarz	
4311	2.04.2019	massage		Muttertag	
4312	3.04.2019	MV geilen Sex im Auto,		Muttertag	
4313	4.04.2019	FLHC House of Flames Rohrdorf wg KessTech, Massage		Muttertag	
4314	5.04.2019			Muttertag	
4315	6.04.2019	FXDL fahren, Fisch und Bratkartoffeln kochen			Hundham, Bad feilnbach, Brannenburg, Nussdorf, Erl, Kufstein, Landl, Schliersee
4316	8.04.2019			Muttertag	
4317	9.04.2019	MV geilen Sex im Auto, Massage		Muttertag	
4318	10.04.2019			Muttertag	
4319	11.04.2019	Massage		Muttertag	
4320	12.04.2019	FXDL Rohrdorf gefahren, FLHC abgeholt		Muttertag	MB, Irschenberg, Rohrdorf, Irschenberg, Leitzach, Woehrnmuehl
4321	13.04.2019	FLHC fahren, Pizza backen		Muttertag	Woernsmuehl, Leitzach, A8, Rohrdorf, RO, Pang, Golling, Ischenberg, Leitzach
4322	14.04.2019			Muttertag	
4323	15.04.2019	FLHC neue Zulassungsbescheinigung Teil 1		Muttertag	
4324	16.04.2019	Randall Boot House of Flames gekauft		Muttertag	
4325	17.04.2019	FXDL RO abgeholt, RAV Poetzinger		Muttertag	
4326	18.04.2019			Muttertag	
4327	23.04.2019	MV geilen Sex im Auto		Muttertag	
4328	24.04.2019	MV geilen Sex im Auto		Muttertag	
4329	25.04.2019	FLHC arbeit fahren		Muttertag	
4330	26.04.2019			Muttertag	
4331	27.04.2019	Frikadellen		Muttertag	
4332	28.04.2019	FXDL fahren		Muttertag	Weyarn, Kreuzstrasse, Feldkirchen
4333	29.04.2019			Muttertag	
4334	30.04.2019	MV geilen Sex im Auto		Ein Dunkles Spiel	
4335	1.05.2019	FLHC fahren		Ein Dunkles Spiel	
4336	2.05.2019	MV Hotel		Ein Dunkles Spiel	
4337	3.05.2019	Holz Lieferung, Holz raeumen		Ein Dunkles Spiel	
4338	4.05.2019	Holz raeumen, Pastel de Nada		Ein Dunkles Spiel	
4339	5.05.2019	Fischbraten		Ein Dunkles Spiel	
4340	6.05.2019	Taettowierer Kolbermoor		Ein Dunkles Spiel	
4341	7.05.2019	MV geilen Sex im Auto, Massage		Ein Dunkles Spiel	
4342	8.05.2019	FLHC arbeit fahren		Ein Dunkles Spiel	
4343	9.05.2019	Rokker Jeans		Ein Dunkles Spiel	
4344	10.05.2019			Ein Dunkles Spiel	
4345	11.05.2019	Schuhschrank, Klodeckel, FXDL Luft prüfen		Ein Dunkles Spiel	
4346	12.05.2019			Ein Dunkles Spiel	
4347	13.05.2019	Taettowierer Kolbermoor		Ein Dunkles Spiel	
4348	14.05.2019	MV geilen Sex im Auto		Ein Dunkles Spiel	
4349	15.05.2019	MV geilen Sex im Auto		Ein Dunkles Spiel	
4350	16.05.2019			Ein Dunkles Spiel	
4351	17.05.2019			Ein Dunkles Spiel	
4352	18.05.2019	FLHC Augsburg, FLHTKL gekauft und Heritage verkauft		Ein Dunkles Spiel	Weyarn, A8, Mittlerer Ring, A96, B17
4353	20.05.2019	Massage, Geld abheben fuer FLHTKL		Ein Dunkles Spiel	
4354	21.05.2019	Augsburg Auspuff, Geld, Papiere fuer FLHTKL		Ein Dunkles Spiel	
4355	22.05.2019			Die Rächer - Jack Daniels	
4356	23.05.2019	FLHTKL zugelassen, FLHC und FLHTKL Übergabe in Augsburg		Die Rächer - Jack Daniels	
4357	25.05.2019	FLHTKL fahren, Lamm kochen		Die Rächer - Jack Daniels	Irschenberg, A8, Rohrdorf, Aschau, Sachrang, Kufstein, Landl,Hundham, Bad Feilnbach. Leitzachtal 
4358	26.05.2019	FXDL fahren		Die Rächer - Jack Daniels	MB, Irschenberg, Goetting, Beyharting, Feldkirchen, Peiss, Sauerlach, Bad Toelz
4359	27.05.2019	Tättowierer Kolbermoor		Die Rächer - Jack Daniels	
4360	28.05.2019	Massage		Die Rächer - Jack Daniels	
4361	29.05.2019			Die Rächer - Jack Daniels	
4362	30.05.2019	FLHTKL und FXDL fahren		Die Rächer - Jack Daniels	
4363	31.05.2019	FXDL fahren		Die Rächer - Jack Daniels	
4364	1.06.2019	FLHTKL fahren		Die Rächer - Jack Daniels	
4365	2.06.2019	FLHTKL fahren		Die ewigen Toten	
4366	3.06.2019	FLHTKL fahren		Die ewigen Toten	
4367	4.06.2019	FLHTKL Arbeit fahren		Die ewigen Toten	
4368	5.06.2019	MV geilen Sex im Auto, Paletten			
4369	6.06.2019			Die ewigen Toten	
4370	7.06.2019	FLHTKL Inspektion Rohrdorf		Die ewigen Toten	
4371	8.06.2019	Holz sägen, FLHTKL fahren			
4372	9.06.2019	FXDL und FLHTKL fahren		Die ewigen Toten	
4373	10.06.2019	FXDL und FLHTKL fahren		Die ewigen Toten	
4374	11.06.2019	MV geilen Sex im Auto		Die ewigen Toten	
4375	12.06.2019	FLHTKL fahren		Die ewigen Toten	
4376	13.06.2019	MV geilen Sex im Auto		Die ewigen Toten	
4377	14.06.2019	FXDL fahren,Tättowierer Kolbermoor, Kerstin telefoniert		Die ewigen Toten	
4378	15.06.2019	FLHTKL fahren, Tomatensosse kochen		Die ewigen Toten	
4379	16.06.2019	FLHTKL fahren		Die ewigen Toten	
4380	17.06.2019	FLHTKL fahren		Die ewigen Toten	
4381	18.06.2019	BMC Essen, Kerstin telefoniert, MV geilen Sex im Freien, Massage		Die ewigen Toten	
4382	19.06.2019	FXDL fahren, Cycle Factory wg FXDL Umbau		Die ewigen Toten	
4383	20.06.2019	FXDL fahren		Die ewigen Toten	
4384	21.06.2019			Die ewigen Toten	
4385	22.06.2019	FLHTKL fahren, FXDL fahren		Die ewigen Toten	
4386	23.06.2019	FXDL fahren		Die ewigen Toten	
4387	24.06.2019	MV geilen Sex im Auto und Hotel		Die ewigen Toten	
4388	25.06.2019	FXDL Cycle Factory, FLHTKL fahren, Massage		Die ewigen Toten	
4389	26.06.2019	FLHTKL arbeit fahren, AH Bernried			
4390	27.06.2019	FLHTKL arbeit fahren, Maria mitgefahren und Sex im freien, viele Muecken		Die ewigen Toten	
4391	28.06.2019			Die ewigen Toten	
4392	29.06.2019	FLHTKL fahren		Die ewigen Toten	
4393	30.06.2019	FLHTKL fahren		Die ewigen Toten	
4394	1.07.2019	FLHTKL fahren		Der Kindermacher: Ein Eifelkrimi -1	
4395	2.07.2019	Referenzbesuch LBBW, Massage		Der Kindermacher: Ein Eifelkrimi -1	
4396	3.07.2019	FLHTKL fahren, FXDL geholt		Der Kindermacher: Ein Eifelkrimi -1	
4397	4.07.2019	MV geilen Sex im Auto		Der Kindermacher: Ein Eifelkrimi -1	
4398	5.07.2019	Zulassungsstelle FXDL Reifen eintragen, FXDL Cycle Factory wg Bremslicht		Der Kindermacher: Ein Eifelkrimi -1	
4399	6.07.2019	FLHTKL fahren		Der Kindermacher: Ein Eifelkrimi -1	
4400	7.07.2019			Der Kindermacher: Ein Eifelkrimi -1	
4401	8.07.2019			Der Kindermacher: Ein Eifelkrimi -1	
4402	9.07.2019	FLHTKL fahren, Massage		Der Kindermacher: Ein Eifelkrimi -1	
4403	10.07.2019	MV geilen Sex im Auto		Der Kindermacher: Ein Eifelkrimi -1	
4404	11.07.2019	MV geilen Sex im Auto, Cycle Factory Fehler gefunden		Der Kindermacher: Ein Eifelkrimi -1	
4405	12.07.2019	FLHTKL fahren		Der Kindermacher: Ein Eifelkrimi -1	
4406	13.07.2019	Lammcurry kochen, FLHTKL fahren bei starkem Regen		Der Kindermacher: Ein Eifelkrimi -1	
4407	14.07.2019	FLHTKL fahren		Der Kindermacher: Ein Eifelkrimi -1	
4408	15.07.2019	FLHTKL fahren		Der Kindermacher: Ein Eifelkrimi -1	
4409	16.07.2019	FLHTKL Arbeit fahren, Massage		Der Kindermacher: Ein Eifelkrimi -1	
4410	17.07.2019	FLHTKL Arbeit fahren		Der Kindermacher: Ein Eifelkrimi -1	
4411	18.07.2019	MV geilen Sex im Auto		Der Kindermacher: Ein Eifelkrimi -1	
4412	19.07.2019	FXDL Cycle Factory geholt, FXDL fahren		Der Präparator	
4413	20.07.2019	FXDL fahren		Der Präparator	
4414	21.07.2019	FXDL fahren, MV Schliersee getroffen	MTB fahren, laufen, weil MTB platt	Der Präparator	
4415	22.07.2019	FLHTKL arbeit fahren, Maria mitgefahren und Sex im freien		Der Präparator	
4416	23.07.2019	FXDL arbeit fahren, MV McDonalds Kaffee trinken, Massage		Der Präparator	
4417	24.07.2019	MV geilen Sex im Auto		Der Präparator	
4418	25.07.2019	FLHTKL fahren, MTB Schliersee		Der Präparator	
4419	26.07.2019	FLHTKL fahren		Der Präparator	
4420	27.07.2019	FLHTKL fahren		Der Präparator	
4421	28.07.2019	FLHTKL fahren		Der Präparator	
4422	29.07.2019	MTB geholt aus Reperatur		Der Präparator	
4423	30.07.2019	FLHTKL Penzl Auspuff, FXDL fahren, Massage			
4424	31.07.2019	mit Anhänger nach ED, MV Kantine pause		Der Präparator	
4425	1.08.2019	MV geilen Sex im Auto		Der Präparator	
4426	2.08.2019				
4427	3.08.2019	FXDL Rohrdorf fahren		Der Präparator	
4428	4.08.2019				
4429	5.08.2019	Griedel fahren			
4430	6.08.2019	Gambach Volksbank			
4431	7.08.2019	Griedel Hausham fahren		Der Präparator	
4432	8.08.2019	FLHTKL fahren und putzen		Der Präparator	
4433	9.08.2019	FXDL Rohrdorf holen, FLHTKL fahren		Der Präparator	
4434	10.08.2019	FLHTKL fahren		Der Präparator	
4435	11.08.2019	FLHTKL fahren		Der Präparator	
4436	12.08.2019			Der Präparator	
4437	13.08.2019	Massage, FLHTKL fahren, Rohrdorf		Der Präparator	
4438	14.08.2019	FXDL Rohrdorf, FLHTKL fahren , Breakout,		Der Präparator	
4439	15.08.2019	FLHTKL fahren, CB Telegram		Der Präparator	
4440	16.08.2019	Holz sägen, FLHTKL fahren		Heimläuten	
4441	17.08.2019	FXDL, FLHTKL fahren		Heimläuten	
4442	18.08.2019	FLHTKL fahren		Heimläuten	
4443	19.08.2019	Zulassungstelle FXDL, FLHTKL fahren		Heimläuten	
4444	20.08.2019	Massage, FLHTKL fahren, FXDL Auspuffband		Heimläuten	
4445	21.08.2019	FLHTKL fahren		Heimläuten	
4446	22.08.2019	FLHTKL fahren, Highway Fussrasten		Heimläuten	
4447	23.08.2019	FXDL fahren, FLHTKL und FXDL waschen		Heimläuten	
4448	24.08.2019	FLHTKL fahren Innsbruck		Heimläuten	
4449	25.08.2019	FLHTKL fahren		Heimläuten	
4450	26.08.2019			Heimläuten	
4451	27.08.2019	MV geilen Sex im Auto, Anhänger verkauft, Massage		Heimläuten	
4452	28.08.2019	TS Phoenix und mit Sonia		Heimläuten	
4453	29.08.2019			Benzin - Ein Fall für Julia Wagner	
4454	30.08.2019	Peter Maffay Album Jetzt, FLHTKL fahren		Benzin - Ein Fall für Julia Wagner	
4455	31.08.2019	FXDL, FLHTKL fahren		Benzin - Ein Fall für Julia Wagner	
4456	1.09.2019	FXDL, FLHTKL fahren		Benzin - Ein Fall für Julia Wagner	
4457	2.09.2019			Benzin - Ein Fall für Julia Wagner	
4458	3.09.2019	FLHTKL Rohrdorf fahren, Massage, FXDL fahren		Benzin - Ein Fall für Julia Wagner	
4459	4.09.2019	FLHTKL Rohrdorf geholt			
4460	5.09.2019	MV geilen Sex im Auto, Hotel Schwaig, mm bj, MV Boote und Kayak		Benzin - Ein Fall für Julia Wagner	
4461	6.09.2019			Benzin - Ein Fall für Julia Wagner	
4462	7.09.2019	Anhänger Paletten, Kofferanheaenger ausraeumen		Benzin - Ein Fall für Julia Wagner	
4463	8.09.2019	FLHTKL fahren		Benzin - Ein Fall für Julia Wagner	
4464	9.09.2019			Benzin - Ein Fall für Julia Wagner	
4465	10.09.2019	MV geilen Sex im Auto, MV Kajak		Benzin - Ein Fall für Julia Wagner	
4466	11.09.2019	iphone XR gekauft		Benzin - Ein Fall für Julia Wagner	
4467	12.09.2019	FLHTKL fahren		Benzin - Ein Fall für Julia Wagner	
4468	13.09.2019	Ipad6 und  MacBook Air 13" bstellt, Roulladen, Tiramisu		Benzin - Ein Fall für Julia Wagner	
4469	14.09.2019	FXDL und FHLHTKL fahren		Benzin - Ein Fall für Julia Wagner	
4470	15.09.2019	FXDL und FHLHTKL fahren			
4471	16.09.2019	FLHTKL fahren		Benzin - Ein Fall für Julia Wagner	
4472	17.09.2019	FLHTKL fahren, FXDL fahren, Massage		Benzin - Ein Fall für Julia Wagner	
4473	18.09.2019			Benzin - Ein Fall für Julia Wagner	
4474	19.09.2019	FLHTKL fahren		Tödlicher Betrug: Thilo Hains 3. Fall	
4475	20.09.2019				
4476	21.09.2019	FLHTKL fahren Bad Ischl			
4477	22.09.2019	FLHTKL fahren		Tödlicher Betrug: Thilo Hains 3. Fall	
4478	23.09.2019			Tödlicher Betrug: Thilo Hains 3. Fall	
4560	28.01.2020	BMC workshop, Bowling und Essen in Antibes			
4479	24.09.2019	Massage FXDL fahren		Tödlicher Betrug: Thilo Hains 3. Fall	
4480	25.09.2019	BMC Italiener essen		Tödlicher Betrug: Thilo Hains 3. Fall	
4481	26.09.2019			Tödlicher Betrug: Thilo Hains 3. Fall	
4482	27.09.2019	Maria telefoniert		Tödlicher Betrug: Thilo Hains 3. Fall	
4483	28.09.2019	Rohrdorf, KessTech FXDL gekauft		Tödlicher Betrug: Thilo Hains 3. Fall	
4484	29.09.2019	FXDL, FLHTKL fahren			
4485	30.09.2019	Maria telefoniert, FLHTKL fahren, Maria neues Handy		Tödlicher Betrug: Thilo Hains 3. Fall	
4486	1.10.2019	MV Ramada Hotel, geilen Sex		Tödlicher Betrug: Thilo Hains 3. Fall	
4487	2.10.2019	MV geilen Sex im Auto, MV Schlauchboote		Tödlicher Betrug: Thilo Hains 3. Fall	
4488	3.10.2019	Kartoffelsalat		Tödlicher Betrug: Thilo Hains 3. Fall	
4489	4.10.2019	FXDL fahren und Rohrdorf gebracht, Paletten sägen		Tödlicher Betrug: Thilo Hains 3. Fall	
4490	5.10.2019	gefuellte Paprika		Tödlicher Betrug: Thilo Hains 3. Fall	
4491	8.10.2019	MV geilen Sex im Auto			
4492	11.10.2019				
4493	13.10.2019	FXDL, FLHTKL fahren			
4494	25.10.2019			Der Blütenjäger	
4495	26.10.2019	FXDL, FLHTKL fahren		Der Blütenjäger	
4496	27.10.2019	FLHTKL fahren		Der Blütenjäger	
4497	28.10.2019	Koffer Anhänger abgeholt 		Der Blütenjäger	
4498	29.10.2019	Massage		Der Blütenjäger	
4499	30.10.2019			Der Blütenjäger	
4500	31.10.2019	MV geilen Sex im Auto		Der Blütenjäger	
4501	1.11.2019	FXDL fahren		Der Blütenjäger	
4502	2.11.2019	FXDL und FLHTKL putzen, FLHTKL fahren		Der Blütenjäger	
4503	3.11.2019			Der Blütenjäger	
4504	4.11.2019	FLHTKL fahren		Der Blütenjäger	
4505	5.11.2019			Der Blütenjäger	
4506	6.11.2019	MV Moxy Hotel		Der Blütenjäger	
4507	7.11.2019	FLHTKL fahren		Der Blütenjäger	
4508	8.11.2019			Der Blütenjäger	
4509	9.11.2019	Rohrdorf House of Flames		Der Blütenjäger	
4510	10.11.2019			Der Blütenjäger	
4511	11.11.2019			Der Blütenjäger	
4512	12.11.2019	MV geilen Sex im Auto, Oliver McDonalds getroffen, House of Flames wg Fahrwerk FXDL, etc		Dunkle Botschaft	
4513	13.11.2019	FLHTKL Winterlager abgeholt		Dunkle Botschaft	
4514	14.11.2019	FXDL Winterlager		Dunkle Botschaft	
4515	15.11.2019	Erbsensuppe		Dunkle Botschaft	
4516	16.11.2019	Gyros und Tzatziki kochen		Dunkle Botschaft	
4517	17.11.2019	Flur putzen		Dunkle Botschaft	
4518	18.11.2019			Dunkle Botschaft	
4519	19.11.2019			Dunkle Botschaft	
4520	20.11.2019	Sabine hat Selbstmord begangen		Dunkle Botschaft	
4521	21.11.2019	Kerstin telefoniert			
4522	22.11.2019	Pötzinger wegen RAV abholen, Kerstin telefoniert			
4523	23.11.2019	Kerstin telefoniert, MV in Erding getroffen, TS Jasmin		Dunkle Botschaft	
4524	24.11.2019	MTB fahren, Kerstin telefoniert			
4525	25.11.2019	Bestatter, KD SMS, Kerstin telefoniert			
4526	26.11.2019	Amtsgericht angerufen wg Betreuer, Sabine Kleidung Bestatter, Brief Pötzinger			
4527	27.11.2019	Lukas abgeholt nach Bad Wiessee. RAV Benzin verkauft			
4528	28.11.2019	Merlin Tierarzt	 Pötzinger Geld geholt fuer RAV		
4529	2.12.2019	Merlin Tierarzt			
4530	7.12.2019	putzen, Betten, Ilona telefoniert,  TS Jasmin	laufen Wald und zurueck)		
4531	10.12.2019				
4532	11.12.2019	MV in Holki geholt, zu Hause geilen Sex und ueber nacht geblieben			
4533	12.12.2019	MV ED gefahren, Kleidung Caritas ED, Sterbeurkunde RV			
4534	15.12.2019	Staubsaugen, Waesche waschen, Kerstin und Katarina essen Braeuwirt	laufen Wald und zurueck)		
4535	26.12.2019	Ilona telefoniert, Nudel mit Lachs kochen	laufen (ueber Trigema)		
4536	5.01.2020	Kratzbaum WoZi abgebaut	laufen (Schlierach - kurz)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4537	6.01.2020	MV Riem abgeholt ,Sex zu Hause			
4538	7.01.2020	MT, Pizza gekauft	laufen (Schlierach, Rathaus)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4539	8.01.2020	MV Sex im Auto		Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4540	9.01.2020				
4541	9.01.2020	AH Bernried	laufen (Schlierach hin und zurueck)		
4542	10.01.2020	einkaufen, Staubsaugen	laufen (Wald und zurueck)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4543	11.01.2020	Tortellini mit Lachs, CB hat abgesagt	laufen (Schlierach hin und zurueck)		
4544	12.01.2020		Wade verletzt	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4545	13.01.2020	MV Holki geholt ueber Nacht geblieben	Wade verletzt		
4546	14.01.2020	MV Riem gefahren	Wade verletzt	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4547	15.01.2020	Renate, Birgit, Robert Italiener essen	Wade verletzt	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4548	16.01.2020		Wade verletzt		
4549	17.01.2020		Wade verletzt		
4550	18.01.2020	MV Holki abgeholt ,Sex zu Hause, Holki gefahren,  Essen Weissbräustueberl MB 	Wade verletzt	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4551	19.01.2020	Kleines Zimmer OG geraeumt, Staubsaugen, Waesche waschen	laufen (Wald und zurueck)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4552	20.01.2020	Plastikmuell	laufen (Schlierach - kurz)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4553	21.01.2020	Wertstollhof Miesbach, Massage, Pizza essen	spazieren	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4554	22.01.2020	AH Bernried	laufen,walken (Schlierach - kurz)		
4555	23.01.2020	Amtsgericht wegen Nachlass	Wade verletzt	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4556	24.01.2020	Staubsaugen	Wade verletzt	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4557	25.01.2020	MV Holki abgeholt, geilen Sex zu Hause, nach ED gefahren, essen Braeuwirt MB	Wade verletzt	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4558	26.01.2020	Maria kurz getroffen, Flug Nizza, Essen Rene, Renaud			
4559	27.01.2020	CTLM Training, Sophia Antipolis, Essen Marcel, Tijs			
4561	29.01.2020	Team Frühstück mit Renaud			
4562	30.01.2020	CTLM Training, MBO, Goliath amazon Prime			
4563	31.01.2020	CTLM Training, Flug Nizza Muenchen			
4564	1.02.2020	Goliath amazon Prime	laufen (Wald und zurueck)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4565	2.02.2020	Goliath amazon Prime	laufen (Wald und zurueck)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4566	3.02.2020	Merkur kuendigen		Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4567	4.02.2020	Massage, Italiener Pizza essen		Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4568	5.02.2020	MV Sex im Auto, Goliath amazon Prime		Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4569	6.02.2020		laufen (Wald und zurueck)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4570	7.02.2020	Sparkasse Schliersee, Zulasungsbescheining VRSCDX	laufen (Wald und zurueck)	Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4571	8.02.2020				
4572	8.02.2020	Lukas Zimmer geraeumt mit Manuela, nass Wohnung wischen, Flur nass geputzt		Der Maskenmörder (Ein Jack-Daniels-Thriller 12)	
4573	9.02.2020	Erding gefahren, MV Sex im Auto	laufen (ueber Rathausstr)	Der Hof - Simon Beckett	
4574	10.02.2020		laufen (ueber Rathausstr)	Der Hof - Simon Beckett	
4575	11.02.2020			Der Hof - Simon Beckett	
4576	12.02.2020	Renate, Birgit, Robert Italiener essen			
4577	13.02.2020	MV Sex im Auto		Der Hof - Simon Beckett	
4578	14.02.2020	Zulassugstelle VRSCDX, Anhänger angemietet		Der Hof - Simon Beckett	
4579	15.02.2020	Wertstoffhof Holz, Tauchflaschen, RAV waschen, Braeuwirt essen	laufen (Schlierach hin und zurueck)	Der Hof - Simon Beckett	
4580	16.02.2020		laufen (Schlierach, Rathaus)	Der Hof - Simon Beckett	
4581	17.02.2020	Staubsaugen, Altkleider, House of Flames Rechung FXDL und FLHTKL		Der Hof - Simon Beckett	
4582	18.02.2020	Altkleider, Sparkasse Dollar geholt, Massage	laufen (Schlierach hin & zurueck, ohne gehen	Der Hof - Simon Beckett	
4583	19.02.2020	MV Sex im Auto		Der Hof - Simon Beckett	
4584	20.02.2020	AH Bernried, Pizza Miesbach Himmisepp	laufen (ueber Rathausstr), ohne Pause		
4585	21.02.2020	Flug Muenchen Denver			
4586	22.02.2020	Starbucks, Cherry Greek	Stepper 15Min		
4587	23.02.2020	Starbucks,	Stepper 30 Min, 2maL		
4588	24.02.2020	Starbucks Cherry Cricket Burger	Stepper 30 Min		
4589	25.02.2020	Starbucks Cherry Cricket Burger	Stepper 30 Min		
4590	26.02.2020	BMC CAB, Eishockey Spiel	Stepper 30 Min		
4591	27.02.2020	BMC CAB	Stepper 45 Min		
4592	28.02.2020	Starbucks, Flug Denver München	Stepper 30 Min		
4593	29.02.2020	Oliver Flughafen abgeholt, MV mit nach Hausham gefahren			
4594	1.03.2020	MV Hausham			
4595	2.03.2020	MV Hausham			
4596	3.03.2020	MV Hausham und Holzkirchen gefahren, FXDL und FLHTKL aus Winterlager, Massage			
4597	4.03.2020	Sperrmuell MB, MV Erding abgeholt			
4598	5.03.2020	MV Hausham und Holzkirchen gefahren, Zulassungsstelle, Sperrmuell MB			
4599	6.03.2020	Anhänger geholt, VRSCDX in Wuerzburg geholt, HD Lederjacke			
4600	7.03.2020	Anhänger zurueck			
4601	8.03.2020	Altkleider, VRSCDX gefahren, AH Bernried			
4602	9.03.2020				Der Knochengarten: Thriller (Carol Jordan und Tony Hill 11)  -05.2020
4603	9.03.2020	Sperrmuell Hausham, Schlafzimmer raeumen	laufen (ueber Rathausstr), ohne Pause		
4604	10.03.2020	MV Sex im Auto, Zahnarzt, Oliver McDonalds getroffen			
4605	11.03.2020	VRSCDX gefahren, Birgit, Renate, Robert beim Italiener essen			
4606	12.03.2020	FXDL fahren			
4607	13.03.2020	Sperrmuell, Schlafzimmer Nieschen fertig geraeumt			
4608	14.03.2020	Altkleider, VRSCDX fahren, Lukas Sachen geholt			
4609	15.03.2020	Altkleider, MV Erding Disaster, FLHTKL fahren			
4610	16.03.2020	Altkleider, Wertstoffhof, VRSCDX fahren			
4611	17.03.2020	Wertstoffhof MB Elekto, Papiermuell & Sperrmuell, FXDL fahren, Massage			
4612	18.03.2020	Wertstoffhof MB Papiermuell, Wannen Balkon, VRSCDX fahren			
4613	19.03.2020	FXDL fahren			
4614	20.03.2020	FLHTKL fahren			
4615	21.03.2020		laufen (ueber Rathausstr), ohne Pause		
4616	22.03.2020		laufen Schlierach und Tiefenbachstr, ohne Pause		
4617	23.03.2020			Echo einer Winternacht	
4618	24.03.2020		laufen (Schlierach, Rathausstr)		
4619	25.03.2020		laufen (Schlierach, Rathausstr)	Echo einer Winternacht	
4620	26.03.2020	Paletten sägen, Sitz FXDL			
4621	27.03.2020	Schrank Büro raeumen, Kalbsbaeckchen braten, Staubsaugen	laufen Schlierach, Tiefenbachstr, Trigema		
4622	28.03.2020				
4623	29.03.2020		laufen (Schlierach hin und zurueck)		
4624	30.03.2020	Schrank Buero abgebaut			
4625	31.03.2020	einkaufen, spazieren			
4626	1.04.2020				
4627	2.04.2020		laufen (Schlierach, Rathausstr)		
4628	3.04.2020		laufen (Schlierach, Rathausstr)		
4629	4.04.2020	Bad putzen, Nass wischen			
4630	5.04.2020		laufen Schlierach, Tiefenbachstr, Trigema		
4631	6.04.2020	Sparkasse, FLHTKL fahren, Zigarren bestellt			
4632	7.04.2020				
4633	8.04.2020				
4634	8.04.2020	FXDL fahren, einkaufen			
4635	9.04.2020				
4636	10.04.2020	VRSCDX fahren	laufen Schlierach, Tiefenbachstr, Trigema		
4637	11.04.2020	VRSCDX fahren			
4638	12.04.2020	RAV Inspektion	laufen Poetzinger,Schlierach,Rathaus,Trigema		
4639	13.04.2020				
4640	14.04.2020				
4641	15.04.2020	RAV geholt, Pizza backen	laufen Poetzinger		
4642	16.04.2020	FLHTKL fahren, einkaufen, Pizza backen			
4643	17.04.2020	FXDL fahren, Wohnung Erding-Indorf angeschaut			
4644	18.04.2020	Wertstoffhof E-Muell, Sperrmuell, Wannen, FXDL fahren, Schuhschrank, Staubsaugen, Mietvertrag			
4645	19.04.2020	Schlafzimmerschrank Sabine Sachen, FLHTKL fahren, Mietvertrag unterschrieben			
4647	21.04.2020	Wertstoffhof Holz, Schuhe Altkleider MV getroffen, Wohnung Erding angeschaut			
4648	22.04.2020	FXDL fahren, Altkleider			
4649	23.04.2020	Sperrmuell, Altkleider, BJ, Zigarren,VRSCDX fahren	laufen (Schlierach, Rathaus)		
4650	24.04.2020	FXDL fahren,  ED Oliver			
4651	25.04.2020	Altkleider, Keller Schuhe, Pizza backen			
4652	26.04.2020	Pizza backen	laufen Schlierach, Tiefenbachstr, Trigema		
4653	27.04.2020	Steuer 2019 abgegeben			
4654	28.04.2020	VRSCDX fahren			
4655	29.04.2020	Altkleider Schuhe, MV in Riem geholt, zu Hause, MV nach Erding gefahren			
4656	30.04.2020	FXDL fahren			
4657	1.05.2020	FLHTKL fahren, AH Bernried			
4658	2.05.2020	Keller geraeumt		Echo einer Winternacht	
4659	3.05.2020	Bosch Staffel 6	laufen Schlierach, Tiefenbachstr, Trigema		
4660	4.05.2020	FXDL fahren, Jeans reparatur, 1und1 Umzug beantragt			
4661	5.05.2020	Werstoffhof, Kartoffelsalat mit Bratwurst			
4662	6.05.2020	Arbeitszeitverkuerzung Antrag, FXDL fahren			
4663	7.05.2020	VRSCDX fahren, FXDL fahren, Massage			
4664	8.05.2020				
4665	8.05.2020	FLHTKL fahren			
4666	9.05.2020	Erding gefahren, Oliver zu Hause, Pizza essen			
4667	10.05.2020				
4668	11.05.2020	MV Holzkirchen geholt, Sex			
4669	12.05.2020	Hagebau Umzugskarton, Jeans abgeholt, Renate Geburtstag, Massage			
4670	13.05.2020	Kartoffeln mit Bratwurst, AH Bernried			
4671	14.05.2020	Kabel kuendigen			
4672	15.05.2020				
4673	17.05.2020	MV Ottenhofen geholt, Sex, nach Erding gefahren, FLHTKL fahren			
4674	18.05.2020	FLHTKL fahren, Anwaltin Doris Mayerhöfer, Tilgungsaussetzung beantragt, VRSCDX fahren			
4675	19.05.2020	Wertstoffhof, FLHTKL fahren			
4676	20.05.2020		laufen (Schlierach, Rathaus)		
4677	21.05.2020	Oliver mit Familie da, Spaghetti Carbonara gekocht, FXDL fahren			
4678	22.05.2020	Dauerauftrag Miete, FLHTKL fahren, Erding Oliver			
4679	23.05.2020	Umzugskarton packen, VRSCDX fahren			
4680	24.05.2020	Umzugskarton packen, Gefrierschrank Keller ausleeren			
4681	25.05.2020	Umzugskarton packen, Kleidung in Taschen			
4682	26.05.2020	Werstoffhof MB			
4683	27.05.2020	FXDL fahren			
4684	28.05.2020	CB telefoniert			
4685	29.05.2020				
4686	30.05.2020	Keller geraeumt, FLHTKL fahren, AH Bernied und geilen Sex			
4687	31.05.2020	Kellersachen in Auto geraeumt, FXDL fahren			
4688	1.06.2020	FLHTKL fahren			
4689	2.06.2020	Wohnung Übergabe, FLHTKL Erding fahren, MV Sex in neuer WHG, Oliver grillen			
4690	3.06.2020	VRSCDX , FXDL Erding fahren, Oliver essen			
4691	5.06.2020	Hausham gefahren, Wohnung raeumen, Spagetti Carbonaa gekocht			
4692	6.06.2020	MV geilen Sex, VRSCDX mit Tanja fahren			
4693	7.06.2020	Hausham restliche Sachen geholt, Waschmaschine, Essen bei Oliver Tanja			
4694	8.06.2020	FXDL fahren, MV geilen Sex, Hagebaumarkt Regale, Sonnenschirm			
4695	10.06.2020				
4696	9.06.2020	Poco Lampen, Roller Badschrank, Fleischpflanzerl, Lachs kochen			
4697	10.06.2020	Hausham, Keller, TG, Wogh geraeumt, Renate, Birgit, Robert Italiener essen			
4698	11.06.2020	Bestellung amazon, FLHTKL fahren			
4699	12.06.2020	MV Sex auf Balkon, FXDL fahren, Segmueller Bett und Schrank abgeholt			
4700	14.06.2020	Gulasch kochen, Schrank einraeumen			
4701	15.06.2020	MV geilen Sex, Vorhaenge			
4702	17.06.2020	Vorhaenge Schlafzimmer, Wohnung Hausham restliche Sachen geholt, TS Jasmin Muenchen geholt			
4703	18.06.2020	Einwohneramt, Wurzer Müll entsorgen, Spaghetti Carbonara und Tiramisu			
4704	19.06.2020	MV geilen Sex			
4705	20.06.2020	putzen, Fleichflanzerl			
4706	21.06.2020	FXDL fahren, VRSCDX fahren, VRSCDX mit Tanja fahren			
4707	22.06.2020	BW Schrank, Essen			
4708	23.06.2020	MV geilen Sex, FLHTKL fahren, FLHTKL mit Tanja fahren			
4709	24.06.2020	FLHTKL fahren, AH Bernried			
4710	25.06.2020	FLHTKL mit Tanja fahren			
4711	26.06.2020	MV geilen Sex			
4712	27.06.2020	FXDL fahren, Moosinniger Weiher, FXDL mit Tanja fahren, Sonnenwendfest			
4713	28.06.2020	FXDL fahren, VRSCDX fahren, Moosinniger Weiher			Das Boese (Wegeners erste Faelle)
4714	29.06.2020	MV geilen Sex			Wie sehr willst du leben
4715	30.06.2020	MV geilen Sex, VRSCDX mit Tanja fahren			Der Knochengarten (Tony Hill)
4716	1.07.2020	FXDL fahren, Kids, Spagetti Carbonara			Boeses Geheimnis
4717	2.07.2020				
4718	3.07.2020	FXDL fahren, TSJ nervt zum Sex, zur S-Bahn gefahren			
4719	4.07.2020	MV Sex, FXDL fahren, Anhänger Stecker			
4720	5.07.2020	FLHTKL fahren, VRSCDX mit Tanja fahren			
4721	6.07.2020	Oliver, Tanja grillen			
4722	7.07.2020	MV Sex, FXDL fahren			
4723	8.07.2020				
4724	9.07.2020	FXDL fahren			
4725	10.07.2020	MV Sex, FXDL RO fahren			
4726	11.07.2020				
4727	12.07.2020	MX Sev, VRSCDX mit Tanja fahren			
4728	13.07.2020	FLHTKL RO fahren, Oliver grillen			
4729	14.07.2020	VRSCDX mit Tanja fahren			
4730	15.07.2020	MV geilen Sex, Spagetti Carbonara			
4731	16.07.2020	MV geilen Sex			
4732	17.07.2020				
4733	18.07.2020	FLHTKL Griedel fahren			
4734	19.07.2020	FLHTKL fahren			
4735	20.07.2020	FLHTKL Nordhorn Wilbers fahren, Mietwagen, Hotel			
4736	21.07.2020	Steg am Nordseestrand bei Emden gefahren			
4737	22.07.2020	HD Emsbueren, Pier99 essen			
4738	23.07.2020	Pier99 essen			
4739	24.07.2020	FLHTKL Wilbers abgeholt, Nordhorn Erding gefahren			
4740	25.07.2020	FLHTKL fahren, Daenisches Bettenlager Komode, VRSCDX mit Tanja gefahren			
4742	27.07.2020	MV geilen Sex, Sofa Segmueller geliefert, VRSCDX fahren			
4743	28.07.2020	MV geilen Sex, Daenisches Bettenlager Tisch und Bank 			
4744	29.07.2020	VRSCDX fahren			
4745	30.07.2020	Notar Termin Tegernsee, VRSCDX fahren			
4746	31.07.2020	VRSCDX fahren, MV geilen Sex, Spagetti Carbonara			
4747	1.08.2020	FXDL RO geholt, MV geilen Sex			
4748	2.08.2020	Pizza essen			
4749	3.08.2020	MV Sex			
4750	4.08.2020	MV Sex			
4751	5.08.2020				
4752	6.08.2020	MV Sex, FXDL fahren			
4753	7.08.2020	FLHTKL fahren, Wohnungsuebergabe			
4754	8.08.2020	FLHTKL fahren, ueber Passau, Deggendorf, LA			
4755	9.08.2020	MV Sex, FXDL fahren, Dorfen Pizza essen			
4756	10.08.2020	VRSCDX fahren			
4757	11.08.2020	MV Sex			
4758	12.08.2020	MV Sex, FXDL fahren			
4759	13.08.2020	Tanja Kaffee trinken da gewesebn			
4760	14.08.2020	MV Sex, FXDL fahren			
4761	15.08.2020	MUCCT5P migration			
4762	16.08.2020	FXDL fahren			
4763	17.08.2020	MV Sex, Spagetti Carbonara			
4764	18.08.2020	MV Sex			
4765	19.08.2020	MV Sex, VRSCDX fahren			
4766	19.08.2020				
4767	20.08.2020	FXDL fahren			
4768	21.08.2020	VRSCDX fahren			
4769	22.08.2020				
4770	23.08.2020	FLHTKL fahren			
4771	24.08.2020	MV Sex			
4772	25.08.2020	MV Sex, FXDL fahren			
4773	26.08.2020				
4774	27.08.2020	MV Sex			
4775	28.08.2020	FLHTKL fahren, Sparkasse Schliersee Geldmarktkonto			
4776	29.08.2020				
4777	30.08.2020	Nudeln essen Tanja, Oliver			
4778	31.08.2020	MV Sex			
4779	1.09.2020				
4780	2.09.2020	FXDL fahren, Fielmann Brille, MV Sex			
4781	3.09.2020	FXDL fahren, MV Sex			
4782	4.09.2020	FLHTKL fahren. MV sex, VRSCDX fahren, Spagetti Carbonara			
4783	5.09.2020	FLHTKL fahren, Arbersee			
4784	6.09.2020	FLHTKL fahren			
4785	7.09.2020	MV Sex			
4786	8.09.2020	MV Sex, FXDL fahren			
4787	9.09.2020	MV Sex, Pizza backen			
4788	10.09.2020	FXDL fahren			
4789	11.09.2020	VRSCDX fahren, Brille Fielmann			
4790	12.09.2020	FXDL fahren			
4791	13.09.2020	VRSCDX fahren			
4792	14.09.2020	FLHTKL fahren, Arber, Bayr. Eisenstein, Regen			
4793	15.09.2020	FXDL fahren, Maxrainer Biergarten			
4794	16.09.2020	FXDL fahren			
4795	17.09.2020				
4796	18.09.2020	FXDL fahren, Zeitlos essen			
4797	19.09.2020	FLHTKL fahren, Regen, Zwiesel, Bayr. Eisenstein, Arber			
4798	20.09.2020	BJ Woerther Weiher, FXDL fahrem			
4799	21.09.2020	VRSCDX fahren			
4800	22.09.2020				
4801	22.09.2020	VRSCDX fahren			
4802	23.09.2020	Cycle Factory Harley kaufen, Hausham Renate, Birgit, Robert Italiener essen			
4803	24.09.2020				
4804	25.09.2020	iPad Sim Karte			
4805	26.09.2020	Putzen			
4806	27.09.2020	FXDL fahren			
4807	28.09.2020				
4808	29.09.2020	Pizza backen			
4809	30.09.2020	FXDL fahren			
4810	1.10.2020	MV Sex			
4811	2.10.2020				
4812	3.10.2020	VRSCDX fahren			
4813	4.10.2020	FLHTKL fahren			
4814	5.10.2020	MV Sex, Interview BMC Phil Wood			
4815	6.10.2020	MV Sex			
4816	7.10.2020	MV Sex			
4817	8.10.2020				
4818	9.10.2020	MV Sex, FXDL fahren, Cycle Factory			
4819	10.10.2020				
4820	11.10.2020	MV Sex, FXDL fahren			
4821	12.10.2020	MX Sex			
4822	13.10.2020				
4823	14.10.2020	MV Sex			
4824	15.10.2020	Restbetrag Wohnung ueberwiesen			
4825	16.10.2020	Cycle Factory, Wi-Reifen			
4826	17.10.2020	Leonie Geburtstagsfeier, MV Sex			
4827	18.10.2020	FXDL fahren			
4828	19.10.2020	Manu Hausham Kaffee getroffen			
4829	20.10.2020	MV Sex			
4830	21.10.2020	MV Sex, FXDL fahren			
4831	22.10.2020				
4832	23.10.2020	MV Sex, FXDL fahren			
4833	24.10.2020				
4834	25.10.2020	MV Sex, FLHTKL fahren			
4835	26.10.2020				
4836	27.10.2020	MV Sex			
4837	28.10.2020				
4838	29.10.2020	Cycle Factory FLSTC bezahlt, V-Rod Umbau, Horizont-IT Interview			
4839	30.10.2020	MV Sex			
4840	31.10.2020	FLHTKL, FXDL fahren			
4841	1.11.2020				
4842	2.11.2020	MV Sex, FXDL fahren			
4843	3.11.2020	MV Sex			
4844	4.11.2020				
4845	5.11.2020	MV Sex, VEP Programm beantragt, FXDL und FLHTKL Winterlager geholt			
4846	6.11.2020	MV Sex			
4847	7.11.2020				
4848	8.11.2020				
4849	9.11.2020	MV Sex			
4850	10.11.2020	MV Sex			
4851	11.11.2020	MV Sex			
4852	12.11.2020	MV Sex			
4853	13.11.2020	VRSXDX fahren, Frikadellen			
4854	14.11.2020	VRSXDX fahren, Rouladen			
4855	15.11.2020	MV Sex, VRSXDX fahren			
4856	16.11.2020	MV Sex			
4857	17.11.2020				
4858	18.11.2020	MV Sex			
4859	19.11.2020	MV Sex, APS Interview			
4860	20.11.2020				
4861	21.11.2020				
4862	22.11.2020	MV Sex			
4863	23.11.2020	Buero Umzug, GoPro Hero 7			
4865	25.11.2020	MV Sex			
4866	26.11.2020				
4867	28.11.2020	MV Sex			
4868	29.11.2020				
4869	30.11.2020				
4870	1.12.2020				
4871	1.12.2020	MV Sex			
4872	2.12.2020	MV Sex			
4873	3.12.2020	MV Sex			
4874	4.12.2020	AWS-Certified-Solutions-Architect-Associate			
4875	5.12.2020	AWS-Certified-Solutions-Architect-Associate			
4876	6.12.2020	AWS-Certified-Solutions-Architect-Associate			
4877	7.12.2020	MV Sex, Microsoft Azure Virtual Training Day: Fundamentals			
4878	8.12.2020	Microsoft Azure Virtual Training Day: Fundamentals			
4879	9.12.2020	MV Sex			
4880	10.12.2020	MV Sex			
4881	11.12.2020	Lauch, Hackflesch Eintopf			
4882	12.12.2020	Wirsing gekocht			
4883	13.12.2020				
4884	14.12.2020	MV Sex			
4885	15.12.2020	MV Sex, Notebook geliefert			
4886	16.12.2020				
4887	17.12.2020	MV Sex			
4888	18.12.2020	Heike angeschrieben			
4889	19.12.2020	Azure VM, Control-MV920 auf Notebook, Heike chat			
4890	20.12.2020	Heike Riemer See spazieren und am Abend, telefoniert			
4891	21.12.2020	MV Sex, Heike telefoniert			
4892	22.12.2020				
4893	23.12.2020	MV Sex, Heike telefoniert			
4894	24.12.2020	essen Forstner's, Heike telefoniert			
4895	25.12.2020				
4896	26.12.2020	Heike bei mir, spazieren, Zaertlichkeiten			
4897	27.12.2020	Heike bei mir, spazieren, Essen gekocht, uebernachtet			
4898	28.12.2020	DevOps Project: CI/CD with Jenkins Ansible Docker Kubernetes - install Jenkins			
4899	30.12.2020	Agile Crash Course, MV Sex, Heike bei mir			
4900	31.12.2020	Heike zu Hause gewesen und uebernachtet﻿			
4901					
4902	1.01.2021	Heike Sex, Fehringasee spazieren			
4903	2.01.2021	Heike bei mir uebernachtet			
4904	3.01.2021				
4905	4.01.2021	MV Sex			
4906	5.01.2021	MV Sex			
4907	6.01.2021	Kurs Understanding Jira, Madelene Baby bekommen, die kleine Lea			
4908	7.01.2021	MV Sex, VRSCDX laufen lassen			
4909	8.01.2021	MV Sex, Heike bei mir, spazieren, geilen Sex (mit Silde)			
4910	9.01.2021	Indorf spazieren, Bolognese gekocht, Udemy Kurs Terraform for AWS			
4911	10.01.2021	Udemy Kurs Terraform for AWS, Forstner Kaffee,  Heike zu mir gekommen			
4912	11.01.2021	Heike bei mir uebernachtet, geilen Sex			
4913	12.01.2021	Heike bei mir uebernachtet, geilen Sex	mit Heike trainiert		
4914	13.01.2021	Heike bei mir uebernachtet, geilen Sex			
4915	14.01.2021	MV Sex, Oliver Kredite			
4916	15.01.2021	Heike bei mir uebernachtet, geilen Sex			
4917	16.01.2021	Heike bei mir uebernachtet, geilen Sex	Kronthaler spazieren		
4918	17.01.2021	Heike bei mir uebernachtet, Sex	walken 20 Min, Uebungen		
4919	18.01.2021	MV Sex, Kurs Liquibase, Forstner essen, Spagetti Carbonara	walken 30 Min		
4920	19.01.2021	Securing Your AWS Cloud	walken 30 Min		
4921	20.01.2021	MV Sex, Kurs Liquibase	walken 30 Min, Uebungen		
4922	21.01.2021	MV Sex	walken 30 Min		
4923	22.01.2021	bei Heike gewesen, spazieren Riemer See, geilen Sex	walken 30 Min		
4924	23.01.2021				
4925	24.01.2021	Heike bei mir	walken 30 Min, Uebungen		
4926	25.01.2021	Heike geilen Sex			
4927	26.01.2021				
4928	27.01.2021	MV geilen Sex	walken 50 Min Grass Schleife		
4929	28.01.2021	MV Sex			
4930	29.01.2021	HL gefahren			
4931	30.01.2021	HL übernachtet, Englischer Garten spazieren	Uebungen		
4932	31.01.2021	HL übernachtet, Spitizingsee gefahren	Bergtour Untere Firstalm		
4933	1.02.2021	MV Sex, Allianz Interview			
4934	2.02.2021	MV geilen Sex	walken 30 Minuten, laufen 2 Minuten		
4935	3.02.2021	HL bei mir und geilen Sex	walken 30 Minuten		
4936	4.02.2021	MV Sex	Uebungen		
4937	5.02.2021	Auto waschen	walken 50 Min Grass Schleife, 2*2 Min laufen		
4938	6.02.2021	Heike bei mir, geilen Sex	walken 50 Min Grass Schleife, 2*2 Min laufen	 walken Grass Schleife mit Heike	
4939	7.02.2021	Heike geilen Sex	walken Grass Feldweg, 3 Min laufen, Uebungen		
4940	8.02.2021		walken 50 Min Grass Schleife		
4941	9.02.2021	MV Sex			
4942	10.02.2021	bei Heike gewesen, geilen Sex	walken Grass, 3 Min laufen		
4943	11.02.2021	MV geilen Sex, kochen			
4944	12.02.2021	MV Sex, kochen	walken Grass 30 Min		
4945	13.02.2021	FLSTI Fat Boy geliefert, Mexikanisch gekocht	spazieren		
4946	14.02.2021	Heike geilen Sex, Ebersberg Eggsee spazieren	spazieren		
4947	15.02.2021		Uebungen		
4948	16.02.2021	FLSTI Fat Boy gestartet	walken 50 Min Grass Schleife		
4949	17.02.2021	MV geilen Sex, zu Heike gefahren	walken Grass 30 Min		
4950	18.02.2021	mit Heike nach Fuessen gefahren, geilen Sex			
4951	19.02.2021	Zulassungsstelle			
4952	20.02.2021	Pizza backen	walken 65 Min grosse Grass Runde		
4953	21.02.2021		walken Grass Schleife 4mal laufen, Uebungen		
4954	22.02.2021	MV Sex	walken Grass Schleife		
4955	23.02.2021		walken Grass Schleife, Uebungen		
4956	24.02.2021	FLSTI kurz gefahren, Ernst Papiere geholt, Heike gefahren, geilen Sex	spazieren um Riemer See		
4957	25.02.2021	MV geilen Sex			
4958	26.02.2021				
4959	27.02.2021	Fat Boy fahren, Heike bei mir, geilen Sex			
4960	28.02.2021	Heike geilen Sex	walken Pretzen 75 Min, Uebungen		
4961	1.03.2021	MV geilen Sex, Augenarzt, Fat Boy fahren ausgegangen			
4962	2.03.2021	Fat Boy fahren	walken Grass Schleife, 9 Min laufen		
4963	3.03.2021		walken Grass Schleife, 4 Min und 8 Min laufen		
4964	4.03.2021	MV geilen Sex, Heike gefahren, Sex			
4965	5.03.2021	Heike Sex, Fabi Geburtstag			
4966	6.03.2021	Heike gefahren, geilen Sex			
4967	7.03.2021	Neuhaus Bergtour Probstalm Dr.-Brodfueherweg	Begrtour		
4968	8.03.2021	MV geilen Sex	Uebungen		
4969	9.03.2021	Fat Boy fahren, Harleys aus Winterlager gebracht			
4970	10.03.2021				
4971	10.03.2021	MV geilen Sex, Fahrzeugbrief Fat Boy			
4972	11.03.2021	Heike bei mir,  geilen Sex			
4973	12.03.2021	Heike geilen Sex, Fat Boy fahren			
4974	13.03.2021	FLSTI und FXDL fahren	walken Grass Schleife, laufen 3-4-10 Min		
4975	14.03.2021	Heike gefahren, spazieren			
4976	15.03.2021	Heike Sex			
4977	16.03.2021	MV Sex, Zulassungstelle FLSTI umgemeldet und Kennzeichen montiert			
4978	17.03.2021	OTOBO Interview	walken Grass Schleife, laufen 6 Min, Uebungen		
4979	18.03.2021	MV Sex	walken Indorf, laufen 10 Min		
4980	19.03.2021		walken Grass Schleife, laufen 2x10 Min, Uebungen		
4981	20.03.2021		walken Richtung Prezen 75 Min		
4982	21.03.2021	Heike bei mir, Sex			
4983	22.03.2021	MV geilen Sex, Heike uebernachtet, Sex			
4984	23.03.2021	Interview ivv, Heike fahren			
4985	24.03.2021	Ikea fahren, McDonalds, FLSTI fahren			
4986	25.03.2021	MV Sex, FXDL fahren	laufen 30 Min, 3 Min gehen		
4987	26.03.2021	FLHTKL  fahren, FXDL mit Heike fahren, Heike Sex	laufen 30 Min, 3 Min gehen		
4988	27.03.2021	mit Heike laufen	laufen 30 Min , 2*3 Min gehen		
4989	28.03.2021	FLSTI und FXDL fahren			
4990	29.03.2021	MV geilen Sex, FLSTI und FXDL fahren	laufen 30 Min, 3 Min gehen		
4991	30.03.2021	OTOBO Leiblfing, FXDL fahren			
4992	31.03.2021	RAV Poetzinger,FLSTI fahren, Heike fahren, Picknick, Sex			
4993	1.04.2021	Heike Sex, MV Sex, FXDL fahren, Forstner in Taufkirchen			
4994	2.04.2021	FLSTI fahren	Uebungen		
4995	3.04.2021		laufen Grass Schleife 30 Min, ersten 10 Min walken		
4996	4.04.2021	Heike brunchen, FXDL fahren, Heike gefahren, geilen Sex			
4997	5.04.2021	mit Heike nach Bad Tölz gefahren			
4998	6.04.2021				
4999	7.04.2021				
5000	8.04.2021	Strandkorb geliefert			
5001	09.04.2021				
5002	9.04.2021	Vorstellung ivv Hannover			
5003	10.04.2021	FLSTI fahren, Strandkorb zusammengebaut, Heike fahren, geilen Sex			
5004	11.04.2021	MV Sex, FLHTKL fahren			
5005	12.04.2021				
5006	13.04.2021	Passbilder, Heike bei mir und geilen Sex			
5007	14.04.2021	Heike Sex	Uebungen		
5008	15.04.2021				
5009	16.04.2021	FLSTI fahren	laufen Grass Schleife 30 Min, ersten 10 Min walken, Uebungen		
5010	17.04.2021	mit Heike in Bad Toelz, zu mir gefahren und geilen Sex			
5011	18.04.2021				
5012	19.04.2021	MV in Markt Schwaben abgeholt,  bei mir übernachtet, geilen Sex			
5013	20.04.2021	MV Sex, nach Markt Schwaben gefahren, FLSTI fahren, Heike bei mir	laufen Grass Schleifen plus Pretzen		
5014	21.04.2021	Isen Sex, FXDL fahren, FLSTI fahren			
5015	22.04.2021	LKW Führerschein Verlägerung, FLHTKL fahren, schweissen probiert			
5016	23.04.2021	FLHTKL fahren, Metall Luthner, Heike fahren, Sex	Uebungen, Federball		
5017	24.04.2021	FLHTKL fahren, FLSTI fahren, schweissen			
5018	25.04.2021	FXDL fahren, FLHTKL mit Heike Schliersee gefahren			
5019	26.04.2021	Heike Sex, FLHTKL fahren, FLSTI fahren			
5020	27.04.2021	FXDL fahren,bei Cycle Factory VROD ABS defekt, Teile sind lackiert	laufen, Uebungen		
5021	28.04.2021	FLSTI fahren			
5022	29.04.2021	Heike fahren, geilen Sex			
5023	30.04.2021	Heike Sex, FXDL fahren			
5024	1.05.2021	FLHTKL fahren			
5025	2.05.2021	Putzen Heike bei mir, Sex auf dem Tisch	Übungen		
5026	3.05.2021	Heike Sex, FLTSFI fahren	Übungen		
5027	4.05.2021	MV geilen Sex, auf dem Tisch, Heike fahren	MTB Isar		
5028	5.05.2021	mit Heike Ikea und Louis			
5029	6.05.2021	Regale und Schrank zusammen bauen, Spiegel FLSTI			
5030	7.05.2021	MV geilen Sex, Heike bei mir, Sex			
5031	8.05.2021	FXDL fahren mit Heike am Chiemsee, Heike Sex			
5032	9.05.2021	FLSTI fahren	Übungen		
5033	10.05.2021	FLHTKL fahren, großer Arber			
5034	11.05.2021	FXDL fahren			
5035	12.05.2021	MV geilen Sex,  Chiropraktiker			
5036	13.05.2021	Heike Steinsee spazieren, bei mir, geilen Sex			
5037	14.05.2021	FXDL fahren mit Heike Aying Biergarten			
5038	15.05.2021	mit Heike Bad Tölz fahren, geilen Sex	Übungen		
5039	16.05.2021	FLSTI fahren, HD putzen , MTB Lenker			
5040	17.05.2021	Sex, Corona Impfung			
5041	18.05.2021	Zulassung FXDL Kennzeichen wechsel			
5042	19.05.2021	MV Sex			
5043	20.05.2021	Chiropraktiker, Heike bei mir und geilen Sex	walken Grass Schleife		
5044	21.05.2021				
5045	22.05.2021	FLSTI und FXDL fahren, FXDL Kennzeichen verloren	Übungen		
5046	23.05.2021	Kennzeichen gefunden, FLHTKL fahren	Übungen		
5047	24.05.2021	FLSTI fahren, Heike gefahrfen und geilen Sex			
5048	25.05.2021	Heike Sex, Fuehrerschein abgeholt, Chiropraktiker			
5049	26.05.2021	MV geilen Sex, Heike fahren	walken Riemer See mit Heike		
5050	27.05.2021	Chiropraktiker, FLSTI fahren			
5051	28.05.2021	MV geilen Sex, FXDL fahren			
5052	29.05.2021	FXDL fahren mit Heike im Maxlrainer Biergarten			
5053	30.05.2021		MTB fahren Thenner See-Frauenberg Runde		
5054	31.05.2021	FLSTI fahren, Chiropraktiker			
5055	1.06.2021	FXDL fahren	Übungen		
5056	2.06.2021	FLSTI fahren, Chiropraktiker, Kawasaki Ninja 1000SX Probe fahren und gekauft, Heike fahren, Sex			
5320	21.02.2022	Roseline Sex			
5057	3.06.2021	Heike Sex, mit Heike auf Gindelalm gegangen	Gindelalm		
5058	4.06.2021	MV geilen Sex, FXDL fahren			
5059	5.06.2021	FLSTI fahren			
5060	6.06.2021	Heike bei mir und geilen Sex			
5061	7.06.2021	MV geilen Sex, Backstüberlverein			
5062	8.06.2021	MV Sex, FLSTI fahren, Kawasaki zugelassen, FLHTKL fahren mit Heike in Strasslach - Muehle, Heike Sex	Übungen		
5063	9.06.2021	FLHTKl fahren, Heike Sex, FLSTI fahren, Chiropraktiker			
5064	10.06.2021	MV Sex, Kawasaki abgeholt, Eisdiele			
5065	11.06.2021	FLHTKl fahren, Satzi getroffen	MTB Egmating gefahren		
5066	12.06.2021	Kawasaki gefahren			
5067	13.06.2021	Kawasaki gefahren, FXDL fahren, Heike Sex und verbockt			
5068	14.06.2021	FXDL fahren, Heike am Steinsee essen			
5069	15.06.2021	Kawasaki gefahren, Schnitzelgaudi Markt Schwaben, FLSTI fahren, Chiropraktiker			
5070	16.06.2021				
5071	16.06.2021	MV Sex, FLSTI fahren, Heike gefahren, Sex			
5072	17.06.2021	Heike Flughafen gefahren, FLSTI fahren, Chiropraktiker, M-Sex,Kawasaki fahren			
5073	18.06.2021	MV Sex, Kawasaki fahren, FLSTI fahren			
5074	19.06.2021	FLSTI fahren, Indorf Sonnenwend			
5075	20.06.2021	FLHTKL fahren, US getroffen			
5076	21.06.2021	MV Sex, Kawasaki fahren	Übungen		
5077	22.06.2021	FLSTI fahren	MTB Oberdorfen		
5078	23.06.2021	MV Sex, Kawasaki fahren, Ninja 650 fahren			
5079	24.06.2021	amadeus Sachen abgeben, Büro geräumt,  Ninja 650 fahren, Kawasaki Inspektion geholt			
5080	25.06.2021	MV Sex			
5081	26.06.2021	Kawasaki fahren, Ducati Panigale V2 Probefahrt			
5082	27.06.2021	MV Sex, FLHTKL fahren			
5083	28.06.2021	Kawasaki fahren			
5084	29.06.2021	MV Sex, Motorrad putzen, FLHTKL fahren, Heike bei mir, Sex			
5085	30.06.2021	Heike Sex, mit Heike in FS			
5086	1.07.2021	MV Sex, Heike Maxrainer			
5087	2.07.2021	MV Sex und Anal bei mir, FLTFSI fahren, FXDL zu Heike fahren			
5088	3.07.2021	FXDL fahren, Griedel fahren, Essen Zum Herrmanns			
5089	4.07.2021	TS Gießen			
5090	5.07.2021	Hannover fahren, 1ster Tag ivv Büro			
5091	6.07.2021	Paulaner Biergarten, Bahnkarte			
5092	7.07.2021	Paulaner Biergarten			
5093	8.07.2021	Hannover nach Erding gefahren			
5094	9.07.2021	iphone 12			
5095	10.07.2021	Kawasaki fahren, Heike FXDL STA fahren, Sex			
5096	11.07.2021	Heike Sex, FXDL Heim fahren Regen, Heike bei mir, Sex			
5097	12.07.2021	Zug Hörlkofen-München-Hannover, Ducati Panigale V2 bestellt			
5098	13.07.2021				
5099	14.07.2021	SVA und Rewe Gespräch			
5100	15.07.2021	Ducati Jacken, Zug Hannover-München-Hörlkofen			
5101	16.07.2021	FLSTI fahren	Bankstütz		
5102	17.07.2021	FLSTI fahren, Heike bei mir, Dionysos essen, Sex	Übungen		
5103	18.07.2021	Kawassaki fahren, FLSTI fahren			
5104	19.07.2021	Pötzinger Auto zum Scheiben tausch, BMC Interview, FLSTI fahren			
5105	20.07.2021	Sex, mit Heike FXDL zur Finsinger Alm fahren, geilen Sex			
5106	21.07.2021	MV Sex, FLSTI fahren			
5107	22.07.2021	FLSTI fahren, mt Heike am Steinsee und Italiener in Oberpframmern			
5108	23.07.2021	FLHTKL fahren			
5109	24.07.2021	Kawasaki fahren, Ducati Jacken, FLSTI fahren, mit Forstners im Biergarten in Taufkirchen			
5110	25.07.2021	FXDL fahren, Heike Sex			
5111	26.07.2021	Zug Hörlkofen nach Hannover			
5112	27.07.2021	TS Ben			
5113	28.07.2021				
5114	29.07.2021	Privaten Laptop Control-M installiert, API und Rest-API funktioniert, TS Ben			
5115	30.07.2021	API auf meinem Laptop, Hamburg gefahren			
5116	31.07.2021	mit Heike in Hamburg			
5117	1.08.2021	mit Heike in Hamburg. Hannover gefahren			
5118	2.08.2021	mit Heike am Maschsee, essen, geilen Sex			
5119	3.08.2021	Macbook bestellt, Ubuntu VM, Heike am Maschsee, essen			
5120	4.08.2021	Sunny			
5121	5.08.2021	Zug Hannover nach Hörlkofen			
5122	6.08.2021	MV geilen Sex, waschen, FLSTI fahren			
5123	7.08.2021	Kawasaki fahren, Fielmann RayBan abgegeben.FLHTKL mit Heike Schliersee gefahren und im Regen zurück	Übungen		
5124	8.08.2021	FLSTI fahren, FLHTKL und FXDL putzen, Heike Sex, übernachtet	Übungen		
5125	9.08.2021	MV geilen Sex, Kawasaki fahren			
5126	10.08.2021	Kids bei mir, Impfen, Heike und Familie Mexikanisch essen			
5127	11.08.2021	MV Sex, Kawasaki fahren			
5128	12.08.2021	Kids bei mir, Spaghetti kochen, FLSTI fahren			
5129	13.08.2021	MV Sex, MFT auf Laptop installiert, TS Lenah, Heike bei mir	Übungen		
5130	15.08.2021	VRSCDX fahren, mit Heike FXDL fahren zum Moosinniger Weiher, Sex			
5131	16.08.2021				
5132	17.08.2021	MV Sex, VRSCDX fahren	Übungen		
5133	18.08.2021	MV geilen Sex, VRSCDX fahren	Übungen		
5134	19.08.2021	Kawasaki fahren	Übungen		
5135	20.08.2021	Ducati bezahlt und abgeholt, Fitnessstudio, bei Heike, Sauna	seitliche Übungen, 45Min Stepper		
5136	21.08.2021	Ducati ausgeladen, TS Angelina, VRSCDX fahren, FLSTI fahren			
5137	22.08.2021	Kawasaki fahren, Heike Sex (Tisch), mit Heike im Kino Kaiserschmarrndrama			
5138	23.08.2021	MV geilen Sex mit Strapon, QR Code scannen, Forstner grillen			
5139	24.08.2021	MV geilen Sex mit Strapon, FXDL fahren	seitliche Übungen		
5140	25.08.2021	Kawasaki fahren	seitliche Übungen		
5141	26.08.2021	Ducati zulassen,  Kennzeichenwechsel FLHTKL,VRSCDX wechseln, Ducati fahren			
5142	27.08.2021	MV geilen Sex mit Strapon, Sauna	Übungen, Laufband 65Min		
5143	28.08.2021	Therme Bad Aibling, gefahren Heike geblieben			
5144	29.08.2021				
5145	30.08.2021				
5146	31.08.2021	Ducati fahren			
5147	1.09.2021	MV geilen Sex, Heike beendet, Ducati fahren			
5148	2.09.2021	FXDL fahren, TÜV Gutachten VRSCDX geholt	seitliche Übungen, Stütz		
5149	3.09.2021	MV Sex, FLSTI fahren, Zulassungsstelle VRSCDX Eintragungen, Ducati fahren			
5150	4.09.2021	VRSCDX fahren, Ducati fahren	seitliche Übungen, Stütz		
5151	5.09.2021	MV Sex, Ducati fahren, FLSTI fahren	seitliche Übungen, Stütz		
5152	6.09.2021	VRSCDX fahren			
5153	7.09.2021	MV geilen Sex mit Strapon, Kawasaki fahren, Kawasaki umgefallen	seitliche Übungen, Stütz		
5154	8.09.2021	Ducati fahren, Grünbacher Biergarten	seitliche Übungen, Stütz		
5155	9.09.2021	MV Sex, Kawasaki fahren, Pizza essen Liberty	seitliche Übungen, Stütz		
5156	10.09.2021	MV Sex, Ducati fahren durchs Leitzachtal	seitliche Übungen, Stütz		
5157	11.09.2021	FLSTI fahren			
5158	12.09.2021	Kawasaki fahren, VRSCDX fahren			
5159	13.09.2021	Hannover fahren			
5160	14.09.2021	Zimmer anschauen			
5161	15.09.2021	Zimmer zugesagt, München gefahren			
5162	16.09.2021				
5163	17.09.2021	Ducati fahren	seitliche Übungen, Stütz		
5164	18.09.2021	FLHTKL über Passau und Deggendorf fahren, VRSCDX fahren			
5165	19.09.2021	VRSCDX fahren, FXDL fahren, Forstner beim essen, Kawasaki Kette ölen	seitliche Übungen, Stütz		
5166	20.09.2021	FXDL fahren	seitliche Übungen, Stütz		
5167	21.09.2021	FLSTI fahren	seitliche Übungen, Stütz		
5168	22.09.2021	FLSTI fahren	seitliche Übungen, Stütz		
5169	23.09.2021	Ducati fahren, Hinterradbremse klemmt und tropft	seitliche Übungen, Stütz		
5170	24.09.2021	Ducati fahren	seitliche Übungen, Stütz		
5171	25.09.2021	Kawasaki fahren, Arber, Passau			
5172	26.09.2021	VRSCDX fahren	seitliche Übungen, Stütz		
5173	27.09.2021	4Soft telefonat wg DevOps Job, Ducati fahren	seitliche Übungen, Stütz		
5174	28.09.2021	VRSCDX fahren, HD Eck	seitliche Übungen, Stütz		
5175	29.09.2021	FXDL fahren			
5176	30.09.2021	Ducati fahren	seitliche Übungen, Stütz		
5177	1.10.2021	FXDL fahren	seitliche Übungen, Stütz		
5178	2.10.2021	FLHTKL fahren, Passau, Arber	seitliche Übungen, Stütz, 60 situps		
5179	3.10.2021	FLHTKL fahren	seitliche Übungen, Stütz, 80 situps		
5180	4.10.2021	Hannover fahren, z/OS Kurs, Zimmer Hannover			
5181	5.10.2021	z/OS Kurs			
5182	6.10.2021	z/OS Kurs, Blumenstrauß für Petra			
5183	7.10.2021	z/OS Kurs			
5184	8.10.2021	Erding fahren			
5185	9.10.2021	VRSCDX fahren	seitliche Übungen, Stütz, 80 situps		
5186	10.10.2021	FLSTI fahren	seitliche Übungen, Stütz, 80 situps		
5187	11.10.2021	MV Sex, Kawasaki fahren	seitliche Übungen, Stütz, 80 situps		
5188	12.10.2021	MV Sex	seitliche Übungen, Stütz, 80 situps		
5189	13.10.2021	Hannover fahren	seitliche Übungen, Stütz, 80 situps		
5190	14.10.2021				
5191	15.10.2021	Erding fahren			
5192	16.10.2021	Kawasaki fahren	seitliche Übungen, Stütz, 80 situps		
5193	17.10.2021	MV Sex, FLSTI fahren, Leonie Geburtstag	seitliche Übungen, Stütz, 80 situps		
5194	18.10.2021	RAV Winterreifen, CB telefoniert	situps		
5195	19.10.2021		seitliche Übungen, Stütz, situps		
5196	20.10.2021	MV geilen Sex, VRSCDX, Ducati und Kawasaki fahren	situps		
5197	21.10.2021	Pötzinger RAV4 Plugin Hybrid			
5198	22.10.2021	MV geilen Sex, RAV4 Plugin Hybrid gekauft, Forster da zum Essen	situps		
5199	23.10.2021	FLSTI und FXDL fahren	seitliche Übungen, Stütz, situps		
5200	24.10.2021	VRSCDX fahren			
5201	25.10.2021	Hannover fahren			
5202	26.10.2021				
5203	27.10.2021				
5204	28.10.2021	Erding fahren			
5205	29.10.2021	Naomi angeschrieben im Afro Portal	seitliche Übungen, Stütz, situps		
5206	30.10.2021	Buggy entsorgt, FLSTI fahren, Naomi treffen und Italienisch essen			
5207	31.10.2021	FLSTI fahren,bei Naomi gewesen, essen und zum Steinsee gefahren, geküsst	seitliche Übungen, Stütz, situps		
5208	1.11.2021				
5209	2.11.2021	MV geilen Sex, Toyota Hybrid zugelassen	situps		
5210	3.11.2021	Theresa telefoniert	seitliche Übungen, Stütz, situps		
5211	4.11.2021	MV geilen Sex, Theresa telefoniert			
5212	5.11.2021	Had-Eck fahren			
5213	6.11.2021	 Theresa telefoniert	situps		
5214	7.11.2021				
5215	8.11.2021	Had-Eck VRSCDX und FLSTI gebracht, Theresa telefoniert	seitliche Übungen, Stütz, situps		
5216	9.11.2021	Lindiwe, Theresa telefoniert	situps		
5217	10.11.2021	Hannover fahren			
5218	11.11.2021				
5219	12.11.2021	Lindiwe Video telefoniert, Erding fahren			
5220	13.11.2021	Jolan VC, Lindiwe VC	situps		
5221	14.11.2021		seitliche Übungen, Stütz, situps		
5222	15.11.2021	Dorine VC, Toyota RAV4 Hybrid Übergabe, Theresa beendet			
5223	16.11.2021	Dorine VC, MV geilen Sex, Mautaapi VC			
5224	17.11.2021		situps		
5225	18.11.2021	Mautaapi VC, MV Sex, Dorine VC	situps		
5226	19.11.2021	Roseline in München getroffen,Mautaapi VC			
5227	20.11.2021	Mautaapi VC	 Roseline VC		
5228	21.11.2021	Roseline VC, Butzbach nach Hörlkofen gefahren			
5229	22.11.2021	MV Sex, Mautaapi VC 			
5230	23.11.2021	Mautaapi VC, Roseline VC, Roseline in München getroffen, Küssen mit Roseline	seitliche Übungen, Stütz, situps		
5231	24.11.2021	Mautaapi VC, Roseline VC			
5232	25.11.2021	MV Sex, Mautaapi VC, Roseline VC	seitliche Übungen, Stütz, situps		
5233	26.11.2021	MacBook Air upgrade, Roseline in FFB geholt, geilen Sex, bei mir übernachtet			
5234	27.11.2021	Roseline geilen Sex, bei mir übernachtet, Mautaapi VC, Roseline Kronthaler Weiher			
5235	28.11.2021	Roseline geilen Sex, bei mir übernachtet, Mautaapi VC, Roseline in Erding spazieren			
6007	27.01.2024			Der Lehrmeister	
5236	29.11.2021	Roseline geilen Sex, Mautaapi VC, Roseline FFB gefahren			
5237	30.11.2021	Mautaapi VC, MV Geilen Sex, Roseline VC	situps		
5238	1.12.2021	HD Winterlager, Mautaapi VC, Roseline VC			
5239	2.12.2021	MV geilen Sex, Roseline VC	seitliche Übungen, Stütz, situps		
5240	3.12.2021	Mautaapi VC, Roseline VC, Roseline in FFB geholt, Roseline Sex	seitliche Übungen, Stütz, situps		
5241	4.12.2021	Roseline Sex, Mautaapi VC, Roseline Arika Shop München			
5242	5.12.2021	Roseline Sex, mit Roseline an Spitzingsee und Schliersee gefahren			
5243	6.12.2021	Roseline Sex, Roseline FFB gefahren	seitliche Übungen, Stütz, situps		
5244	7.12.2021	MV geilen Sex, Mautaapi VC, Roseline VC, Limberg SMS - doofe Kuh			
5245	8.12.2021	Mautaapi VC, Roseline VC	seitliche Übungen, Stütz, situps		
5246	9.12.2021	MV geilen Sex, Roseline Sex	seitliche Übungen, Stütz, situps		
5247	10.12.2021	Roseline Sex			
5248	11.12.2021	Roseline Sex			
5249	12.12.2021	Roseline Sex, mit Roseline in Seebruck und Reith im Winkel	Bankstütz		
5250	13.12.2021	Roseline Sex, geiler Blowjob	seitliche Übungen, Stütz, situps		
5251	14.12.2021	MV geilen Sex, Mautaapi VC, Roseline  VC			
5252	15.12.2021	Roseline  VC, 	seitliche Übungen, Stütz, situps		
5253	16.12.2021	Mautaapi VC, Roseline  VC, Roseline FFB abgeholt, Roseline Sex	seitliche Übungen, Stütz, situps		
5254	17.12.2021	Roseline Sex			
5255	18.12.2021	Roseline Sex, Roaline LA gefahren, Mautaapi beendet			
5256	19.12.2021	Roseline Sex, mit Finger Anal, hat ihr gefallen, Roseline Sudelfeld gefahren			
5257	20.12.2021	Roseline Anal Sex, Roseline FFB gefahren	seitliche Übungen, Stütz		
5258	21.12.2021		seitliche Übungen, Stütz, situps		
5259	22.12.2021	Roseline FFB abgeholt, Roseline Sex	seitliche Übungen, Stütz, situps		
5260	23.12.2021	Roseline Sex, Erding Köln fahren			
5261	24.12.2021	Roseline Sex			
5262	25.12.2021	Roseline Sex, Köln  Dom			
5263	26.12.2021	Roseline Anal Sex sie fand es geil mit Spiegel, Museum Köln			
5264	27.12.2021	Köln Erding fahren			
5265	28.12.2021	Roseline Sex und Anal Sex	seitliche Übungen, Stütz, situps		
5266	29.12.2021	Roseline FFB nach Pasing, muß nach Aschaffenburg, Forstner essen			
5267	30.12.2021	Roseline gekommen, Roseline Sex			
5268	31.12.2021	Roseline Sex, mit Roseline Sylvenstein und Walchensee			
5269	1.01.2022	Roseline Sex			
5270	2.01.2022	Roseline Sex, Roseline Anal Sex	seitliche Übungen, Stütz, situps		
5271	3.01.2022	Roseline Sex, Roseline Finger Anal Sex			
5272	4.01.2020	Roseline Finger Anal Sex, Roseline Sex	seitliche Übungen, Stütz, situps		
5273	5.01.2020	Roseline Sex und Finger Anal Sex, Ducati gestartet			
5274	6.01.2020	Roseline Sex und Finger Anal Sex, Roseline Sex	seitliche Übungen, Stütz, situps		
5275	7.01.2022	Roseline Sex			
5276	8.01.2022	Roseline Sex, Roseline Sex und Finger Anal Sex, Impfen	seitliche Übungen, Stütz, situps		
5277	9.01.2022	Roseline Sex, Roseline Schliersee			
5278	10.01.2022	Roseline Anal Sex, Roseline Bahnhof Hörlkofen gefahren			
5279	11.01.2022		seitliche Übungen, Stütz, situps		
5280	12.01.2022	MV beendet, HaD-Eck wegen Highnecker	Stütz		
5281	13.01.2022		seitliche Übungen, Stütz, situps		
5282	14.01.2022	Roseline Bahnhof Hörlkofen geholt, Roseline Sex			
5283	15.01.2022	Roseline Sex, München Afro Shop, Rouladen gekocht	seitliche Übungen, Stütz, situps		
5284	16.01.2022	Roseline Sex, Moosburg spazieren an der Isar	seitliche Übungen, Stütz, situps		
5285	17.01.2022	Roseline Sex und Finger Anal Sex, Roseline Anal Sex, Autowäsche, Hühnchen kochen			
5286	18.01.2022	Roseline Sex und Finger Anal Sex	seitliche Übungen, Stütz, situps		
5287	19.01.2022	Roselone Anal Sex, Roseline nach Tutzing			
5288	20.01.2022	Roseline Sex	seitliche Übungen, Stütz, situps		
5289	21.01.2022	Roseline Sex, Roseline Sex			
5290	22.01.2022		seitliche Übungen, Stütz, situps		
5291	23.01.2022	Roseline Sex			
5292	24.01.2022	Roseline Sex, Ducati mobile inseriert, Roseline Hörlkofen gefahren			
5293	25.01.2022		Stütz		
5294	26.01.2022		seitliche Übungen, Stütz, situps		
5295	27.01.2022	Roseline Hörlkofen geholt, Roseline Sex, Roseline Sex	seitliche Übungen, Stütz, situps		
5296	28.01.2022	Roseline Sex, Roseline Sex			
5297	29.01.2022	Roseline Sex, Roseline Anal Sex, mit Roseline am Schliersee, Roselien Anal Sex	Stütz, situps		
5298	30.01.2022	Roseline Sex, Roseline Sex, Dorfen gefahren			
5299	31.01.2022	Dr. Bloch Termin			
5300	1.02.2022	Roseline Sex			
5301	2.02.2022	Roseline Sex, Roseline blowjob bis zu Schluß	 Roseline Sex	seitliche Übungen, Stütz, situps	
5302	3.02.2022	Roseline Anal Sex im Keller	Stütz		
5303	4.02.2022	Roseline Sex			
5304	5.02.2022	Mit Roseline München Afro Shop, Milchhäusl	seitliche Übungen, Stütz, situps		
5305	6.02.2022	Roseline Sex, Roseline Porno geschaut, Roseline Sex mit lecken			
5306	7.02.2022	Roseline Sex, Manu Erding getroffen, Roseline Hörlkofen			
5307	8.02.2022		seitliche Übungen, Stütz, situps		
5308	9.02.2022		Stütz, situps		
5309	10.02.2022	Roselien Hörlkofen geholt, Roseline Sex			
5310	11.02.2022	Roseline Sex	seitliche Übungen, Stütz, situps		
5311	12.02.2022	Roseline Sex, Roseline Sex, House of Flames wg Ducati - FatBob			
5312	13.02.2022	Roseline Sex			
5313	14.02.2022	Roseline Sex, Roseline Anal Sex	seitliche Übungen, Stütz, situps		
5314	15.02.2022				
5315	16.02.2022	Roseline Sex	Stütz, situps		
5316	17.02.2022	Nusskuchen gebacken			
5317	18.02.2022	Roseline Anal Sex			
5318	19.02.2022	Roseline Sex, Aquapark, Vilsbiburg	seitliche Übungen, Stütz, situps		
5319	20.02.2022	Roseline Sex			
5321	22.02.2022	Roseline Sex, Roseline Hörlkofen			
5322	23.02.2022		seitliche Übungen, Stütz, situps		
5323	24.02.2022	Roseline Hörlkofen			
5324	25.02.2022	Roseline Sex	seitliche Übungen, Stütz, situps		
5325	26.02.2022	Roseline Sex, Roseline München Afroshop und Riem Arcaden, Roseline Sex			
5326	27.02.2022	Roseline Sex, Roseline Oral Sex			
5327	28.02.2022	Roseline Sex	seitliche Übungen, Stütz, situps		
5328	1.03.2022	Roseline Sex, Kawasaki fahren			
5329	2.03.2022	Roseline Sex	seitliche Übungen, Stütz, situps		
5330	3.03.2022				
5331	4.03.2022	Roseline blowjob bis zum Schluss, Kawasaki fahren	Stütz, situps		
5332	5.03.2022	Indorf spazieren			
5333	6.03.2022	Forstner Fabi Geburstag, Chiemsee - Prien	Stütz, situps		
5334	7.03.2022	Roseline Sex, München fahren			
5335	8.03.2022	Ducati Inspektion Schwabmünchen, Ammersee	seitliche Übungen, Stütz, situps		
5336	9.03.2022	Kawasaki fahren	Stütz, situps		
5337	10.03.2022	AB fahren, Roseline Sex			
5338	11.03.2022	Roseline Sex, Erding fahren			
5339	12.03.2022	Roseline Sex, Kawasaki fahren, Roseline Sex	Stütz, situps		
5340	13.03.2022	Kawasaki Starnberg fahren			
5341	14.03.2022	Roseline Sex	seitliche Übungen, Stütz, situps		
5342	15.03.2022	AB fahren			
5343	16.03.2022	TS Camilla Latina, Kawasaki fahren			
5344	17.03.2022	FXDL fahren	seitliche Übungen, Stütz, situps		
5345	18.03.2022	Köln fahren			
5346	19.03.2022				
5347	20.03.2022	Köln nach Erding fahren			
5348	21.03.2022				
5349	22.03.2022	FXDL fahren			
5350	23.03.2022	FLHTKL fahren			
5351	24.03.2022	FLHTKL fahren und Roseline in Hörlkofen geholt			
5352	25.03.2022	FLHTKL fahren mit Roseline nach Vilsbiburg			
5353	26.03.2022	FLHTKL fahren mit Roseline nach Schliersee			
5354	27.03.2022	FLHTKL fahren, Roseline nach Markt Schwaben, Kawasaki fahren			
5355	28.03.2022	Köln fahren und RAV geholt			
5356	29.03.2022	Roseline Sex	Stütz,situps		
5357	30.03.2022	Roseline Sex, Ducati holen, Roseline Termin Anwalt Tutzing			
5358	31.03.2022				
5359	1.04.2022	Roseline Sex	seitliche Übungen, Stütz, situps		
5360	2.04.2022	Roseline Sex, Roseline Sex			
5361	3.04.2022	Roseline Sex	Stütz, situps		
5362	4.04.2022				
5363	5.04.2022	nach Hannover gefahren	seitliche Übungen, Stütz, situps		
5364	6.04.2022				
5365	7.04.2022	von Hannover nach Hause gefahren, Roseline in Würzburg zugestiegen			
5366	8.04.2022	Roseline Sex,Finger Anal	Stütz,situps		
5367	9.04.2022	Roseline Sex,Finger Anal			
5368	10.04.2022	Roseline Sex	seitliche Übungen, Stütz, situps		
5369	11.04.2022				
5370	12.04.2022	V-ROD und FLSTI in VIB geholt	seitliche Übungen, Stütz, situps		
5371	13.04.2022	Roseline Sex, VRSCDX fahren			
5372	14.04.2022	Roseline Sex, VRSCDX mit Roseline fahren	seitliche Übungen, Stütz, situps		
5373	15.04.2022	Roseline Sex	seitliche Übungen, Stütz, situps		
5374	16.04.2022		seitliche Übungen, Stütz, situps		
5375	17.04.2022	Roseline in Kirche in Taufkirchen, Roseline Blowjob bis zum Schluss, Dostojeski			
5376	18.04.2022	FLHTKL fahren, Biergarten Grünbach	seitliche Übungen, Stütz, situps		
5377	19.04.2022	Roseline Anal Sex, RAV Inspektion			
5378	20.04.2022	FLTSFI fahren	seitliche Übungen, Stütz, situps		
5379	21.04.2022	Roseline Sex, Zulassungstelle eintragen, Roseline Sex und Anal Sex,FLHTKL fahren, Roseline Sex			
5380	22.04.2022	Roseline Sex, Finger Anal, VRSCDX fahren			
5381	23.04.2022	Roseline Sex	seitliche Übungen, Stütz, situps		
5382	24.04.2022	Roseline Sex, Vineyard Kirche			
5383	25.04.2022	Roseline Sex	seitliche Übungen, Stütz, situps		
5384	26.04.2022	Roseline Sex, Finger Anal			
5385	27.04.2022		seitliche Übungen, Stütz, situps		
5386	28.04.2022	FLTSFI fahren, BMC Marcel,Peter, Andy essen in München			
5387	29.04.2022				
5388	30.04.2022		seitliche Übungen, Stütz, situps		
5389	1.05.2022		seitliche Übungen, Stütz, situps		
5390	2.05.2022	FLTSFI fahren	seitliche Übungen, Stütz, situps		
5391	3.05.2022	Hannover fahren			
5392	4.05.2022				
5393	5.05.2022	Erding fahren			
5394	6.05.2022	Roseline Sex, Finger Anal			
5395	7.05.2022	Roseline Anal Sex	Stütz, seitliche Übungen, situps		
5396	9.05.2022	FLHTKL fahren	Stütz, seitliche Übungen, situps	 Schildkröte	Chaser – Die Jagd beginnt (Ein Jack-Daniels-Thriller 13)
5397	11.05.2022	Ducati fahren, FXDL fahren, Roseline AB	Stütz, seitliche Übungen, situps	 Schildkröte	
5398	13.05.2022	Roseline Sex, Finger Anal	Stütz, seitliche Übungen, situps	 Schildkröte	Chaser – Die Jagd beginnt (Ein Jack-Daniels-Thriller 13)
5399	15.05.2022	FLHTKL fahren, Innsbruck	Stütz, seitliche Übungen, situps	 Schildkröte	Chaser – Die Jagd beginnt (Ein Jack-Daniels-Thriller 13)
5400	16.05.2022				
5401	17.05.2022	Roseline Sex, VRSCDX fahren	Stütz, seitliche Übungen, situps	 Schildkröte	
5402	19.05.2022	FLSTFI fahren	Stütz, seitliche Übungen, situps	 Schildkröte	
5403	21.05.2022	Roseline Sex, S-Bahn München, VRSCDX fahren	Stütz, seitliche Übungen, situps	 Schildkröte	
5404	22.05.2022	FLHTKL fahren	situps		
5405	23.05.2022	Roseline Sex	Stütz, seitliche Übungen, Schildkröte, min. Situps		
5406	27.05.2022	Roseline Sex, Finger Anal, Wurzer Müll	Stütz		
5407	28.05.2022	Roseline blowjob bis zum Schluss, FLHTKL fahren STA	Stütz, seitliche Übungen, Schildkröte, situps		
5408	29.05.2022	Roseline Sex, Leonie Kommunion			
5409	30.05.2022	Kawasaki fahren	Stütz, seitliche Übungen, Schildkröte, situps		
5410	1.06.2022	Forstner Spagetti essen			
5411	4.06.2022	FLHTKL fahren	Stütz, seitliche Übungen, Schildkröte, situps		
5412	7.06.2022				
5413	8.06.2022	Roseline Sex, Finger Anal, FLHTKL Arber	Stütz, seitliche Übungen, Schildkröte, situps		
5414	9.06.2022	Roseline Sex, Finger Anal, FLHTKL putzen			
5415	10.06.2022	VRSCDX fahren	situps		
5416	11.06.2022	FLHTKL Schlierss, Maxlrainer	Stütz, seitliche Übungen, Schildkröte		
5417	12.06.2022	Roseline Sex, Finger Anal, FLHTKL fahren Bad Ischl	situps		
5418	13.06.2022	FLSTFI fahren	Stütz		
5419	14.06.2022	FLSTFI fahren	situps		
5420	15.06.2022		Stütz		
5421	16.06.2022	Roseline Sex, VRSCDX fahren	Stütz, seitliche Übungen, Schildkröte		
5422	17.06.2022	Zug München fahren			
5423	18.06.2022	FLHTKL fahren Memmingen, Füssen	Stütz, seitliche Übungen, Schildkröte		
5424	19.06.2022	Roseline Sex, Finger Anal		Scharfschuss: Thriller (Die Harry-Bosch-Serie 17)	
5425	20.06.2022		Stütz, seitliche Übungen, Schildkröte	Scharfschuss: Thriller (Die Harry-Bosch-Serie 17)	
5426	24.06.2022	Roseline Sex, FLSTFI fahren	Stütz, seitliche Übungen, Schildkröte - Nur einen Durchgang	Scharfschuss: Thriller (Die Harry-Bosch-Serie 17)	
5427	25.06.2022	FLHTKL fahren Kufstein	Stütz, seitliche Übungen, Schildkröte, situps	Scharfschuss: Thriller (Die Harry-Bosch-Serie 17)	
5428	26.06.2022	Roseline Sex, FLHTKL fahren STA, Schweiger Biergarten		Scharfschuss: Thriller (Die Harry-Bosch-Serie 17)	
5429	27.06.2022	VRSCDX fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Scharfschuss: Thriller (Die Harry-Bosch-Serie 17)	
5430	28.06.2022	Kawasaki fahren		Scharfschuss: Thriller (Die Harry-Bosch-Serie 17)	
5431	30.06.2022	Kawasaki fahren		Funkenmord	
5432	1.07.2022	Roseline Sex		Funkenmord	
5433	2.07.2022	FLHTKL fahren, Chiemsee	Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Funkenmord	
5434	3.07.2022	VRSCDX fahren, Schweiger Biergarten	situps	Funkenmord	
5435	4.07.2022	Roseline Sex, Interview NTT DATA		Funkenmord	
5436	5.07.2022		Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Funkenmord	
5437	6.07.2022	FXDL fahren		Funkenmord	
5438	7.07.2022		Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Funkenmord	
5439	8.07.2022	FLHTKL fahren Mühldorf		Funkenmord	
5440	9.07.2022	Kawasaki fahren Wasserburg	Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Funkenmord	
5441	10.07.2022	VRSCDX fahren, Waldkraiburg		Funkenmord, Ausgerechnet Sylt	
5442	11.07.2022	Roseline Sex		Ausgerechnet Sylt	
5443	12.07.2022	FLSTFI fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Ausgerechnet Sylt	
5444	13.07.2022	Roseline Sex, Ducati fahren, FLSTFI fahren		Ausgerechnet Sylt	
5445	14.07.2022	FLSTFI fahren	MINIMUM: Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Eiskaltes Sylt	
5446	15.07.2022	Roseline Sex, Auto Waschstraße, FLSTFI fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Eiskaltes Sylt	
5447	16.07.2022	FLHTKL fahren, Passau. Großer Arber		Eiskaltes Sylt	
5448	17.07.2022		MINIMUM: Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Eiskaltes Sylt	
5449	18.07.2022	MV SMS, VRSCDX fahren		Eiskaltes Sylt, Vertraute Gefahr	
5450	19.07.2022	VRSCDX fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps	Vertraute Gefahr	
5451	20.07.2022	FLSTFI fahren		Vertraute Gefahr	
5452	21.07.2022	FLSTFI fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps, situps PLUS	Vertraute Gefahr	
5453	22.07.2022	VRSCDX fahren, Bräustüberl Markt Schwaben		Vertraute Gefahr	
5454	23.07.2022	FLHTKL Gambach fahren		Vertraute Gefahr	
5455	24.07.2022	FLHTKL fahren, mit Birgit, Hoherodskopf			
5456	25.07.2022	FLHTKL fahren, Hoherodskopf		Vertraute Gefahr	
5457	26.07.2022	FLHTKL fahren, Wetzlar, Gießen, Lich		Vertraute Gefahr	
5458	27.07.2022	FLHTKL Erding fahren			
5459	28.07.2022	VRSCDX fahren	MINIMUM: Stütz, seitliche Übungen, Schildkröte	Ehrensache	
5460	29.07.2022	Erdiing-Berlin fahren		Ehrensache	
5461	30.07.2022	Roseline Sex, Berlin Bus Tour		Ehrensache	
5462	31.07.2022	Berlin Bootstour		Ehrensache	
5463	1.08.2022	Berlin - Erding fahren		Ehrensache	
5464	2.08.2022	Roseline Sex, FLHTKL putzen		Die Verlorene	
5465	3.08.2022		Stütz, seitliche Übungen, Schildkröte, Rücken situps	Die Verlorene	
5466	4.08.2022	FLHTKL fahren, Bärenwirt Fusch		Die Verlorene	
5467	5.08.2022	Roseline Sex, FLHTKL fahren Grossglockner Hochalpenstraße		Die Tote im Käfig	
5468	6.08.2022	Stoiber Ranoldsberg	Stütz	Die Tote im Käfig	
5469	7.08.2022	FLSTFI fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps	Die Tote im Käfig	
5470	8.08.2022			Die Tote im Käfig	
5471	9.08.2022	FLSTFI fahren		Die Tote im Käfig	
5472	10.08.2022	HD Fat Boy gekauft und Ducati verkauft, FLSTFI fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps	Die Tote im Käfig	
5473	11.08.2022				
5474	12.08.2022	Ducati in Augsburg abgegeben			
5475	13.08.2022	Roseline Sex, VRSCDX fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps		
5476	14.08.2022			Der Cleaner	
5477	15.08.2022	VRSCDX fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps	Der Cleaner	
5478	16.08.2022	VRSCDX fahren		Der Cleaner	
5479	17.08.2022	FLSTFI fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps	Der Cleaner	
5480	18.08.2022	Fat Boy Zulassung			
5481	19.08.2022			Der Cleaner, Das Grab meiner Schwester	
5482	20.08.2022	Roseline Sex, Fat Boy Augsburg geholt			
5483	21.08.2022	Fat Boy 114 fahren		Das Grab meiner Schwester	
5484	22.08.2022	Fat Boy 114 fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps	Das Grab meiner Schwester	
5485	23.08.2022	Fat Boy 114 fahren		Das Grab meiner Schwester	
5486	24.08.2022	Roseline Sex, Fat Boy fahren		Das Grab meiner Schwester	
5487	25.08.2022	Fat Boy 114 fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps	Das Grab meiner Schwester	
5488	26.08.2022			Das Grab meiner Schwester	
5489	27.08.2022	München fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps	Das Grab meiner Schwester	
5490	28.08.2022	Roseline Sex,mit Roslelne im Kino		Das Grab meiner Schwester	
5491	29.08.2022	Griechisch Essen, Fat Boy 114 fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps, minimum	Das Grab meiner Schwester	
5492	30.08.2022	mit Roseline nach Hannover gefahren		Das Grab meiner Schwester	
5493	31.08.2022	TS Bens			
5494	1.09.2022				
5495	2.09.2022	Fat Boy 114 fahren		Der Heilige Tod	
5496	3.09.2022	VRSCDX fahren	Stütz, seitliche Übungen, Schildkröte, Rücken situps, minimum	Der Heilige Tod	
5497	4.09.2022	Fat Boy 114 fahren Chiemsee, Kino Bullet Train		Der Heilige Tod	
5498	5.09.2022	Roseline Sex, FLHTKL fahren Mühldorf	Stütz, seitliche Übungen, Rücken situps	Der Heilige Tod	
5499	6.09.2022	Erding-Hannover fahren			
5500	7.09.2022	Hannover-Erding fahren			
5501	8.09.2022			Der Heilige Tod	
5502	9.09.2022	Roseline Sex		Der Heilige Tod	
5503	10.09.2022		Stütz, seitliche Übungen, Rücken situps	Der Fahrer	
5504	11.09.2022	Spagetthi Carbonara		Der Fahrer	
5505	12.09.2022	Fat Boy 114 fahren Schliersee	Stütz, seitliche Übungen, Rücken situps	Der Fahrer	
5506	13.09.2022	Fat Boy 114 fahren, FLSTFI fahren Fabi Einschulung		Der Fahrer	
5507	14.09.2022	Roseline Sex		Der Fahrer.Geister	
5508	15.09.2022		Stütz, seitliche Übungen, Rücken situps, situps	Geister	
5509	16.09.2022			Geister, Das Schwert Gottes	
5510	17.09.2022		Stütz, seitliche Übungen, Rücken situps, situps	Das Schwert Gottes	
5511	18.09.2022	Kino Film Ticket ins Paradies		Der Hurricane	
5512	19.09.2022	Roseline Sex	Stütz, seitliche Übungen, Rücken situps, situps	Der Hurricane	
5513	20.09.2022			Das Duell	
5514	21.09.2022	FLSTFI fahren, VRSCDX fahren			
5515	22.09.2022				
5516	23.09.2022	Roseline Sex		Das Duell	
5517	24.09.2022	Hochzeit Sebastian	situps		
5518	25.09.2022	Roseline Sex			
5519	26.09.2022	Frankfurt fahren			
5520	27.09.2022	Gambach - Erding fahren			
5521	28.09.2022	Bettenlager		Das Duell	
5522	29.09.2022			Das Duell	
5523	30.09.2022	Roseline Sex, Fat Boy 114 fahren	Stütz, seitliche Übungen, Rücken situps, situps - minimum	Der neunte Schritt	
5524	1.10.2022			Der neunte Schritt	
5525	2.10.2022	Roseline Sex Finger Anal	Stütz, seitliche Übungen, Rücken situps	Der neunte Schritt	
5526	3.10.2022	FLHTKL fahren		Der neunte Schritt	
5527	4.10.2022	Sandra München abgeholt			
5528	5.10.2022	FLSTFI fahren			
5529	6.10.2022	AB fahren			
5530	7.10.2022	Wendelstein mit Zahnradbahn			
5531	8.10.2022	KZ Gedenkstätte, Sandra München Bahnhof gefahren			
5532	9.10.2022	Roseline Sex, Fat Boy 114 fahren		Der Dschungel	
5533	10.10.2022	Hannover fahren		Der Dschungel	
5534	11.10.2022			Der Dschungel	
5535	12.10.2022			Der Dschungel	
5536	13.10.2022	Erding fahren		Der Dschungel	
5537	14.10.2022	Roseline Sex, FLHTKL fahren 		Der Dschungel	
5538	15.10.2022		Stütz, seitliche Übungen, Rücken situps	Der Dschungel	
5539	16.10.2022	Roseline Sex, FLHTKL Schliersee fahren		Der Dschungel	
5540	17.10.2022	FLHTKL fahren, Leonie Geburtstag	Stütz, seitliche Übungen, Rücken situps		
5541	18.10.2022	VRSCDX fahren			
5542	19.10.2022	MB Reifenwechsel, Roseline am Ostbahnhof geholt		Blackout	
5543	20.10.2022	FLHTKL fahren Augsburg	Stütz, seitliche Übungen		
5544	21.10.2022				
5545	22.10.2022	Roseline Sex, FLHTKL putzen	Stütz, seitliche Übungen, Rücken situps	Blackout	
5546	23.10.2022	Fat Boy114 fahren		Blackout	
5547	24.10.2022		Stütz, seitliche Übungen, Rücken situps	Das Revier	
5548	25.10.2022	ED - FFM fahren,  ctmshare, TS Paula im Hotel			
5549	26.10.2022	ctmshare, FFM - ED fahren			
5550	27.10.2022	FLSTFI fahren		Das Revier	
5551	28.10.2022	Roseline Sex	Stütz, seitliche Übungen, Rücken situps	Das Revier	
5552	29.10.2022	VRSCDX fahren	Stütz, seitliche Übungen,	Das Revier	
5553	30.10.2022	FLHTKL fahren Landshut		Das Revier	
5554	31.10.2022	Roseline Sex, FLHTKL fahren Passau	Stütz, seitliche Übungen,situps	Das Revier	
5555	1.11.2022			Das Revier	
5556	2.11.2022			Das Revier	
5557	3.11.2022			Das Revier	
5558	4.11.2022	Gespräch REWE	Stütz, seitliche Übungen,situps	Der Erlöser	
5559	5.11.2022	Roseline Sex		Der Erlöser	
5560	6.11.2022	Erding - Hannover fahren	Stütz, seitliche Übungen,situps	Der Erlöser	
5561	7.11.2022	TS  Carida			
5562	8.11.2022	Go-Kart fahren			
5563	9.11.2022			Der Erlöser	
5564	10.11.2022	Hannover nach Erding gefahren		Der Erlöser	
5565	11.11.2022	Roseline Sex mit Vibrator und Anal Vibrator bei mir		Sleepers	
5566	12.11.2022			Sleepers	
5567	13.11.2022	Wäsche, spazieren, Pizza backen		Sleepers	
5568	14.11.2022			Sleepers	
5569	15.11.2022	Kanban Schulung		Zwölf Tage	
5570	16.11.2022	US Nachricht das sie in München ist, Kanban Schulung, Roseline Sex		Zwölf Tage	
5571	17.11.2022	Kanban Schulung. Film Rocky		Zwölf Tage	
5572	18.11.2022	Gespräch REWE		Zwölf Tage	
5573	19.11.2022	Roseline Sex, Kino Black Panther: Wakanda Forever	Stütz, Katzenbuckel, situps	Zwölf Tage	
5574	20.11.2022			Der Verrat	
5575	21.11.2022				
5576	22.11.2022	Erding - Hannover fahren			
5577	23.11.2022	TS Brenda		Der Verrat	
5578	24.11.2022	Hannover - Erding fahren, IB telefoniert		Der Verrat	
5579	25.11.2022	Roseline Sex		Der Verrat	
5580	26.11.2022	Roseline Sex, Erding Weihnachtsmarkt Erding		Der Verrat	
5581	27.11.2022		Stütz, Katzenbuckel, seitliche Übungen, situps	Der Verrat	
5582	28.11.2022	Roseline Sex		Die Hexe	
5583	29.11.2022	FLFBS und FLHTKL HadEck bringen		Die Hexe	
5584	30.11.2022	Roseline Sex, Gespräch REWE	Stütz, Katzenbuckel, seitliche Übungen, situps	Die Hexe	
5585	1.12.2022	REWE Job Zusage		Die Hexe	
5586	2.12.2022			Die Hexe	
5587	3.12.2022	Roseline Sex, Weihnachtsmarkt Landshut	Stütz, Katzenbuckel, seitliche Übungen, situps	Die Hexe	
5588	4.12.2022	Weihnachtsmarkt Landshut		Kalla City	
5589	5.12.2022			Kalla City	
5590	6.12.2022	TS Nonny		Kalla City	
5591	7.12.2022		Stütz, Katzenbuckel		
5592	8.12.2022			Kalla City	
5593	9.12.2022		Stütz, Katzenbuckel, situps		
5594	10.12.2022	Roseline Sex		Kalla City	
5595	11.12.2022		Stütz, Katzenbuckel, seitliche Übungen, situps		
5596	12.12.2022	ivv Kündigung, Dorfen Brucker Kaffee		Kalla City	
5597	13.12.2022		Stütz, Katzenbuckel, seitliche Übungen, situps	Kalla City	
5598	14.12.2022	ivv Kündigung als einschreiben, Python programmieren		Kalla City	
5599	15.12.2022	FLHTKL holen		Kalla City	
5600	16.12.2022	Python programmieren		Kalla City	
5601	17.12.2022	Roseline Sex, Rosenheim Roseline Jacke kaufen		Kalla City	
5602	18.12.2022	Roseline Sex	Stütz, Katzenbuckel, seitliche Übungen, situps		
5603	19.12.2022	Python programmieren	Stütz, Katzenbuckel	Ronin	
5604	20.12.2022	Python programmieren, Papiere Standesamt, Hannover gefahren			
5605	21.12.2022	Python programmieren			
5606	22.12.2022	Python programmieren, Hannover - Erding fahren, Sandra nach Erding gekommen			
5607	23.12.2022	Python und postgres			
5608	24.12.2022	ED - Gambach fahren			
5609	25.12.2022	 			
5610	26.12.2022	Gambach - Köln fahren			
5611	27.12.2022	Python und postgres			
5612	28.12.2022	einkaufen, Roseline Sex			
5613	29.12.2022	Python und Postgres			
5614	30.12.2022	Python und Postgres, Visual Studio Code in Git			
5615	31.12.2022	Python und Postgres, Visual Studio Code in Git			
5616	01.01.2023	Köln nach Erding fahren, Roseline WoZi Sex			
5617	03.01.2023	Python, VSCode auf Macbook Air			
5618	04.01.2023	Termin Standesamt			
5619	05.01.2023	Python csv file lesen und DB schreiben, Parallels installiert auf Mac mit Windows			
5620	06.01.2023	MacBook Parallels Windows Control-M installieren			
5621	07.01.2023	Kawasaki Interessent da, Mac/Win VCStudio mit Git, Elena tefoniert, Mühldorf Kaffee, TopGun			
5622	10.01.2023	Linux Mint, Roseline Sex			
5623	11.01.2023	Had-Eck Dyno gebracht			
5624	13.01.2023	Burger King Dorfen			
5625	15.01.2023		Stütz, Katzenbuckel, seitliche Übungen, situps		
5626	16.01.2023				
5627	17.01.2023	Kawasaki abmelden			
5628	18.01.2023	Python Buch			
5629	19.01.2023	Roseline Sex	Stütz, Katzenbuckel, seitliche Übungen, situps		
5630	20.01.2023	Python Übungen			
5631	21.01.2023	Roseline Sex	Stütz, Katzenbuckel, seitliche Übungen, situps		
5632	22.01.2023	Kawasaki verkauft und abgeholt, Forstner essen in Taufkirchen			
5633	23.01.2023		Stütz, Katzenbuckel, seitliche Übungen, situps		
5634	24.01.2023	PyCharm installation			
5635	25.01.2023	MFT und SAP migration	Stütz, Katzenbuckel, seitliche Übungen, situps, Kettlebell start		
5636	26.01.2023	MFT und SAP migration	Kettlebell Minimal Übungen		
5637	27.01.2023	MFT und SAP migration, LibreOffice Dell installieren			
5638	28.01.2023	Roseline Sex, LibreOffice auf Macbook installiert, WS gefahren, keine Pfeife geraucht	Stütz, Katzenbuckel, seitliche Übungen, Kettlebell Video alle 3mal		
5639	29.01.2023	Keine Pfeife geraucht	Kettlebell Übungen		
5640	20.01.2023	SAP Migration, keine Pfeife geraucht			
5641	31.01.2023	SAP und MFT migration, Steuerrückzahlung 2021, Keine Pfeife geraucht, Zigarillo gepafft	Kettlebell Übungen		
5642	02.02.2023	MFT,SAP migration, Dörr Untersuchungsergebnis, Hannover-Erding fahren			
5643	03.02.2023	MFT, SAP migration, Dietrich Control-M Schulung			
5644	04.02.2023	Roseline Sex, Waldkraiburg C&A, Mühldorf, Lethal Weapon 1	Stütz, Kettlebell		
5645	05.02.2023	Lethal Weapon 2			
5646	06.02.2023	MFT, SAP migration, Dietrich Control-M Schulung,Lethal Weapon 3	Stütz, seitliche ÜbungenKettlebell		
5647	07.02.2023	MFT, SAP migration ,Lethal Weapon 4			
5648	08.02.2023	MFT, SAP migration, KFC Parsdorf			
5649	09.02.2023	MFT, SAP migration	Stütz, Katzenbuckel, seitliche Übungen, Kettlebell		
5650	10.02.2023	MFT, SAP migration, Ulli mail als Sandra wg 3er			
5651	11.02.2023	Roseline Sex, München fahren			
5652	12.02.2023	Erkältung			
5653	13.02.2023	Standesamt 150,00 Euro , MFT, SAP migration			
5654	14.02.2023	MFT, SAP Migration, ED - AB - Gambach fahren			
5655	15.02.2023	Control-M Tag in FFM, FFM-AB-ED fahren			
5656	16.02.2023	MFT, SAP Migration, Sichtschutz Balkon entfernt			
5657	17.02.2023	Roseline sex, MFT, SAP Migration			
5658	18.02.2023	Ebersberg Kaffee, Chiemsee	Kettlebell		
5659	19.02.2023		Kettlebell		
5660	20.02.2023	MFT, SAP Migration			
5661	21.02.2023	MFT, SAP Migration			
5662	22.02.2023	Letzter Arbeitstag ivv			
5663	23.02.2023	Roseline Sex, FLSTFI fahren, Dorfen Kaffee eat & meet	Stütz, Kettlebell		
5664	24.02.2023	FLSTFI fahren, Dateien auf MacBook	Kettlebell, situps mit Gewicht		
5665	25.02.2023	Roseline Sex, München fahren, Python depot			
5666	01.02.2023	MFT,SAP migration, Dietrich Control-M Schulung, TS Angie Deluxen	 	 	TS Geldverschwenung, kein Ständer, Bilder veraltet
5667	26.02.2023		einmal Stütz, Kettlebell, situps mit Gewicht		
5668	27.02.2023		Kettlebell		
5669	28.02.2023	ED - AB - Gambach fahren			
5670	03.03.2023	BG heisser Chat, Gambach-AB-ED fahren, WÜ Landstrasse	 		
5671	02.03.2023	John Doe Flörsheim, Grosser Feldberg gefahren, BG heisser Chat	 		
5672	04.03.2023	Roseline Sex, Dostojewski	Kettlebell		
5673	05.03.2023	Fabi Geburtstag, Forstner Kaffee			Tanjas Mutter heiß, Denke an Sandra
5674	01.03.2023	FFM mit Zug fahren	Kettlebell		Tanjas Mutter ist heiß, denke an Sandra,zu spüren
5675	06.03.2023	Anhänger zur HU	Kettlebell, situps mit Kettlebell		Denke an Sandra zu spüren, berühren
5676	07.03.2023	Roseline Sex, Geld eingezahlt MB, Schliersee Milchhäusl	Kettlebell+		Denke an Sandra, sie berühren, sie spüren
5677	08.03.2023	LA gefahren, Döner essen, Tchibo Tasse & Filter			Immer wieder an Sandra denken
5678	09.03.2023	Roseline Sex, spazieren Indorf	Stütz, Bank		Sandra im Kopf
5679	10.03.2023	Mühldorf Kaffee trinken			wie es wäre Sandra zu spüren
5680	11.03.2023		Bank, Stütz, Kettlebell-		Denke daran Sandra spüren und berühren, Sex mit Birgit
5681	12.03.2023	Freising Stoffmarkt			Denke daran Sandra spüren und berühren, Sex mit Birgit
5682	14.03.2023	Mammut Schuhe bestellt, Roseline Zahnarzt			Denke daran Sandra spüren und berühren, denke an Sex mit Birgit
5683	15.03.2023	Roseline Dr. Bloch, München fahren, Anhänger abgeholt			denke an Sex mit Sandra, an Sex mit Birgit
5684	08.01.2023	MacBook und Dell VirtualBox mit Linux Mint, Kawasaki verkauft, Forstners essen			
5685	13.03.2023	Roseline Sex, FLHTKL Vilsbiburg Mareis	Bank, Stütz, seitliche Übungen, Kettlebell		Denke an Sandra spüren & berühren, Sex mit Birgit
5686	14.05.2023	Vagrant auf AlmaLinux, Drohne am Krontahler Weiher, Ansible Video und auf MacBook			
5687	16.03.2023	Roseline Sex, FLHTKL fahren	Bank, Stütz, seitliche Übungen, Kettlebell		Denke an Sex mit Sandra, Sex mit Birgit
5688	17.03.2023	FLSTFI fahren, VRSCDX fahren	Bank, Stütz, seitliche Übungen		Denke an Sex mit Sandra, Sex mit Birgit
5689	18.03.2023	TÜV Termin ausgemacht, FLHTKL fahren Traunreut			Denke an Sex mit Sandra, Sex mit Birgit
5690	19.03.2023	Roseline Sex, Kircheim Eis essen, IHlE Erding	Stütz, situp		Denke an Sex mit Sandra, Sex mit Birgit
5691	20.03.2023	ED - Darmstadt fahren			
5692	21.03.2023	Darmstadt - AB fahren, Louis einkaufen, AB - ED fahren			Denke immer wieder an Sex mit Sandra, Sex mit Birgit
5693	22.03.2023	Roseline Sex, FLHTKL und FLSTFI HU			Denke immer wieder an Sex mit Sandra, Sex mit Birgit
5694	23.03.2023	FLHTKL fahren Maxlrain	Bank, Stütz, seitliche Übungen, situps		denke an CB; Sandra spüren; Birgit spüren
5695	24.03.2023	Whatsapp Sandra	Bank, Stütz, seitliche Übungen		
5696	25.03.2023	Roseline Sex, ED Foot Markt			
5697	15.05.2023	Udemy Administration of Red Hat Linux Test	Bank, Stütz 3*50, seitliche Übungen 3*40		
5698	16.05.2023	Udemy BASH Programming, Version Control with Git			
5699	17.05.2023	Udemy BASH Programming, Dostojewski ED	Bank, Stütz, seitliche Übungen, 1*50, situps		
5700	26.03.2023	MotoGP Portimao	Bank		Denke immer wieder an Sex mit Sandra, Sex mit Birgit, CB, MV
5701	27.03.2023	Kino Film der vermessene Mensch	Bank, Stütz, situps		
5702	28.03.2023	FLSTFI, VRSCDV Had-Eck gebracht, Mareis Kaffee, Kuchen Vilsbiburg			
5703	29.03.2023	Roseline Sex, Pfannkuchen	Bank, Stütz, Sodbrennen		Denke an Sex mit Sandra
5704	30.03.2023	Zahnarzt, Fossil Uhren bestellt	Bank, Stütz, seitliche Übungen		
5705	31.03.2023	ED nach AB und Köln fahren			
5706	01.04.2023		Bank, Stütz, seitliche Übungen		
5707	02.04.2023		Stütz		
5708	03.04.2023	REWE Köln Erster Arbeitstag			
5709	04.04.2023	REWE Köln			
5710	05.04.2023	REWE Köln			
5711	06.04.2023	REWE Köln			
5712	07.04.2023		Stütz 150St		
5713	08.04.2023	Köln – ED fahren, Fossil Uhren Paket			
5714	09.04.2023	Roseline Sex			
5715	10.04.2023	FLHTKL fahren Wasserburg	Bank, Stütz, seitliche Übungen		
5716	11.04.2023	Fossil Uhr getragen, Roseline Fossil Uhr bestellt, RAV Pötzinger	Bank, Stütz		
5717	12.04.2023	RAV Pötzinger abgeholt			
5718	13.04.2023	Hilux Angebot	Stütz		
5719	14.04.2023	Dubliner essen			
5720	15.04.2023	Roseline Sex	Bank, Stütz, seitliche Übungen		
5721	16.04.2023	Kino John Wick 5	Bank, Stütz, seitliche Übungen 3*50, situps		
5722	17.04.2023	FLHTKL fahren	Bank, Stütz, seitliche Übungen 3*50, situps		
5723	19.04.2023	Film Apocalypse Now, Solar Powerbank			
5724	18.04.2023	Roseline AB, Sandra telefoniert, Film Apocalypse Now			
5725	20.04.2023	RestAPI arbeiten	Bank, Stütz, seitliche Übungen 3*50		
5726	21.04.2023	RestAPI arbeiten			
5727	22.04.2023	Roseline Sex, FLHTKL Straubing fahren	Bank, Stütz, seitliche Übungen 3*50		Denke an Sex mit Sandra
5728	23.04.2023		Bank, Stütz 3*50,  seitliche Übungen 2*50		
5729	24.04.2023	Udemy Kurs Linux Bootcamp			
5730	25.04.2023	Satzinger & Alice telefoniert, Udemy Kurs Linux Bootcamp	Bank 150		
5731	26.04.2023	Udemy Kurs Linux Bootcamp, Had-Eck			Sandra Chat
5732	27.04.2023	Udemy Linux Bootcamp, Administration of Red Hat Linux 8,VRSCDX fahren	Bank, Stütz 3*50, situps		
5733	28.04.2023	Udemy Linux Bootcamp, Administration of Red Hat Linux 8, Roseline Babbel App und Udemy A1 Kurs			
5734	29.04.2023	Roseline Sex, Udemy Administration of Red Hat Linux 8,FLHTKL Frontenhausen, Gangkofen,Mühldorf	Bank, Stütz 2*50		Denke an Sex mit Sandra
5735	30.04.2023	VRSCDX fahren mit GoPro	Bank, Stütz 1*50		
5736	01.05.2023	Sauerteig Brot backen	Bank, Stütz 3+50		
5737	02.05.2023	Udemy Administration of Red Hat Linux, Roseline AB, Linux Bootcamp			
5738	03.05.2023	Linux Bootcamp, BMC workshop, VRSCDX fahren			
5739	04.05.2023	BMC workshop, FLSTFI fahren und GoPro	Bank, Stütz 3*50		
5740	05.05.2023	FLSTFI fahren und GoPro, iPhone Rewe, Udemy Administration of Red Hat Linux, Linux Bootcamp	Bank 150		
5741	06.05.2023	VRSCDX fahren mit GoPro			
5742	07.05.2023	VRSCDX fahren mit GoPro - Rosenheim	Bank, Stütz 3*50		
5743	08.05.2023	Drohne DJI Air 2s geliefert, Probeflug OK, macht Spass			
5744	09.05.2023	VGH wg Arbeitszeugnis,Linux Bootcamp, Drohne DJI Air 2s draussen geflogen, Marc telefoniert			
5745	10.05.2023	McAfee auf Mac, Video schneiden mit GoPro Player, Linux Bootcamp	Bank, Stütz 3*50, situps		
5746	11.05.2023	Udemy Administration of Red Hat Linux, Linux Bootcamp	Bank,Stütz 1*50		
5747	12.05.2023	FLSTFI fahren, amadeus treffen			
5748	13.05.2023	Ampfing Baggerraceparty, Mühldorf, Udemy Administration of Red Hat Linux			
5749	16.05.2023	Udemy BASH Programming, Version Control with Git			
5750	17.05.2023	Udemy BASH Programming, Dostojewski ED	Bank, Stütz, seitliche Übungen, 1*50, situps		
5751	14.05.2023	Vagrant auf AlmaLinux, Drohne am Krontahler Weiher, Ansible Video und auf MacBook			
5752	15.05.2023	Udemy Administration of Red Hat Linux Test	Bank, Stütz 3*50, seitliche Übungen 3*40		
5753	18.05.2023	Roseline Sex, FLHKL fahren Landshut, vagrant VM gestartet	Bank 150		
5754	19.05.2023	VRSCDX fahren	Stütz 150, situps 100		
5755	20.05.2023	FLHTKL fahren mit GoPro	Stütz 150		
5756	21.05.2023	FLHTKL fahren mit Pro Thenner Weiher	Stütz 150		
5757	22.05.2023	Balkon Sichtschutz, Udemy: Version Control with Git, spazieren Indorf			
5758	23.05.2023	telefoniert mit Ben Stokes, spazieren Indorf			
5759	24.05.2023	Udemy Version Control with Git, GCP Fundamentals	Bank, Stütz, spazieren Indorf		
5760	25.05.2023	Udemy GCP Fundamentals, Gespräch mit Rochella von BMC	spazieren Indorf		
5761	26.05.2023	Fielmann wg Brille	spazieren Indorf		
5762	27.05.2023	FLHTKL Burghausen, Mattigkofen, Altaussee, Grundlsee, Hotel Seeresidenz in Altaussee, Roseline Sex			Denke an Sex mit Sandra
5763	28.05.2023	FLTHKL Loser Mautstrasse, Gosausee am Parkplatz umgefallen, kurvenreiche  Hochkönigstrasse			Denke an Sex mit Sandra
5764	29.05.2023	FLHTKL, VRSCDX putzen	spazieren Indorf		Denke an Sex mit Sandra
5765	30.05.2023	Ihle essen			
5766	31.05.2023	Udemy GCP Fundamentals, FLSTFI fahren	spazieren Indorf		Denke an Sex mit Sandra
5767	01.06.2023	Control-M & EMA Server AlmaLinux, WEB geht , Udemy  Web Development Bootcamp	Bank, Stütz, seitliche Übungen, spazieren Indorf		Denke an Sex mit Sandra
5768	02.06.2023	AlmaLinux Control-M funktioniert mit API, Udemy Web Development Bootcamp, Roseline Sex	spazieren Indorf		Denke an Sex mit Sandra
5769	03.06.2023	ED-Köln fahren			
5770	04.06.2023	Drohne geflogen, Rhein Beach			
5771	05.06.2023	Onboarding Porz, Tim Sex			
5772	07.06.2023	Köln Porz, Udemy Web Development Bootcamp			
5773	08.06.2023	Köln – ED, KFC			
5774	09.06.2023	FLSTFI fahren, Brille abgeholt, FLSFTI, VRSCDX mit Reiniger putzen, Griechishc essen			
5775	10.06.2023	Roseline sex, FLHTKL Kössen Biker treffen fahren, Andi Huber grillen	Bank 200		
5776	12.06.2023	FLHTKL Elmau, Landl, Schliersee	 		
5777	12.06.2023	 	Bank, Stütz, seitliche Übungen, situps, spazieren Indorf		
5778	13.06.2023	Job Absage BMC, Udemy Web Development Bootcamp			
5779	14.06.2023	Udemy Web Development Bootcamp, FLHTKL fahren Mühldorf	Bank, Stütz, seitliche Übungen		
5780	15.06.2023	Udemy Web Development Bootcamp, IHLE essen	Bank, Stütz, seitliche Übungen		
5781	16.06.2023	Udemy Web Development Bootcamp, Landgasthof Schweiger mit Forstners	Bank		
5782	17.06.2023	Köln fahren, Gaffl Kneipe			
5783	18.06.2023	Rhein Hohenzollernbrücke, Strand			
5784	19.06.2023	Köln Porz			
5785	20.06.2023	Köln Porz			
5786	21.06.2023	Köln Porz, Datacenter Tour			
5787	22.06.2023	Köln Porz			
5788	23.06.2023				
5789	24.06.2023	Sandra DUS Flughafen, Erding gefahren			
5790	25.06.2023	FLSFTI fahren, Italienisch essen			
5791	26.06.2023	Udemy Web Development Bootcamp	Bank, Stütz, seitliche Übungen		
5792	27.06.2023	Udemy Web Development Bootcamp	Bank, 1*Stütz und seitliche Übungen		
5793	28.06.2023	Udemy Web Development Bootcamp, HTML,CSS Übungen			
5794	29.06.2023	Udemy Web Development Bootcamp, node.js, Postman, VRSCDX fahren	Bank, Stütz und seitliche Übungen		
5795	29.06.2023	Udemy Web Development Bootcamp, node.js, Postman, VRSCDX fahren	Bank, Stütz und seitliche Übungen		
5796	30.06.2023	Udemy Web Development Bootcamp, node.js, Postman, API Swagger, express	Bank, situps		
5797	01.07.2023	Roseline Sex, FLHTKL fahren			
5798	02.07.2023	ED nach Gambach			
5799	03.07.2023	REWE FFM			
5800	04.07.2023	REWE FFM, UDEMY Web Dev Bootcamp			
5801	05.07.2023	REWE FFM, UDEMY Web Dev Bootcamp			
5802	06.07.2023	REWE FFM, UDEMY Web Dev Bootcamp, BG getroffen			BG heiße message
5803	07.07.2023	REWE FFM, UDEMY Web Dev Bootcamp, JS YouTube, BG message, Drohne Gambach geflogen			BG heiße message zum Sex treffen
5804	09.07.2023	Roseline Sex, VRSCDX fahren			
5805	10.07.2023	Augenarzt	Bank		
5806	11.07.2023	FLHTKL fahren Had Eck	Bank		
5807	04.08.2023		Bank, Stütz, seitliche Übungen		
5808	08.07.2023	Gambach Erding gefahren, ab Nürnberg Landstrasse			
5809	12.07.2023	DJI Osmo Action 3 geliefert	Bank		
5810	13.07.2023	DJI Osmo Action 3 erstes Video	Bank, situps, Kettlebell		
5811	14.07.2023	Augenarzt			
5812	15.07.2023	Balkon Bretter streichen	Bank, situps, Kettlebell		
5813	16.07.2023	Balkon Bretter streichen, VRSCDX fahren mit DJI Osmo Action	Bank		
5814	17.07.2023	FLSFTI fahren			
5815	18.07.2023	FLSFTI fahren, HB mit Strapon	Bank		
5816	19.07.2023		Bank		
5817	20.07.2023	Augenarzt, Hautarzt, FLHTKL fahren			
5818	21.07.2023	Sachen packen	Bank		
5819	22.07.2023	FLHTKL fahren, Erding – Sylvenstein – Landeck			
5820	24.07.2023	FLHTKL fahren, Landeck – Sterzing – Sölden – Timmelsjochstrasse - St. Leonhard 			
5821	25.07.2023	FLHTKL fahren, St. Leonhard - Jaufenpass - Brixen - Klausen - Grödner Joch – Kufar – St.- Martin			
5822	27.07.2023	FLHTKL fahren, Cortina – Pieve di Cadore -Sexten – Innichen - Lienz – Heiligenblut			
5823	28.07.2023	FLHTKL fahren, Großglockner – Zell am See – Lofer – Kössen – Erding, Ihle essen			
5824	29.07.2023				
5825	30.07.2023	Kino Erding Oppenheimer			
5826	31.07.2023	Termin Standesamt			
5827	01.08.2023	Hautarzt			
5828	26.07.2023	FLHTKL fahren, St.-Martin – Cortine - Misurina – Cortina			
5829	05.08.2023		Bank		
5830	14.01.2023	Roseline Sex, Freising gefahren			
5831	02.08.2023	TomTom Navi, Griechisch essen ED Illios	Bank, Stütz, seitliche Übungen		
5832	03.08.2023				
5833	23.07.2023	FLHTKL fahren, Silvretta – Zürs – Lech essen – Hahntennjoch – Imst - Landeck			
5834	06.08.2023	Munich River Church, Burger King			
5835	07.08.2023	jd lesen json files			
5836	08.08.2023		Bank, Stütz, seitliche Übungen		
5837	09.08.2023	Termin Standesamt			
5838	10.08.2023	VRSCDX fahren	Bank		
5839	10.08.2023	VRSCDX fahren	Bank		
5840	11.08.2023	FLHTKL putzen	Bank		
5841	12.08.2023	FLSTFI fahren			
5842	13.08.2023	FLHTKL fahren			
5843	14.08.2023		Bank, situps		
5844	15.08.2023	Forstners zum essen			
5845	16.08.2023	Dr. Bloch	Bank		
5846	17.08.2023	FLSTFI fahren			
5847	18.08.2023	jq installation, VRSCDX fahren			
5848	19.08.2023	FLHTKL fahren Passau, Regen	Bank		
5849	20.08.2023	FLHTKL fahren			
5850	21.08.2023	Standesamt, McDonalds essen			
5851	22.08.2023	Bart abrasiert, FLSTFI fahren	Bank, Nacken		
5852	23.08.2023	Stadtpark spazieren	Bank, Nacken		
5853	24.08.2023	Hautklinik München			
5854	25.08.2023	agent script mir jq, Roseline München Kirche	Bank, Nacken		
5855	26.08.2023	Roseline Sex, FLSTFI fahren			
5856	27.08.2023		Bank, Nacken		
5857	28.08.2023	Kleidung für Hochzeit, Trauringe gekauft			
5858	29.08.2023		Bank, Nacken		
5859	30.08.2023	Mühldorf gefahren			
5860	31.08.2023	FLSTFI fahren	Bank, Nacken, situps		
5861	01.09.2023		Bank, Nacken, situps		
5862	02.09.2023	FLHTKL fahren Ammersee			
5863	03.09.2023	FLHTKL fahren STA Paradies			
5864	04.09.2023	Hochzeitsstrauch	Bank, Nacken		
5865	05.09.2023	Hochzeitstorte, VRSCDX fahren	Bank, Nacken		
5866	06.09.2023	VRSCDX fahren			
5867	07.09.2023	FLHTKL fahren Rosenheim			
5868	08.09.2023		Bank, Nacken		
5869	09.09.2023	FLSTFI fahren			
5870	10.09.2023	FLHTKL fahren, Asia			
5871	11.09.2023	Trauringe abgeholt, FLSTFI fahren			
5872	12.09.2023	VRSCDX fahren			
5873	13.09.2023	Freising fahren	Bank, Nacken		
5874	14.09.2023	Nusskuchen gebacken, München HBF			
5875	15.09.2023	Hochzeit, Ammersee, Griechisch Essen			
5876	16.09.2023	FLSTFI fahren			
5877	17.09.2023	Stadtpark Erding, McDonalds			
5878	20.09.2023	AB fahren, McDonalds			
5879	21.09.2023	FLSTFI fahren, Control-M Tag München			
5880	22.09.2023				
5881	24.09.2023		walking		
5882	26.09.2023	Roseline MUC HBF fahren, VRSCDX fahren			
5883	25.09.2023	 	Bank		
5884	23.09.2023	Garage Schrank geräumt, Schrank nach Pesenlern	Bank, Nacken		
5885	27.09.2023	spazieren	Bank		
5886	28.09.2023	HolyFreedom Quattro Waxed Evo Motorrad Textiljacke, Udemy Docker and Kubernetes, FLHTKL fahren	Bank, Nacken		
5887	29.09.2023	Macbook Docker installiert, Udemy Docker & Kubernetes, FLHTKL fahren, Flora Whatsapp	walken Riem		
5888	30.09.2023	HolyFreedom Quattro Camo, FLHTKL fahren IN			
5889	01.10.2023	FLHTKL fahren VIB	walken Riem		
5890	02.10.2023	Flora Whatsapp, FLHTKL fahren Mühldorf	Bank, Nacken		Flora gefällt mir, aber das macht keinen Sinn etwas anzufangen
5891	03.10.2023	ED – Gambach fahren			
5892	04.10.2023	OKR Rewe FFM			
5893	05.10.2023	Rewe FFM, BG getroffen geküsst			Hätte gerne mit BG Sex gehabt
5894	06.10.2023	Rewe FFM, Linden Sex und Massage			
5895	07.10.2023	Gambach – ED fahren			
5896	08.10.2023		walken Riem 2h		
5897	09.10.2023				
5898	10.10.2023	Meine BahnCard gekündigt, FLSTFI fahren	Bank, Nacken		
5899	12.10.2023	HB Sex			
5900	11.10.2023	FLHTKL fahren	Bank, Nacken		
5901	16.10.2023		Nacken		
5902	17.10.2023	Leonie Geburtstagsfeier			
5903	18.10.2023	Hauptbahnhof München fahren			
5904	13.10.2023	VRSCDX fahren	Bank, Nacken		
5905	14.10.2023	FLHTKL waschen,  Screen Protector  Kit; VRSCDX waschen			
5906	15.10.2023	Roseline Sex,Roseline Sex, München Hope Church	Bank, Nacken		
5907	19.10.2023				
5908	20.10.2023	Eishockey Landshut vs Bad Nauheim			
5909	21.10.2023	FLSTFI fahren, Roseline Church Ingolstädter Strasse			
5910	22.10.2023	München Hope Church			
5911	23.10.2023	Roseline Hope Church			
5912	24.10.2023	Flora Whatsapp			
5913	25.10.2023	Flora Whatsapp offen geschrieben			
5914	26.10.2023	RAV Winterreifen, Perkmann Tee, Weisswurscht, Schwitzbad unter Decke			
5915	27.10.2023	Schwitzbad unter Decke			
5916	28.10.2023	Schwitzbad unter Decke, Kompressor in Betrieb genommen, FLSTFI fahren			
5917	29.10.2023	Schwitzbad unter Decke, München Hope Church			
5918	30.10.2023	Schwitzbad unter Decke, FLHTKL fahren			
5919	31.10.2023	Schwitzbad unter Decke, Film Die durch die Hölle gehen		Ronin	
5920	01.11.2023	Schwitzbad unter Decke, FLHTKL fahren Chiemsee		Ronin	
5921	02.11.2023	Roseline Sex, Schwitzbad unter Decke. Flora Whatsapp	Nacken	Ronin, Nie Wieder	
5922	03.11.2023	Schwitzbad unter Decke, Eishockey Erding vs Dorfen	Nacken	Nie wieder	
5923	04.11.2023	Schwitzbad unter Decke, FLSTFI putzen	Nacken	Nie wieder	
5924	05.11.2023	BG Whatsapp, Schwitzbad unter Decke, München Hope Church	Nacken	Nie Wieder, Kugelsicher	
5925	06.11.2023	Schwitzbad unter Decke, Roseline Hope Church, Sex im Hotel	Bank, Nacken	Kugelsicher	
5926	07.11.2023	Schwitzbad unter Decke	Bank, Nacken	Kugelsicher, Der Sandmann	
5927	08.11.2023	Roseline München HBF		Der Sandmann, Der Engel	
5928	09.11.2023	Schwitzbad unter Decke, McDonalds	Bank, Nacken	Der Engel, Gone Forever, Die Agentin	
5929	10.11.2023	Flora Whatsapp, Schwitzbad unter Decke	Bank, Nacken	Gone Forever, Die Agentin	
5930	12.11.2023	Schwitzbad unter Decke, Hope Church	Bank	Late Show	
5931	13.11.2023	Schwitzbad unter Decke	Bank	Rügenjagd	
5932	14.11.2023	Roseline Tutzing		Rügenjagd, Rügengift	
5933	15.11.2023	Schwitzbad unter Decke	Bank		
5934	16.11.2023	Schwitzbad unter Decke, Zahnreinigung		Rügengift	
5935	17.11.2023	Schwitzbad unter Decke, Erding Eishockey	Bank, Nacken, Kettlebell Rücken	Rügengift, Selbst denken	
5936	11.11.2023	Flora Whatsapp, Schwitzbad unter Decke, Eishockey Deutschland Cup Landshut	Bank, Nacken	Die Agentin	
5937	18.11.2023	Schwitzbad unter Decke, Schweinebraten	Bank, Nacken, Kettlebell Rücken		
5938	19.11.2023	Roseline Sex, Schwitzbad unter Decke, München Hope Church	Bank, Nacken, Kettlebell Rücken	Rügengift, Selbst denken	
5939	20.11.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Die Kundschafterin, Selbst denken	
5940	21.11.2023	Schwitzbad unter Decke, McDonalds, ED Gladiator Trikot	Bank, Nacken, Kettlebell Rücken	Die Kundschafterin, Selbst denken	
5941	22.11.2023	Roseline München Church, Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken 	Die Kundschafterin, Die Killerin, Selbst denken	
5942	23.11.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Die Killerin, Selbst denken	
5943	25.11.2023	Schwitzbad unter Decke, Margret & Krögers Wintergarten, Roseline Munich Hope Church		Die Killerin, Selbst denken	
5944	26.11.2023	Schwitzbad unter Decke, Munich Hope Church	Bank, Nacken, Kettlebell Rücken	Die Rächerin, Selbst denken	
5945	27.11.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Die Rächerin, Selbst denken	
5946	28.11.2023	Schwitzbad unter Decke, MTDC Umzug	Bank, Nacken, Kettlebell Rücken 	Die Rächerin, Selbst denken	
5947	29.11.2023	Roseline MUC Hbf nach AB, Schwitzbad unter Decke, McDonalds	Bank, Nacken, Kettlebell Rücken	Die Rächerin, Selbst denken, Wormwood	
5948	30.11.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Wormwood, Selbst denken	
5949	29.12.2023	Schwitzbad	Bank, Nacken, Kettlebell Rücken	Das Chamäleon, Draussen	
5950	24.11.2023	Margret WhatsApp, Schwitzbad unter Decke, LA Xmas Markt, Eishockey LA vs Kaufbeuren	Bank, Nacken, Kettlebell Rücken 	Die Killerin, Selbst denken	
5951	01.12.2023	Schwitzbad unter Decke, Eishockey LA - Kassel	Bank, Nacken, Kettlebell Rücken	Wormwood, Selbst denken	
5952	02.12.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Wormwood, Selbst denken, Der Matroschka-Mörder	
5953	03.12.2023	Schwitzbad unter Decke, Munich Hope Church	Bank, Kettlebell Rücken	Selbst denken, Winterquartier	
5954	04.12.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Winterquartier, Selbst denken	
5955	05.12.2023	Schwitzbad unter Decke, Film Immer Ärger mit Grandpa	Bank, Nacken, Kettlebell Rücken	Winterquartier, Selbst denken	
5956	30.12.2023	Roseline Sex, Eishockey Ingolstadt vs Berlin		 	
5957	06.12.2023	Schwitzbad unter Decke, ED Weihnachtsmarkt, Bosch Legacy Staffel 1 und 2	Bank, Nacken, Kettlebell Rücken	Winterquartier	
5958	07.12.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Das Haus im Wald, Selbst denken	
5959	08.12.2023	Schwitzbad unter Decke, Eishockey ED vs Buchloe	Bank, Nacken, Kettlebell Rücken	Das Haus im Wald, Selbst denken	
5960	10.12.2023	Roseline Sex, Schrank aufgebaut, Schwitzbad unter Decke, Eishockey LA vs Regensburg	Bank	Friedhof für Fremde, Selbst denken	
5961	11.12.2023	Roseline Gericht		Friedhof für Fremde, Selbst denken	
5962	12.12.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Friedhof für Fremde, Selbst denken	
5963	09.12.2023	Schwitzbad unter Decke, Schrank Bettenlager geholt, Flora Whatsapp	Bank, Nacken, Kettlebell Rücken	Das Haus im Wald	
5964	13.12.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Friedhof für Fremde, Selbst denken	
5965	14.12.2023	WC Sitz, Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Zimmer in Rot	
5966	15.12.2023	Schwitzbad unter Decke, Eishockey Augsburg vs Bremerhaven, Whatsapp Flora	Bank, Nacken, Kettlebell Rücken	Zimmer in Rot	
5967	16.12.2023	Gwendolin Markt Schwaben Sex, Roseline Church			Zimmer in Rot, Sandsturm
5968	17.12.2023	Roseline Sex, Munich Church, Eishockey Erding vs Kempten	Bank, Nacken, Kettlebell Rücken	Sandsturm, Kaltblütig	
5969	18.12.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Kaltblütig	
5970	19.12.2023	Schwitzbad unter Decke	Bank, Nacken, Kettlebell Rücken	Kaltblütig, Blutmond	
5971	20.12.2023	Roseline AB, Schwitzbad 	Bank, Nacken, Kettlebell Rücken	Blutmond	
5972	21.12.2023	Schwitzbad, Forstner essen Reiter Wartenberg	Bank, Nacken, Kettlebell Rücken	Blut und Rosen, Der Drache und der Geist	
5973	22.12.2023	Schwitzbad	Bank, Nacken, Kettlebell Rücken	Der Drache und der Geist	
5974	23.12.2023	Roseline Sex, Flora Whatsapp, Schwitzbad	Bank	Der Drache und der Geist, Affenhitze	
5975	24.12.2023	Ente braten, Schwitzbad, Munich Church	Bank, Nacken, Kettlebell Rücken	Affenhitze	
5976	25.12.2023	Schwitzbad	Bank, Nacken, Kettlebell Rücken	Affenhitze	
5977	26.12.2023	Schwitzbad, Mc Donalds, Eishockey ED vs Schweinfurt	Bank, Nacken, Kettlebell Rücken	Affenhitze	
5978	27.12.2023	Schwitzbad	Bank, Nacken, Kettlebell Rücken	Affenhitze, Das Chamäleon	
5979	28.12.2023	Schwitzbad, Eishockey LA vs Selb	Bank, Nacken, Kettlebell Rücken	Das Chamäleon	
5980	31.12.2023	Schwitzbad	Bank, Nacken, Kettlebell Rücken	Draussen, Neonregen	
5981	01.01.2024	Schwitzbad, Flora Whatsapp	Bank, Nacken, Kettlebell Rücken	Neonregen, Die Affäre	
5982	02.01.2024	Schwitzbad, Eishockey LA vs Bietigheim	Bank, Nacken, Kettlebell Rücken	Die Affäre	
5983	03.01.2024	Schwitzbad, Forstner essen, Reacher Staffel 2	Bank, Nacken, Rücken	Die Affäre, Das Böse Nebenan	Streit mit Roseline
5984	04.01.2024	Leonie da für Haare machen, Forstner Spagetti essen, Film Christine, Reacher Staffel 2	Bank, Nacken, Rücken	Das Böse Nebenan	
5985	05.01.2024	Schwitzbad, Eishockey Erding vs Ulm 	Bank, Nacken, Rücken	Das Böse Nebenan	
5986	06.01.2024	Schwitzbad, Reacher Staffel 2, BG Sexy whatsapp	Bank, Nacken, Rücken	Das Böse Nebenan	
5987	07.01.2024	Schwitzbad, Munich Church, Film Platoon, Ergometer bestellt	Bank, Nacken, Rücken	Das Böse Nebenan, Der Poet	
5988	08.01.2024	Schwitzbad, Erding nach Gambach fahren	Bank, Nacken, Rücken		
5989	09.01.2024	Gambach arbeiten, AB fahren, Roseline Post mit Urteil, Eishockey Bad Nauheim vs Regensburg			
5990	10.01.2024	FFM Büro, BG Whatsapp treffen geht nicht, Zimmer für das nächste mal		Der Poet	
5991	11.01.2024	Gambach nach Köln fahren		Der Poet	
5992	12.01.2024	Köln arbeiten bei Sandra		Der Poet	
5993	13.01.2024			Der Poet, Das Klippenmädchen	
5994	14.01.2024	Eishockey Köln vs Schwenningen		Das Klippenmädchen	
5995	15.01.2024	Köln arbeiten bei Sandra, Köln nach ED fahren			
5996	16.01.2024	Ergometer zusammengebaut, Schwitzbad, BMC Webinar Control-M	Bank, Nacken, Rücken, Ergometer 10Min	Das Klippenmädchen, Die eiskalte Kammer	
5997	17.01.2024	Schwitzbad	Bank, Nacken, Rücken, Ergometer 20Min-20Min	Die eiskalte Kammer, Düsteres Wasser	
5998	18.01.2024	Schwitzbad, Eishockey Augsburg vs München	Ergometer 25Min, Bank, Nacken, Rücken		
5999	19.01.2024	Schwitzbad, Eishockey Erding vs Geretsried	Ergometer 30Min, Bank, Nacken, Rücken	Düsteres Wasser	
6000	20.01.2024	Schwitzbad, Roseline Church, Film Marlowe	Ergometer 35Min, Bank, Nacken, Rücken	Düsteres Wasser, Verloschen	
6001	21.01.2024	Schwitzbad, Church	Ergometer 40Min, Bank, Nacken, Rücken	Verloschen	
6002	22.01.2024	Film Mafia Mamma	Ergometer 10Min	Verloschen	
6003	23.01.2024		Ergometer 45Min	Verloschen	
6004	24.01.2024	Schwitzbad, Film Saints and Sinners	Ergometer 45Min, Bank, Nacken, Rücken	Der Lehrmeister	
6005	25.01.2024	Schwitzbad, FLHTKl und VRSCDX zu HD-Eck, Griechisch essen	Ergometer 35Min, Bank, Nacken, Rücken	Der Lehrmeister	
6006	26.01.2024	Schwitzbad, Eishockey Landshut vs Rosenheim	Bank, Nacken, Rücken		
6008	28.01.2024	Schwitzbad	Ergometer 30Min, Bank, Nacken, Rücken	Der Behüter	
6009	29.01.2024	Schwitzbad	Ergometer 30Min, Bank, Nacken, Rücken	Der Behüter	
6010	30.01.2024	Schwitzbad, Eishockey Landshut vs Dresden	Ergometer 35Min, Bank, Nacken, Rücken		
6011	31.01.2024	Über AB nach Köln gefahren, Haus besichtigt			
6012	01.02.2024	Köln nach FFM gefahren, T&C mtg, FFM über AB nach ED gefahren			
6013	02.02.2024	Mayans	Ergometer 30Min	Der Behüter, Artiges Mädchen	
6014	03.02.2024	HD Aktien verkauft, Schwitzbad, Film Born to be wild	Bank, Nacken, Rücken	Artiges Mädchen	
6015	04.02.2024	Schwitzbad, Eishockey LA – Freiburg verpasst, Mayans	Ergometer 31Min, Bank, Nacken, Rücken	Artiges Mädchen	
6016	05.02.2024	Schwitzbad, einkaufen, Mayans	Bank, Nacken, Rücken	Artiges Mädchens	
6017	06.02.2024	Schwitzbad,Mayans	Bank, Nacken, Rücken	Artiges Mädchen	
6018	07.02.2024	Schwitzbad, Mayans	Ergometer 30Min	Artiges Mädchen, Der Bewunderer	
6019	08.02.2024	Mayans		Der Bewunderer	
6020	09.02.2024	Schwitzbad, Mayans, griechisch essen	Ergometer 45Min, Bank, Nacken, Rücken	Der Bewunderer	
6021	10.02.2024	Mayans, Film Merry me	Ergometer 26Min, Bank, Nacken		
6022	11.02.2024	Schwitzbad, Film This little Love of Mine, Mayans, Kino Die Farbe Lila	Ergometer 60Min	Der Bewunderer	
6023	12.02.2024	AB fahren, Mayans, FXDL verkauft, Mayans			
6024	13.02.2024	Gipfeltreffen – Ringlstetter, Maischberger, Max Schmidt, Mayans, Pizza backen		Der Bewunderer	
6025	14.02.2024	Schwitzbad, Film Die weisse Massai	Bank, Nacken, Rücken	Der Bewunderer	
6026	15.02.2024	Schwitzbad, VIB FLHTKL und VRSCDX holen, Asphalt Cowboys	Ergometer 30Min		
6027	16.02.2024	Schwitzbad, Asphalt Cowboys, Eishockey ED vs Amberg	Bank, Nacken, Rücken	Der Bewunderer	
6028	17.02.2024	IMOT Messe, Five Guys, Trucker Babes, Grand Tour			
6029	18.02.2024	Roseline Sex, Schwitzbad, Trucker Babes, IHLE Kaffee	Bank, Nacken, Rücken	Der Böse Mann	
6030	19.02.2024	Trucker Babes, James May in India	Bank		
6031	20.02.2024	Schwitzbad, Film Peppermint	Bank, Nacken, Rücken	Der Böse Mann	
6032	21.02.2024	Schwitzbad	Bank, Nacken, Rücken	Der Böse Mann	 
6033	22.02.2024	Yellowstone Serie			Der Böse Mann, Time is Honey
6034	23.02.2024	Yellowstone, Eishockey Erding vs Amberg	Bank	Die Stumme Patientin	
6035	24.02.2024	Yellowstone, Schwitzbad	Bank, Nacken, Rücken	Die Stumme Patientin	
6036	25.02.2024	Yellowstone, Eishockey LA vs Kassel		Bank, Nacken, Rücken	
6037	26.02.2024	tragbarer Monitor geliefert, Yellowstone	Bank	Die Stumme Patientin	
6038	27.02.2024	Schwitzbad, Yellowstone	Bank, Nacken, Rücken		
6039	28.02.2024	SPK Schliersee, Tegernsee fahren, Yellowstone			
6040	29.02.2024	Schwitzbad	Bank, Nacken, Rücken	Die Stumme Patientin	
6041	01.03.2024	Schwitzbad ,Yellowstone, Film The Contractor	Bank	Die Stumme Patientin	
6042	02.03.2024	Schwitzbad, ED nach Gambach fahren	Bank	Die Stumme Patientin	
6043	03.03.2024	Haus Feldatal, Eishockey Bad Nauheim vs LA	Bank		
6044	05.03.2024	Serie Mr und Mrs Smith, AC/DC Karten		Die Stumme Patientin	
6045	06.03.2024	Wilderness Serie	Bank	Die Stumme Patientin, Gehe mit den Toten	
6046	04.03.2024	Gambach arbeiten, BG knutschen, fummeln Nippel saugen abef kein Sex, Serie Mr und Mrs Smith			
6047	07.03.2024	Wilderness Serie, Film First Class, Film Hight Heat		Gehe mit den Toten	
6048	08.03.2024	Gambach nach Köln farhen	Bank	Gehe mit den Toten, Auf zerbrochenem Glas	
6049	09.03.2024	Köln in der Stadt, Film High Heat, Film Borrego		Auf zerbrochenem Glas, Vom gleichem Blut	
6050	10.03.2024	Köln nach ED gefahren über Koblenz, Serie Treadstone			
6051	11.03.2024	Schwitzbad, FLHTKL fahren, Serie Treadstone	Bank, Nacken, Rücken	Vom gleichem Blut	
6052	12.03.2024	Schwitzbad, Serie Treadstone	Bank, Nacken, Rücken		
6053	13.03.2024	Schwitzbad, Eishockey LA vs Kaufbeuren	Bank	Vom gleichem Blut	
6054	14.03.2024	Schwitzbad, VRSCDX fahren, Film Ronin	Bank, Rücken	Vom gleichem Blut	
6055	15.03.2024	Schwitzbad, Eishockey ED vs Königsbrunn	Bank, Nacken, Rücken	Vom gleichem Blut	
6056	16.03.2024	Riem Arcaden, Film Die Götter müssen verrückt sein 1, Die glorreichen Sieben		Von zerfallenen Träumen	‚‘
6057	17.03.2024	Schwitzbad. FLHTKL fahren MÜ, Film Die Götter müssen verrückt sein 1 & 2, Die glorreichen Sieben	Ergometer 30 Min, Bank	Von zerfallenen Träumen	
6058	18.03.2024	Film Die Götter müssen verrückt sein 2 & 3	Ergometer 32 Min, Nacken	Vom Ende der Stille	
6059	19.03.2024		Ergometer 32 Min, Bank	Vom Ende der Stille	
6060	20.03.2024	CTM 9.0.21.200 upgrade, Schwitzbad, FLSTFI fahren, Schwitzbad	Bank, Nacken, Rücken	Vom Ende der Stille	
6061	21.03.2024	Reiter Wartenberg essen	ERgometer 30 Min	Vom Ende der Stille	
6062	22.03.2024	Schwitzbad, SpradeTV LA vs Kaufbeuren	Bank, Nacken, Rücken	Am Faden des Spielers	
6063	23.03.2024		Ergometer 40 Min	Am Faden des Spielers	
6064	24.03.2024	SpradeTV LA vs Kaufbeuren	Ergometer 31 Min, Bank, Nacken	Der Plan	
6065	25.03.2024	RAV Service, Schliersee, Sudelfeld, MB		um den Schliersee gegangen	
6066	26.03.2024	Schwitzbad, SpradeTV LA vs Kaufbeuren	Bank, Nacken	Der Plan	
6067	27.03.2024	Dörr checkup		Der Plan	
6068	28.03.2024	Schwitzbad, Film Top Gun	Ergometer 37 Min, Bank, Nacken	Der Plan	
6069	29.03.2024	FLHTKL Chiemseee Prien fahren, Film Rambo Last Blood, Film John Rambo	Ergometer 46 Min	Der Plan	
6070	30.03.2024	Schwitzbad	Bank, Cross Knee, Nacken, Rücken	Die Erinnerung so Kalt	
6071	31.03.2024	Brunch, VRSCDX fahren, Film Ein Fisch Names Wanda, Film Thelma & Luise	Ergometer 45 Min	Die Erinnerung so Kalt	
6072	01.04.2024	Schwittzbad, Flora message, Film Der Tot Steht ihr Gut	Ergometer 46 Min, Bank, Cross Knee, Nacken	Die Erinnerung so Kalt	
6073	03.04.2024	Schwitzbad	Bank, Cross Knee, Nacken, Rücken	Was verborgen bleiben sollte	
6074	04.04.2024		Ergometer 45 Min	Was verborgen bleiben sollte	
6075	05.04.2024	VRSCDX fahren, Film Roadhouse	Bank, Cross Knee, Nacken, Rücken	Was verborgen bleiben sollte	
6076	06.04.2024	FLHTKL Schliersee fahren, essen Hundham, Film Der Pferdeflüsterer	Bank, Cross Knee, Nacken, Rücken		
6077	07.04.2024	FLHTKL fahren, Bad Tölz, Vorderriss	Was verborgen bleiben sollte		
6078	08.04.2024	Schwitzbad	Bank, Cross Knee, Nacken	Was verborgen bleiben sollte	
6079	09.04.2024	ED nach AB und Ffm gefahren, OKR Ffm, Roseline in AB geholt, Lahmer Esel essen			
6080	10.04.2024	BMC in FFM,			
6081	12.04.2024	Mit Roseline in der Stadt		Wenn die Zeit gekommen ist	
6082	14.04.2024	Köln nach Erding gefahren		Wenn die Zeit gekommen ist	
6083	15.04.2024	Schwitzbad	Bank, Cross Knee, Nacken	Wenn die Zeit gekommen ist	
6084	16.04.2024	Schwitzbad, CB Whatsapp, Flora Whatsapp	Bank, Cross Knee, Nacken	Wenn die Zeit gekommen ist, Als die Nacht begann	
6085	17.04.2024	Doku Bobby Wine	Bank, Cross Knee	Als die Nacht begann	
6086	18.04.2024	Dr. Dörr	Ergometer 26 Min	Als die Nacht begann	
6087	20.04.2024	Espresso Kocher, Eishockey DEB-Slowakei in Augsburg			
6088	21.04.2024	Glas Zitronensaft, Tiramisu, Schwitzbad, Forstners Spagetti essen	Ergometer 40 Min	Als die Nacht begann	 
6089	22.04.2024	Glas Zitronensaft	Bank		Als die Nacht begann
6090	24.04.2024	Glas Zitronensaft, Film Mord im Pfarrhaus	Ergometer 40 Min	Auf verlorenen Wegen	
6091	25.04.2024	Glas Zitronensaft, Film Bodybard	Ergometer 30 Min	Auf verlorenen Wegen	
6092	26.04.2024	Glas Zitronensaft, Schwitzbad, Film Die Expendables	Ergometer 30 Min	Auf verlorenen Wegen	
6093	27.04.2024	Glas Zitronensaft, VRSCDX fahren, umfallen, Film The Expandables 2	Ergometer 30 Min	Auf der Spur des Jägers	
6094	28.04.2024	Glas Zitronensaft, Schwitzbad	Ergometer 40 Min	Auf der Spur des Jägers	
6095	29.04.2024	Glas Zitronensaft, VRSCDX fahren, Vilsbiburg, WhatsApp FTG, CB		Auf der Spur des Jägers, An einem dunklen Ort	
6096	30.04.2024	Glas Zitronensaft, FLHTKL fahren, Arber, Furth im Wald	Ergometer 40 Min	An einem dunklen Ort	
6097	01.05.2024	Glas Zitronensaft, CB Video	Ergometer 40 Min	An einem dunklen Ort, Pistolero	
6098	02.05.2024	Glas Zitronensaft, Schwitzbad	Ergometer 41 Min, Bank, Knee Cross, Nacken, Rücken	Pistolero	
6099	03.05.2024	Glas Zitronensaft, Schwitzbad, Clarkson Farm 3	Ergometer 50 Min, Bank, Knee Cross, Nacken	Pistolero	
6100	04.05.2024	Glas Zitronensaft, VRSCDX fahren, Wasserburg, Mühldorf	Ergometer 45 Min	Pistolero, Der Engelshenker	
6101	11.04.2024	BMC in FFM, Flora gesprochen, Gambach nach Köln gefahren			
6102	13.04.2024	Köln Aachener Weiher Biergarten gegessen, CB in Linkedin gemeldet		Wenn die Zeit gekommen ist	
6103	19.04.2024	Schwitzbad	Bank, Cross Knee, Nacken	Als die Nacht begann	
6104	06.05.2024	Glas Zitronensaft, Schwitzbad	Ergometer 46 Min, Knee Cross, Nacken, Rücken	Der Engelshenker	
6105	07.05.2024	Glas Zitronensaft, Python Programm, Clarksons Farm		Der Engelshenker, Zeuge X	
6106	05.05.2024	Glas Zitronensaft, Clarksons Farm	Ergometer 45 Min	Der Engelshenker	
6107	08.05.2024	Glas Zitronensaft, Python Programm, VRSCDX Rückspiegel, Clarksons Farm	Ergometer 40 Min	Zeuge X	
6108	09.05.2024	Glas Zitronensaft, 	Ergometer 40 Min, 30 Min	Zeuge X, Dem Tod verpflichtet	
6109	10.05.2024	Glas Zitronensaft, Schwitzbad, FLSTFI fahren, Eishockey D vs Slowakei, USA vs Schweden	Ergometer 51 Min, Knee Cross, Nacken, Rücken	Dem Tod verpfilchtet	
6110	11.05.2024	Glas Zitronensaft, S-Bahn STA, Eishockey D vs USA	Ergometer 40 Min	Dem Tod verpflichtet	
6111	12.05.2024	Glas Zitronensaft, Schwitzbad, FLHTKL fahren Pfaffenhofen, Biergarten Grünbach	Ergometer 26 Min	Dem Tod verpflichtet	
6112	13.05.2024	Glas Zitronensaft, Meldeamt Erding. Eishockey D vs Schweden	Ergometer 45 Min	Dem Tod verpflichtet	
6134	04.06.2024	Glas Zitronensaft	Laufen Köln Rhein	Das Grab in der Ardeche	 
6132	03.06.2024	Glas Zitronensaft	Laufen Köln Rhein	Das Grab in der Ardeche	 
6113	14.05.2024	Glas Zitronensaft, Schwitzbad, VSC mit ssh verbinden, Film Expandables 4	Ergometer 30 Min, Bank, Knee Cross, Nacken	Dem Tod verpflichtet	
6114	15.05.2024	Glas Zitronensaft, Schwitzbad, Eishockey Deutschland vs Lettland	Ergometer 30 Min,Bank,Knee Cross, Rücken, Nacken	Die Tote vom Mont-Sain-Michel	 
6115	16.05.2024	Glas Zitronensaft,Zahnarzt Huber	 	Die Tote vom Mont-Sain-Michel	 
6116	17.05.2024	Glas Zitronensaft, Schwitzbad	Ergometer 40 Min, Bank, Knee Cross	Die Tote vom Mont-Sain-Michel	 
6117	18.05.2024	Glas Zitronensaft, Schwitzbad, FLHTKL fahren Waldkraiburg	Ergometer 51 Min, Bank, Knee Cross, Rücken, Nacken	Die Tote vom Mont-Sain-Michel	 
6118	19.05.2024	Glas Zitronensaft, Schwitzbad	Ergometer 55 Min, Cross Knee	Nichts als Staub	 
6119	20.05.2024	Glas Zitronensaft, FLHTKL fahren Mittenwald 	 	Nichts als Staub	 
6120	21.05.2024	Glas Zitronensaft, Eishockey D vs F	Ergometer 40 Min	Nichts als Staub, Die Leere der Nacht	 
6121	22.05.2024	Glas Zitronensaft, 	Ergometer 46 MIn	Die Leere der Nacht	 
6122	23.05.2024	Glas Zitronensaft, Schwitzbad, Eishockey D vs CH	Bank, Knee Cross, Nacken, Ergometer 50 Min	Die Leere der Nacht	 
6123	25.05.2024	Glas Zitronensaft, Schwitzbad, Italienisch essen	Ergometer 55 Min	Die Leere der Nacht, Blutschlucht	 
6135	05.06.2024	Glas Zitronensaft	Laufen Köln Rhein	Das Grab in der Ardeche	 
6138	08.06.2024	Glas Zitronensaft, Köln Stadt	Laufen Köln Rhein 	Das Grab in der Ardeche	 
6128	30.05.2024	Glas Zitronensaft, Schwitzbad	Ergometer 50 Min, Bank, Knee Cross, Rücken, Nacken	Verkommenes Blut, Das Grab in der Ardeche	 
6127	29.05.2024	Glas Zitronensaft	Ergomete 45 Min	Verkommenes Blut	 
6137	07.06.2024	Glas Zitronensaft	Laufen Köln Rhein	Das Grab in der Ardeche	 
6125	27.05.2024	Glas Zitronensaft	Ergometer 32 Min	Verkommenes Blut	 
6124	26.05.2024	Glas Zitronensaft, VRSCDX fahren	Ergometer 51 Min	Blutschlucht, Verkommenes Blut	 
6126	28.05.2024	Glas Zitronensaft, Schwitzbad	Bank, Knee Cross, Rücken, Nacken, Ergometer 36 Min	Verkommenes Blut	 
6129	31.05.2024	Glas Zitronensaft	Ergometer 23 Min	Das Grab in der Ardeche	 
6131	02.06.2024	Glas Zitronensaft	Laufen Köln Rhein	Das Grab in der Ardeche	 
6136	06.06.2024	Glas Zitronensaft	Laufen Köln Rhein	Das Grab in der Ardeche	 
6130	01.06.2024	Glas Zitronensaft, Erding nach Köln gefahren	 	 	 
6139	09.06.2024	Glas Zitronensaft, Köln nach Erding gefahren	 	 	 
6140	10.06.2024	Glas Zitronensaft, Schwitzbad	Bank, Knee Cross, Rücken, Nacken, Laufen Kronthaler Weiher	Mord in der Unterwelt	 
6141	11.06.2024	Glas Zitronensaft	Laufen Kronthaler Weiher	Mord in der Unterwelt 	 
6142	12.06.2024	Glas Zitronensaft, Roseline Brille Apollo, AC/DC Konzert München	Laufen Kronthaler Weiher	 	 
6143	13.06.2024	Glas Zitronensaft, Tutzing Anwalt	 	Mord in der Unterwelt	 
6144	14.06.2024	Glas Zitronensaft, Mühldorf, Grünbach Biergarten Spare Ribs	Laufen Kronthaler Weiher, Nacken, Rücken	Mord in der Unterwelt	 
6145	15.06.2024	Glas Zitronensaft, Satzinger telefoniert	Laufen Kronthaler Weiher, Nacken, Rücken	Mord in der Unterwelt	 
6146	16.06.2024	Glas Zitronensaft, FLHTKL fahren	Laufen Pretzen Nacken, Rücken	Mord in der Unterwelt	 
6147	17.06.2024	Glas Zitronensaft	Laufen Kronthaler Weiher, Nacken, Rücken	Mord in der Unterwelt	 
6148	18.06.2024	Glas Zitronensaft, Frostners essen	Ergometer 35 Min, Bank	Mord in der Unterwelt, In ewiger Freundschft	 
6149	19.06.2024	Glas Zitronensaft	laufen, Nacken	In ewiger Freundschaft, Das RAF Phantom	 
6150	20.06.2024	Glas Zitronensaft	laufen, Nacken	In ewiger Feundschaft	 
6151	21.06.2024	Glas Zitronensaft		In ewiger Freundschaft	 
6152	22.06.2024	Glas Zitronensaft, Köln fahren mit Anhänger	 	 	 
6153	23.06.2024	Glas Zitronensaft	Nacken, Laufen Köln Rhein	In ewiger Freundschaft	 
6154	24.06.2024	Glas Zitronensaft	 	In ewiger Freundschaft	 
6155	25.06.2024	Glas Zitronensaft, Büro Köln Porz	 	 	 
6156	26.06.2024	Glas Zitronensaft	 	Der Angst verfallen	 
6157	27.06.2024	Glas Zitronensaft	 	Der Angst verfallen	 
6158	28.06.2024	Glas Zitronensaft	 	Der Angst verfallen	 
6159	29.06.2024	Glas Zitronensaft	Laufen Köln Rhein, Nacken	Der Angst verfallen	 
6160	30.06.2024	Glas Zitronensaft	Laufen Köln Rhein	Der Angst verfallen	 
6161	01.07.2024	Glas Zitronensaft, Köln – FFM OKR	 	Der Angst verallen	 
6162	02.07.2024	Glas Zitronensaft	 	Der Angst verfallen, Die Tote auf dem Zöllnerweg	 
6163	03.07.2024	Glas Zitronensaft	 Die	Tote	auf
6164	04.07.2024	Glas Zitronensaft	 	Die Tote auf dem Zöllnerweg	 
6165	05.07.2024	Köln nach Hohenstein-Ernstthal	 	 	 
6166	06.07.2024	Hohenstein-Ernstthal nach Erding	 	 	 
6167	07.07.2024	Glas Zitronensaft	 	Die Tote auf dem Zöllnerweg	 
6168	08.07.2024	Glas Zitronensaft, GIT Schulung	 	Die Tote auf dem Zöllnerweg	 
6169	09.07.2024	Glas Zitronensaft, GIT Schulung	Bank, Knee Cross, Nacken, Rücken	Dem Tod verfallen	 
6170	10.07.2024	Glas Zitronensaft	 	Dem Tod verfallen	 
6171	11.07.2024	Glas Zitronensaft, VRSCDX fahren	Bank, Knee Cross, Nacken, Rücken	Dem Tod verfallen	 
6172	12.07.2024	Glas Zitronensaft	 	Dem Tod verfallen	 
6173	13.07.2024	Glas Zitronensaft, FLHTKL fahren	Dem Tod verfallen	 	 
6174	14.07.2024	Glas Zitronensaft, FLHTKL fahren	 	Die Tote von Saint-Malo	 
6175	15.07.2024	Glas Zitronensaft, MacBook Pro M3 geliefert	Bank, Knee Cross, Nacken,	 	 
6176	16.07.2024	Glas Zitronensaft, Horizont HOT, FLSTFI fahren 	 	 	 
6177	17.07.2024	Glas Zitronensaft, Roseline iphone 12	 	Die Tote von Saint-Malo	 
6178	18.07.2024	Glas Zitronensaft	Bank, Knee Cross, Nacken, Rücken	Die Tote von Saint-Malo	 
\.


--
-- Name: journal journal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.journal
    ADD CONSTRAINT journal_pkey PRIMARY KEY (key);


--
-- PostgreSQL database dump complete
--

