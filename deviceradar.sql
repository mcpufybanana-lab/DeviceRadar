--
-- PostgreSQL database dump
--

\restrict dgWTcRkQc7f4wxN6SIoT5dXf2enOD1XLEmFZrFecaggKspxRpJOc4wsvq5Wjz6H

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: dr_schem; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA dr_schem;


ALTER SCHEMA dr_schem OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: AvitoColor; Type: TABLE; Schema: dr_schem; Owner: postgres
--

CREATE TABLE dr_schem."AvitoColor" (
    "ID" integer NOT NULL,
    "Name" character varying(255),
    "MarkColor" integer
);


ALTER TABLE dr_schem."AvitoColor" OWNER TO postgres;

--
-- Name: AvitoColor_ID_seq; Type: SEQUENCE; Schema: dr_schem; Owner: postgres
--

ALTER TABLE dr_schem."AvitoColor" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dr_schem."AvitoColor_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: CPU; Type: TABLE; Schema: dr_schem; Owner: postgres
--

CREATE TABLE dr_schem."CPU" (
    "ID" integer NOT NULL,
    "Name" character varying(255)
);


ALTER TABLE dr_schem."CPU" OWNER TO postgres;

--
-- Name: CPU_ID_seq; Type: SEQUENCE; Schema: dr_schem; Owner: postgres
--

ALTER TABLE dr_schem."CPU" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dr_schem."CPU_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Category; Type: TABLE; Schema: dr_schem; Owner: postgres
--

CREATE TABLE dr_schem."Category" (
    "ID" integer NOT NULL,
    "Name" character varying(255)
);


ALTER TABLE dr_schem."Category" OWNER TO postgres;

--
-- Name: Category_ID_seq; Type: SEQUENCE; Schema: dr_schem; Owner: postgres
--

ALTER TABLE dr_schem."Category" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dr_schem."Category_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Device; Type: TABLE; Schema: dr_schem; Owner: postgres
--

CREATE TABLE dr_schem."Device" (
    "ID" integer NOT NULL,
    "Category" integer,
    "Vendor" integer,
    "Line" integer,
    "Model" integer,
    "Memory" integer,
    "SimConf" integer,
    "MarkColor" integer,
    "AvitoColor" integer,
    "Ram" integer,
    "CPU" integer,
    "Paket" integer,
    "DeviceType" integer,
    "DeviceStat" integer
);


ALTER TABLE dr_schem."Device" OWNER TO postgres;

--
-- Name: DeviceStat; Type: TABLE; Schema: dr_schem; Owner: postgres
--

CREATE TABLE dr_schem."DeviceStat" (
    "ID" integer NOT NULL,
    "Name" character varying(255)
);


ALTER TABLE dr_schem."DeviceStat" OWNER TO postgres;

--
-- Name: DeviceStat_ID_seq; Type: SEQUENCE; Schema: dr_schem; Owner: postgres
--

ALTER TABLE dr_schem."DeviceStat" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dr_schem."DeviceStat_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: DeviceType; Type: TABLE; Schema: dr_schem; Owner: postgres
--

CREATE TABLE dr_schem."DeviceType" (
    "ID" integer NOT NULL,
    "Name" character varying(255)
);


ALTER TABLE dr_schem."DeviceType" OWNER TO postgres;

--
-- Name: DeviceType_ID_seq; Type: SEQUENCE; Schema: dr_schem; Owner: postgres
--

ALTER TABLE dr_schem."DeviceType" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dr_schem."DeviceType_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Device_ID_seq; Type: SEQUENCE; Schema: dr_schem; Owner: postgres
--

ALTER TABLE dr_schem."Device" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dr_schem."Device_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Lines; Type: TABLE; Schema: dr_schem; Owner: postgres
--

CREATE TABLE dr_schem."Lines" (
    "ID" integer NOT NULL,
    "Name" character varying(255),
    "Vendor" integer
);


ALTER TABLE dr_schem."Lines" OWNER TO postgres;

--
-- Name: Lines_ID_seq; Type: SEQUENCE; Schema: dr_schem; Owner: postgres
--

ALTER TABLE dr_schem."Lines" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dr_schem."Lines_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: MarkColor; Type: TABLE; Schema: dr_schem; Owner: postgres
--

CREATE TABLE dr_schem."MarkColor" (
    "ID" integer NOT NULL,
    "Name" character varying(255),
    "AvitoColor" integer
);


ALTER TABLE dr_schem."MarkColor" OWNER TO postgres;

