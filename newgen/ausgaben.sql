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
-- Name: ausgaben; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ausgaben (
    datum integer,
    ort character(20),
    betrag character(10)
);


ALTER TABLE public.ausgaben OWNER TO postgres;

--
-- Data for Name: ausgaben; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ausgaben (datum, ort, betrag) FROM stdin;
16052024	REWE                	115,41    
16052024	EDEKA               	99,60     
25052024	KIK                 	66,39     
25052024	Bavaria Petrol      	80,84     
25052024	Getränke Orterer    	18,61     
25052024	Aldi                	59,68     
25052024	DM                  	46,00     
25052024	TEDI                	10,00     
25052024	Restaurant Radici   	45,00     
31052024	REWE                	24,88     
31052024	Bavaria Patrol      	25,20     
1062024	Shell               	58,79     
1062024	McDonalds           	27,67     
3062024	Nahkauf             	107,30    
6062024	Nahkauf             	92,36     
7062024	Nahkauf             	31,26     
8062024	KVB                 	8,50      
8062024	extrablatt          	35,00     
8062024	GT World of Beauty  	170,96    
8062024	Tabak               	8,80      
9062024	McDOnalds           	5,48      
9062024	BAT Spessart        	19,63     
10062024	REWE                	78,39     
10062024	UPS                 	30,00     
10062024	Post                	13,16     
10062024	Hagebau             	22,47     
12062024	MVV                 	38,50     
12062024	AC/DC Konzert       	33,20     
13062024	DM                  	5,90      
13062024	Tanken              	72,33     
13062024	Eis                 	6,40      
14062024	Mühldorf Kaffee     	20,00     
14062024	Grünbach Spare Ribs 	50,00     
17062024	REWE                	104,21    
18062024	Tabak Brucker       	100,20    
20062024	DM                  	74,45     
22062024	McDonalds           	22,27     
22062024	Jet                 	44,90     
22062024	Total               	58,66     
22062024	Nahkauf             	77,27     
24062024	Nahkauf             	56,07     
25062024	Tickets             	12,00     
27062024	Bar                 	100,00    
27062024	Nahkauf             	109,30    
16052024	REWE                	115,41    
16052024	EDEKA               	99,60     
25052024	KIK                 	66,39     
25052024	Bavaria Petrol      	80,84     
25052024	Getränke Orterer    	18,61     
25052024	Aldi                	59,68     
25052024	DM                  	46,00     
25052024	TEDI                	10,00     
25052024	Restaurant Radici   	45,00     
31052024	REWE                	24,88     
31052024	Bavaria Patrol      	25,20     
1062024	Shell               	58,79     
1062024	McDonalds           	27,67     
3062024	Nahkauf             	107,30    
6062024	Nahkauf             	92,36     
7062024	Nahkauf             	31,26     
8062024	KVB                 	8,50      
8062024	extrablatt          	35,00     
8062024	GT World of Beauty  	170,96    
8062024	Tabak               	8,80      
9062024	McDOnalds           	5,48      
9062024	BAT Spessart        	19,63     
10062024	REWE                	78,39     
10062024	UPS                 	30,00     
10062024	Post                	13,16     
10062024	Hagebau             	22,47     
12062024	MVV                 	38,50     
12062024	AC/DC Konzert       	33,20     
13062024	DM                  	5,90      
13062024	Tanken              	72,33     
13062024	Eis                 	6,40      
14062024	Mühldorf Kaffee     	20,00     
14062024	Grünbach Spare Ribs 	50,00     
17062024	REWE                	104,21    
18062024	Tabak Brucker       	100,20    
20062024	DM                  	74,45     
22062024	McDonalds           	22,27     
22062024	Jet                 	44,90     
22062024	Total               	58,66     
22062024	Nahkauf             	77,27     
24062024	Nahkauf             	56,07     
25062024	Tickets             	12,00     
27062024	Bar                 	100,00    
27062024	Nahkauf             	109,30    
29062024	Ticket              	8,50      
29062024	Extrablatt          	55,00     
29062024	Nahkauf             	23,32     
30062024	Summe Juni 2024     	1810,99   
1072024	Total               	52,18     
2072024	Nahkauf             	85,46     
5072024	McDonalds           	3,79      
5072024	Aral                	70,62     
6072024	Aral                	79,23     
6072024	Aldi                	100,92    
9072024	Bar                 	70,00     
12072024	Ortere              	27,63     
12072024	Aldi                	105,66    
12072024	DM                  	131,65    
12072024	TEDI                	13,55     
13072024	BAr                 	100,00    
13072024	Rossmann            	69,31     
13072024	OMV                 	34,78     
16072024	Döner               	9,50      
16072024	Bavaria Patrol      	51,61     
17072024	Brief, Brezen       	5,00      
18072024	ED Meldebehörde     	5,00      
18072024	Müller Markt        	122,33    
18072024	Media Markt         	41,98     
18072024	Schuh Center        	89,85     
18072024	Rewe                	165,18    
19072024	Edeka               	67,04     
\.


--
-- PostgreSQL database dump complete
--