--
-- Name: MarkColor_ID_seq; Type: SEQUENCE; Schema: dr_schem; Owner: postgres
--

ALTER TABLE dr_schem."MarkColor" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dr_schem."MarkColor_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Memory; Type: TABLE; Schema: dr_schem; Owner: postgres
--

CREATE TABLE dr_schem."Memory" (
    "ID" integer NOT NULL,
    "Name" character varying(255)
);


ALTER TABLE dr_schem."Memory" OWNER TO postgres;

--
-- Name: Memory_ID_seq; Type: SEQUENCE; Schema: dr_schem; Owner: postgres
--

ALTER TABLE dr_schem."Memory" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dr_schem."Memory_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Models; Type: TABLE; Schema: dr_schem; Owner: postgres
--

CREATE TABLE dr_schem."Models" (
    "ID" integer NOT NULL,
    "Name" character varying(255),
    "Line" integer
);


ALTER TABLE dr_schem."Models" OWNER TO postgres;

--
-- Name: Models_ID_seq; Type: SEQUENCE; Schema: dr_schem; Owner: postgres
--

ALTER TABLE dr_schem."Models" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dr_schem."Models_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Offers; Type: TABLE; Schema: dr_schem; Owner: postgres
--

CREATE TABLE dr_schem."Offers" (
    "Device" integer,
    "SalePrice" numeric(12,2),
    "Country" character varying(255),
    "Time" time without time zone,
    "Date" date,
    "Seller" integer
);


ALTER TABLE dr_schem."Offers" OWNER TO postgres;

--
-- Name: Paket; Type: TABLE; Schema: dr_schem; Owner: postgres
--

CREATE TABLE dr_schem."Paket" (
    "ID" integer NOT NULL,
    "Name" character varying(255)
);


ALTER TABLE dr_schem."Paket" OWNER TO postgres;

--
-- Name: Paket_ID_seq; Type: SEQUENCE; Schema: dr_schem; Owner: postgres
--

ALTER TABLE dr_schem."Paket" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dr_schem."Paket_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Ram; Type: TABLE; Schema: dr_schem; Owner: postgres
--

CREATE TABLE dr_schem."Ram" (
    "ID" integer NOT NULL,
    "Name" character varying(255)
);


ALTER TABLE dr_schem."Ram" OWNER TO postgres;

--
-- Name: Ram_ID_seq; Type: SEQUENCE; Schema: dr_schem; Owner: postgres
--

ALTER TABLE dr_schem."Ram" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dr_schem."Ram_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Sellers; Type: TABLE; Schema: dr_schem; Owner: postgres
--

CREATE TABLE dr_schem."Sellers" (
    "ID" integer NOT NULL,
    "Name" character varying(255),
    "Link" character varying(500),
    "Address" character varying(500),
    "Market" character varying(255)
);


ALTER TABLE dr_schem."Sellers" OWNER TO postgres;

--
-- Name: Sellers_ID_seq; Type: SEQUENCE; Schema: dr_schem; Owner: postgres
--

ALTER TABLE dr_schem."Sellers" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dr_schem."Sellers_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: SimConf; Type: TABLE; Schema: dr_schem; Owner: postgres
--

CREATE TABLE dr_schem."SimConf" (
    "ID" integer NOT NULL,
    "Name" character varying(255)
);


ALTER TABLE dr_schem."SimConf" OWNER TO postgres;

--
-- Name: SimConf_ID_seq; Type: SEQUENCE; Schema: dr_schem; Owner: postgres
--

ALTER TABLE dr_schem."SimConf" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dr_schem."SimConf_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Vendor; Type: TABLE; Schema: dr_schem; Owner: postgres
--

CREATE TABLE dr_schem."Vendor" (
    "ID" integer NOT NULL,
    "Name" character varying(255)
);


ALTER TABLE dr_schem."Vendor" OWNER TO postgres;

--
-- Name: Vendor_ID_seq; Type: SEQUENCE; Schema: dr_schem; Owner: postgres
--

ALTER TABLE dr_schem."Vendor" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dr_schem."Vendor_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: AvitoColor; Type: TABLE DATA; Schema: dr_schem; Owner: postgres
--

COPY dr_schem."AvitoColor" ("ID", "Name", "MarkColor") FROM stdin;
\.


--
-- Data for Name: CPU; Type: TABLE DATA; Schema: dr_schem; Owner: postgres
--

COPY dr_schem."CPU" ("ID", "Name") FROM stdin;
\.


--
-- Data for Name: Category; Type: TABLE DATA; Schema: dr_schem; Owner: postgres
--

COPY dr_schem."Category" ("ID", "Name") FROM stdin;
\.


--
-- Data for Name: Device; Type: TABLE DATA; Schema: dr_schem; Owner: postgres
--

COPY dr_schem."Device" ("ID", "Category", "Vendor", "Line", "Model", "Memory", "SimConf", "MarkColor", "AvitoColor", "Ram", "CPU", "Paket", "DeviceType", "DeviceStat") FROM stdin;
\.


--
-- Data for Name: DeviceStat; Type: TABLE DATA; Schema: dr_schem; Owner: postgres
--

COPY dr_schem."DeviceStat" ("ID", "Name") FROM stdin;
\.


--
-- Data for Name: DeviceType; Type: TABLE DATA; Schema: dr_schem; Owner: postgres
--

COPY dr_schem."DeviceType" ("ID", "Name") FROM stdin;
\.


--
-- Data for Name: Lines; Type: TABLE DATA; Schema: dr_schem; Owner: postgres
--

COPY dr_schem."Lines" ("ID", "Name", "Vendor") FROM stdin;
\.


--
-- Data for Name: MarkColor; Type: TABLE DATA; Schema: dr_schem; Owner: postgres
--

COPY dr_schem."MarkColor" ("ID", "Name", "AvitoColor") FROM stdin;
\.


--
-- Data for Name: Memory; Type: TABLE DATA; Schema: dr_schem; Owner: postgres
--

COPY dr_schem."Memory" ("ID", "Name") FROM stdin;
\.


--
-- Data for Name: Models; Type: TABLE DATA; Schema: dr_schem; Owner: postgres
--

COPY dr_schem."Models" ("ID", "Name", "Line") FROM stdin;
\.


--
-- Data for Name: Offers; Type: TABLE DATA; Schema: dr_schem; Owner: postgres
--

COPY dr_schem."Offers" ("Device", "SalePrice", "Country", "Time", "Date", "Seller") FROM stdin;
\.


--
-- Data for Name: Paket; Type: TABLE DATA; Schema: dr_schem; Owner: postgres
--

COPY dr_schem."Paket" ("ID", "Name") FROM stdin;
\.


--
-- Data for Name: Ram; Type: TABLE DATA; Schema: dr_schem; Owner: postgres
--

COPY dr_schem."Ram" ("ID", "Name") FROM stdin;
\.


--
-- Data for Name: Sellers; Type: TABLE DATA; Schema: dr_schem; Owner: postgres
--

COPY dr_schem."Sellers" ("ID", "Name", "Link", "Address", "Market") FROM stdin;
\.


--
-- Data for Name: SimConf; Type: TABLE DATA; Schema: dr_schem; Owner: postgres
--

COPY dr_schem."SimConf" ("ID", "Name") FROM stdin;
\.


--
-- Data for Name: Vendor; Type: TABLE DATA; Schema: dr_schem; Owner: postgres
--

COPY dr_schem."Vendor" ("ID", "Name") FROM stdin;
\.


--
-- Name: AvitoColor_ID_seq; Type: SEQUENCE SET; Schema: dr_schem; Owner: postgres
--

SELECT pg_catalog.setval('dr_schem."AvitoColor_ID_seq"', 1, false);


--
-- Name: CPU_ID_seq; Type: SEQUENCE SET; Schema: dr_schem; Owner: postgres
--

SELECT pg_catalog.setval('dr_schem."CPU_ID_seq"', 1, false);


--
-- Name: Category_ID_seq; Type: SEQUENCE SET; Schema: dr_schem; Owner: postgres
--

SELECT pg_catalog.setval('dr_schem."Category_ID_seq"', 1, false);


--
-- Name: DeviceStat_ID_seq; Type: SEQUENCE SET; Schema: dr_schem; Owner: postgres
--

SELECT pg_catalog.setval('dr_schem."DeviceStat_ID_seq"', 1, false);


--
-- Name: DeviceType_ID_seq; Type: SEQUENCE SET; Schema: dr_schem; Owner: postgres
--

SELECT pg_catalog.setval('dr_schem."DeviceType_ID_seq"', 1, false);


--
-- Name: Device_ID_seq; Type: SEQUENCE SET; Schema: dr_schem; Owner: postgres
--

SELECT pg_catalog.setval('dr_schem."Device_ID_seq"', 1, false);


--
-- Name: Lines_ID_seq; Type: SEQUENCE SET; Schema: dr_schem; Owner: postgres
--

SELECT pg_catalog.setval('dr_schem."Lines_ID_seq"', 1, false);


--
-- Name: MarkColor_ID_seq; Type: SEQUENCE SET; Schema: dr_schem; Owner: postgres
--

SELECT pg_catalog.setval('dr_schem."MarkColor_ID_seq"', 1, false);


--
-- Name: Memory_ID_seq; Type: SEQUENCE SET; Schema: dr_schem; Owner: postgres
--

SELECT pg_catalog.setval('dr_schem."Memory_ID_seq"', 1, false);


--
-- Name: Models_ID_seq; Type: SEQUENCE SET; Schema: dr_schem; Owner: postgres
--

SELECT pg_catalog.setval('dr_schem."Models_ID_seq"', 1, false);


--
-- Name: Paket_ID_seq; Type: SEQUENCE SET; Schema: dr_schem; Owner: postgres
--

SELECT pg_catalog.setval('dr_schem."Paket_ID_seq"', 1, false);


--
-- Name: Ram_ID_seq; Type: SEQUENCE SET; Schema: dr_schem; Owner: postgres
--

SELECT pg_catalog.setval('dr_schem."Ram_ID_seq"', 1, false);


--
-- Name: Sellers_ID_seq; Type: SEQUENCE SET; Schema: dr_schem; Owner: postgres
--

SELECT pg_catalog.setval('dr_schem."Sellers_ID_seq"', 1, false);


--
-- Name: SimConf_ID_seq; Type: SEQUENCE SET; Schema: dr_schem; Owner: postgres
--

SELECT pg_catalog.setval('dr_schem."SimConf_ID_seq"', 1, false);


--
-- Name: Vendor_ID_seq; Type: SEQUENCE SET; Schema: dr_schem; Owner: postgres
--

SELECT pg_catalog.setval('dr_schem."Vendor_ID_seq"', 1, false);


--
-- Name: AvitoColor AvitoColor_pkey; Type: CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."AvitoColor"
    ADD CONSTRAINT "AvitoColor_pkey" PRIMARY KEY ("ID");


--
-- Name: CPU CPU_pkey; Type: CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."CPU"
    ADD CONSTRAINT "CPU_pkey" PRIMARY KEY ("ID");


--
-- Name: Category Category_pkey; Type: CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY ("ID");


--
-- Name: DeviceStat DeviceStat_pkey; Type: CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."DeviceStat"
    ADD CONSTRAINT "DeviceStat_pkey" PRIMARY KEY ("ID");


--
-- Name: DeviceType DeviceType_pkey; Type: CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."DeviceType"
    ADD CONSTRAINT "DeviceType_pkey" PRIMARY KEY ("ID");


--
-- Name: Device Device_pkey; Type: CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Device"
    ADD CONSTRAINT "Device_pkey" PRIMARY KEY ("ID");


--
-- Name: Lines Lines_pkey; Type: CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Lines"
    ADD CONSTRAINT "Lines_pkey" PRIMARY KEY ("ID");


--
-- Name: MarkColor MarkColor_pkey; Type: CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."MarkColor"
    ADD CONSTRAINT "MarkColor_pkey" PRIMARY KEY ("ID");


--
-- Name: Memory Memory_pkey; Type: CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Memory"
    ADD CONSTRAINT "Memory_pkey" PRIMARY KEY ("ID");


--
-- Name: Models Models_pkey; Type: CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Models"
    ADD CONSTRAINT "Models_pkey" PRIMARY KEY ("ID");


--
-- Name: Paket Paket_pkey; Type: CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Paket"
    ADD CONSTRAINT "Paket_pkey" PRIMARY KEY ("ID");


--
-- Name: Ram Ram_pkey; Type: CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Ram"
    ADD CONSTRAINT "Ram_pkey" PRIMARY KEY ("ID");


--
-- Name: Sellers Sellers_pkey; Type: CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Sellers"
    ADD CONSTRAINT "Sellers_pkey" PRIMARY KEY ("ID");


--
-- Name: SimConf SimConf_pkey; Type: CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."SimConf"
    ADD CONSTRAINT "SimConf_pkey" PRIMARY KEY ("ID");


--
-- Name: Vendor Vendor_pkey; Type: CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Vendor"
    ADD CONSTRAINT "Vendor_pkey" PRIMARY KEY ("ID");


--
-- Name: AvitoColor AvitoColor_MarkColor_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."AvitoColor"
    ADD CONSTRAINT "AvitoColor_MarkColor_fkey" FOREIGN KEY ("MarkColor") REFERENCES dr_schem."MarkColor"("ID");


--
-- Name: Device Device_AvitoColor_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Device"
    ADD CONSTRAINT "Device_AvitoColor_fkey" FOREIGN KEY ("AvitoColor") REFERENCES dr_schem."AvitoColor"("ID");


--
-- Name: Device Device_CPU_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Device"
    ADD CONSTRAINT "Device_CPU_fkey" FOREIGN KEY ("CPU") REFERENCES dr_schem."CPU"("ID");


--
-- Name: Device Device_Category_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Device"
    ADD CONSTRAINT "Device_Category_fkey" FOREIGN KEY ("Category") REFERENCES dr_schem."Category"("ID");


--
-- Name: Device Device_DeviceStat_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Device"
    ADD CONSTRAINT "Device_DeviceStat_fkey" FOREIGN KEY ("DeviceStat") REFERENCES dr_schem."DeviceStat"("ID");


--
-- Name: Device Device_DeviceType_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Device"
    ADD CONSTRAINT "Device_DeviceType_fkey" FOREIGN KEY ("DeviceType") REFERENCES dr_schem."DeviceType"("ID");


--
-- Name: Device Device_Line_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Device"
    ADD CONSTRAINT "Device_Line_fkey" FOREIGN KEY ("Line") REFERENCES dr_schem."Lines"("ID");


--
-- Name: Device Device_MarkColor_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Device"
    ADD CONSTRAINT "Device_MarkColor_fkey" FOREIGN KEY ("MarkColor") REFERENCES dr_schem."MarkColor"("ID");


--
-- Name: Device Device_Memory_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Device"
    ADD CONSTRAINT "Device_Memory_fkey" FOREIGN KEY ("Memory") REFERENCES dr_schem."Memory"("ID");


--
-- Name: Device Device_Model_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Device"
    ADD CONSTRAINT "Device_Model_fkey" FOREIGN KEY ("Model") REFERENCES dr_schem."Models"("ID");


--
-- Name: Device Device_Paket_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Device"
    ADD CONSTRAINT "Device_Paket_fkey" FOREIGN KEY ("Paket") REFERENCES dr_schem."Paket"("ID");


--
-- Name: Device Device_Ram_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Device"
    ADD CONSTRAINT "Device_Ram_fkey" FOREIGN KEY ("Ram") REFERENCES dr_schem."Ram"("ID");


--
-- Name: Device Device_SimConf_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Device"
    ADD CONSTRAINT "Device_SimConf_fkey" FOREIGN KEY ("SimConf") REFERENCES dr_schem."SimConf"("ID");


--
-- Name: Device Device_Vendor_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Device"
    ADD CONSTRAINT "Device_Vendor_fkey" FOREIGN KEY ("Vendor") REFERENCES dr_schem."Vendor"("ID");


--
-- Name: Lines Lines_Vendor_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Lines"
    ADD CONSTRAINT "Lines_Vendor_fkey" FOREIGN KEY ("Vendor") REFERENCES dr_schem."Vendor"("ID");


--
-- Name: Models Models_Line_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Models"
    ADD CONSTRAINT "Models_Line_fkey" FOREIGN KEY ("Line") REFERENCES dr_schem."Lines"("ID");


--
-- Name: Offers Offers_Device_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Offers"
    ADD CONSTRAINT "Offers_Device_fkey" FOREIGN KEY ("Device") REFERENCES dr_schem."Device"("ID");


--
-- Name: Offers Offers_Seller_fkey; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."Offers"
    ADD CONSTRAINT "Offers_Seller_fkey" FOREIGN KEY ("Seller") REFERENCES dr_schem."Sellers"("ID");


--
-- Name: MarkColor fk_markcolor_avitocolor; Type: FK CONSTRAINT; Schema: dr_schem; Owner: postgres
--

ALTER TABLE ONLY dr_schem."MarkColor"
    ADD CONSTRAINT fk_markcolor_avitocolor FOREIGN KEY ("AvitoColor") REFERENCES dr_schem."AvitoColor"("ID");


--
-- PostgreSQL database dump complete
--

\unrestrict dgWTcRkQc7f4wxN6SIoT5dXf2enOD1XLEmFZrFecaggKspxRpJOc4wsvq5Wjz6H

