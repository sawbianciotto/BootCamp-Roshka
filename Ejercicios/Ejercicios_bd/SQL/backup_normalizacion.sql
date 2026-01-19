--
-- PostgreSQL database dump
--

\restrict pIKfXmpJpoI2NMU9oxg3HdKg1mywfoLdo7NGIT7lXjrLSE2jpF3e7NKVasVYhV5

-- Dumped from database version 18.1 (Ubuntu 18.1-1.pgdg24.04+2)
-- Dumped by pg_dump version 18.1 (Ubuntu 18.1-1.pgdg24.04+2)

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
-- Name: Ejercicio 1; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Ejercicio 1";


ALTER SCHEMA "Ejercicio 1" OWNER TO postgres;

--
-- Name: Ejercicio 2; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Ejercicio 2";


ALTER SCHEMA "Ejercicio 2" OWNER TO postgres;

--
-- Name: Ejercicio 3; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Ejercicio 3";


ALTER SCHEMA "Ejercicio 3" OWNER TO postgres;

--
-- Name: Ejercicio 4; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Ejercicio 4";


ALTER SCHEMA "Ejercicio 4" OWNER TO postgres;

--
-- Name: Ejercicio 5; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Ejercicio 5";


ALTER SCHEMA "Ejercicio 5" OWNER TO postgres;

--
-- Name: Ejercicio 6; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Ejercicio 6";


ALTER SCHEMA "Ejercicio 6" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: categoriaProducto; Type: TABLE; Schema: Ejercicio 1; Owner: postgres
--

CREATE TABLE "Ejercicio 1"."categoriaProducto" (
    "idCategoria" integer NOT NULL,
    categoria character varying NOT NULL
);


ALTER TABLE "Ejercicio 1"."categoriaProducto" OWNER TO postgres;

--
-- Name: categoriaProducto_idCategoria_seq; Type: SEQUENCE; Schema: Ejercicio 1; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 1"."categoriaProducto_idCategoria_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 1"."categoriaProducto_idCategoria_seq" OWNER TO postgres;

--
-- Name: categoriaProducto_idCategoria_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 1; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 1"."categoriaProducto_idCategoria_seq" OWNED BY "Ejercicio 1"."categoriaProducto"."idCategoria";


--
-- Name: ciudad; Type: TABLE; Schema: Ejercicio 1; Owner: postgres
--

CREATE TABLE "Ejercicio 1".ciudad (
    id integer NOT NULL,
    "ciudadCliente" character varying NOT NULL
);


ALTER TABLE "Ejercicio 1".ciudad OWNER TO postgres;

--
-- Name: ciudad_id_seq; Type: SEQUENCE; Schema: Ejercicio 1; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 1".ciudad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 1".ciudad_id_seq OWNER TO postgres;

--
-- Name: ciudad_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 1; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 1".ciudad_id_seq OWNED BY "Ejercicio 1".ciudad.id;


--
-- Name: cliente; Type: TABLE; Schema: Ejercicio 1; Owner: postgres
--

CREATE TABLE "Ejercicio 1".cliente (
    id integer NOT NULL,
    "rifCliente" character varying NOT NULL,
    "nomCliente" character varying NOT NULL
);


ALTER TABLE "Ejercicio 1".cliente OWNER TO postgres;

--
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: Ejercicio 1; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 1".cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 1".cliente_id_seq OWNER TO postgres;

--
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 1; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 1".cliente_id_seq OWNED BY "Ejercicio 1".cliente.id;


--
-- Name: direccion; Type: TABLE; Schema: Ejercicio 1; Owner: postgres
--

CREATE TABLE "Ejercicio 1".direccion (
    id integer NOT NULL,
    "dirCliente" character varying NOT NULL,
    "idCiudad" integer NOT NULL,
    "idCliente" integer NOT NULL
);


ALTER TABLE "Ejercicio 1".direccion OWNER TO postgres;

--
-- Name: direccion_id_seq; Type: SEQUENCE; Schema: Ejercicio 1; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 1".direccion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 1".direccion_id_seq OWNER TO postgres;

--
-- Name: direccion_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 1; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 1".direccion_id_seq OWNED BY "Ejercicio 1".direccion.id;


--
-- Name: factura; Type: TABLE; Schema: Ejercicio 1; Owner: postgres
--

CREATE TABLE "Ejercicio 1".factura (
    "numFac" integer NOT NULL,
    "idCliente" integer NOT NULL,
    "idProd" integer NOT NULL,
    "cantProd" integer NOT NULL,
    "fechaFac" date NOT NULL
);


ALTER TABLE "Ejercicio 1".factura OWNER TO postgres;

--
-- Name: factura_numFac_seq; Type: SEQUENCE; Schema: Ejercicio 1; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 1"."factura_numFac_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 1"."factura_numFac_seq" OWNER TO postgres;

--
-- Name: factura_numFac_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 1; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 1"."factura_numFac_seq" OWNED BY "Ejercicio 1".factura."numFac";


--
-- Name: producto; Type: TABLE; Schema: Ejercicio 1; Owner: postgres
--

CREATE TABLE "Ejercicio 1".producto (
    id integer NOT NULL,
    "codProd" character varying NOT NULL,
    "despProd" character varying NOT NULL,
    "valUnit" numeric NOT NULL,
    "idCategoria" integer NOT NULL
);


ALTER TABLE "Ejercicio 1".producto OWNER TO postgres;

--
-- Name: producto_id_seq; Type: SEQUENCE; Schema: Ejercicio 1; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 1".producto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 1".producto_id_seq OWNER TO postgres;

--
-- Name: producto_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 1; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 1".producto_id_seq OWNED BY "Ejercicio 1".producto.id;


--
-- Name: telefonoCliente; Type: TABLE; Schema: Ejercicio 1; Owner: postgres
--

CREATE TABLE "Ejercicio 1"."telefonoCliente" (
    id integer NOT NULL,
    "idCliente" integer NOT NULL,
    telefono character varying NOT NULL
);


ALTER TABLE "Ejercicio 1"."telefonoCliente" OWNER TO postgres;

--
-- Name: telefonoCliente_id_seq; Type: SEQUENCE; Schema: Ejercicio 1; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 1"."telefonoCliente_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 1"."telefonoCliente_id_seq" OWNER TO postgres;

--
-- Name: telefonoCliente_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 1; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 1"."telefonoCliente_id_seq" OWNED BY "Ejercicio 1"."telefonoCliente".id;


--
-- Name: actividadEmpresa; Type: TABLE; Schema: Ejercicio 2; Owner: postgres
--

CREATE TABLE "Ejercicio 2"."actividadEmpresa" (
    id integer NOT NULL,
    "orgnAct" character varying NOT NULL
);


ALTER TABLE "Ejercicio 2"."actividadEmpresa" OWNER TO postgres;

--
-- Name: actividadEmpresa_id_seq; Type: SEQUENCE; Schema: Ejercicio 2; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 2"."actividadEmpresa_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 2"."actividadEmpresa_id_seq" OWNER TO postgres;

--
-- Name: actividadEmpresa_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 2; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 2"."actividadEmpresa_id_seq" OWNED BY "Ejercicio 2"."actividadEmpresa".id;


--
-- Name: ciudad; Type: TABLE; Schema: Ejercicio 2; Owner: postgres
--

CREATE TABLE "Ejercicio 2".ciudad (
    id integer NOT NULL,
    "CodCiudad" character varying NOT NULL,
    "Ciudad" character varying NOT NULL
);


ALTER TABLE "Ejercicio 2".ciudad OWNER TO postgres;

--
-- Name: ciudad_id_seq; Type: SEQUENCE; Schema: Ejercicio 2; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 2".ciudad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 2".ciudad_id_seq OWNER TO postgres;

--
-- Name: ciudad_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 2; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 2".ciudad_id_seq OWNED BY "Ejercicio 2".ciudad.id;


--
-- Name: contacto; Type: TABLE; Schema: Ejercicio 2; Owner: postgres
--

CREATE TABLE "Ejercicio 2".contacto (
    id integer NOT NULL,
    contacto character varying NOT NULL,
    "idTipoContacto" integer NOT NULL,
    "idEmpresa" integer NOT NULL
);


ALTER TABLE "Ejercicio 2".contacto OWNER TO postgres;

--
-- Name: contacto_id_seq; Type: SEQUENCE; Schema: Ejercicio 2; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 2".contacto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 2".contacto_id_seq OWNER TO postgres;

--
-- Name: contacto_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 2; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 2".contacto_id_seq OWNED BY "Ejercicio 2".contacto.id;


--
-- Name: destinatario; Type: TABLE; Schema: Ejercicio 2; Owner: postgres
--

CREATE TABLE "Ejercicio 2".destinatario (
    id integer NOT NULL,
    "destId" character varying NOT NULL,
    "destNom" character varying NOT NULL,
    "destDir" character varying NOT NULL,
    "idCiudad" integer NOT NULL
);


ALTER TABLE "Ejercicio 2".destinatario OWNER TO postgres;

--
-- Name: destinatario_id_seq; Type: SEQUENCE; Schema: Ejercicio 2; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 2".destinatario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 2".destinatario_id_seq OWNER TO postgres;

--
-- Name: destinatario_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 2; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 2".destinatario_id_seq OWNED BY "Ejercicio 2".destinatario.id;


--
-- Name: direccionEmpresa; Type: TABLE; Schema: Ejercicio 2; Owner: postgres
--

CREATE TABLE "Ejercicio 2"."direccionEmpresa" (
    id integer NOT NULL,
    "orgnDir" character varying NOT NULL,
    "idEmpresa" integer NOT NULL,
    "idCiudad" integer NOT NULL
);


ALTER TABLE "Ejercicio 2"."direccionEmpresa" OWNER TO postgres;

--
-- Name: direccionEmpresa_id_seq; Type: SEQUENCE; Schema: Ejercicio 2; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 2"."direccionEmpresa_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 2"."direccionEmpresa_id_seq" OWNER TO postgres;

--
-- Name: direccionEmpresa_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 2; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 2"."direccionEmpresa_id_seq" OWNED BY "Ejercicio 2"."direccionEmpresa".id;


--
-- Name: empresa; Type: TABLE; Schema: Ejercicio 2; Owner: postgres
--

CREATE TABLE "Ejercicio 2".empresa (
    id integer NOT NULL,
    "orgnRif" character varying NOT NULL,
    "orgnNom" character varying NOT NULL,
    "idActividad" integer NOT NULL
);


ALTER TABLE "Ejercicio 2".empresa OWNER TO postgres;

--
-- Name: empresa_id_seq; Type: SEQUENCE; Schema: Ejercicio 2; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 2".empresa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 2".empresa_id_seq OWNER TO postgres;

--
-- Name: empresa_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 2; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 2".empresa_id_seq OWNED BY "Ejercicio 2".empresa.id;


--
-- Name: guia; Type: TABLE; Schema: Ejercicio 2; Owner: postgres
--

CREATE TABLE "Ejercicio 2".guia (
    "guiaNo" integer NOT NULL,
    "guiaFecha" date NOT NULL,
    "guiaHora" time without time zone NOT NULL,
    "idDestinatario" integer NOT NULL,
    "idEmpresa" integer NOT NULL,
    "valrFlete" numeric NOT NULL,
    "destKm" numeric NOT NULL
);


ALTER TABLE "Ejercicio 2".guia OWNER TO postgres;

--
-- Name: guia_guiaNo_seq; Type: SEQUENCE; Schema: Ejercicio 2; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 2"."guia_guiaNo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 2"."guia_guiaNo_seq" OWNER TO postgres;

--
-- Name: guia_guiaNo_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 2; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 2"."guia_guiaNo_seq" OWNED BY "Ejercicio 2".guia."guiaNo";


--
-- Name: paquete; Type: TABLE; Schema: Ejercicio 2; Owner: postgres
--

CREATE TABLE "Ejercicio 2".paquete (
    id integer NOT NULL,
    codigo character varying NOT NULL,
    nombre character varying NOT NULL,
    descripcion character varying NOT NULL,
    "idTipoPquete" integer NOT NULL,
    "idGuia" integer NOT NULL
);


ALTER TABLE "Ejercicio 2".paquete OWNER TO postgres;

--
-- Name: paquete_id_seq; Type: SEQUENCE; Schema: Ejercicio 2; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 2".paquete_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 2".paquete_id_seq OWNER TO postgres;

--
-- Name: paquete_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 2; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 2".paquete_id_seq OWNED BY "Ejercicio 2".paquete.id;


--
-- Name: telefonoDestinatario; Type: TABLE; Schema: Ejercicio 2; Owner: postgres
--

CREATE TABLE "Ejercicio 2"."telefonoDestinatario" (
    id integer NOT NULL,
    "destTel" character varying NOT NULL,
    "idDestinatario" integer NOT NULL
);


ALTER TABLE "Ejercicio 2"."telefonoDestinatario" OWNER TO postgres;

--
-- Name: telefonoDestinatario_id_seq; Type: SEQUENCE; Schema: Ejercicio 2; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 2"."telefonoDestinatario_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 2"."telefonoDestinatario_id_seq" OWNER TO postgres;

--
-- Name: telefonoDestinatario_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 2; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 2"."telefonoDestinatario_id_seq" OWNED BY "Ejercicio 2"."telefonoDestinatario".id;


--
-- Name: tipoContacto; Type: TABLE; Schema: Ejercicio 2; Owner: postgres
--

CREATE TABLE "Ejercicio 2"."tipoContacto" (
    id integer NOT NULL,
    tipo character varying NOT NULL
);


ALTER TABLE "Ejercicio 2"."tipoContacto" OWNER TO postgres;

--
-- Name: tipoContacto_id_seq; Type: SEQUENCE; Schema: Ejercicio 2; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 2"."tipoContacto_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 2"."tipoContacto_id_seq" OWNER TO postgres;

--
-- Name: tipoContacto_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 2; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 2"."tipoContacto_id_seq" OWNED BY "Ejercicio 2"."tipoContacto".id;


--
-- Name: tipoPquete; Type: TABLE; Schema: Ejercicio 2; Owner: postgres
--

CREATE TABLE "Ejercicio 2"."tipoPquete" (
    id integer NOT NULL,
    tipo character varying NOT NULL
);


ALTER TABLE "Ejercicio 2"."tipoPquete" OWNER TO postgres;

--
-- Name: tipoPquete_id_seq; Type: SEQUENCE; Schema: Ejercicio 2; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 2"."tipoPquete_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 2"."tipoPquete_id_seq" OWNER TO postgres;

--
-- Name: tipoPquete_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 2; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 2"."tipoPquete_id_seq" OWNED BY "Ejercicio 2"."tipoPquete".id;


--
-- Name: actor; Type: TABLE; Schema: Ejercicio 3; Owner: postgres
--

CREATE TABLE "Ejercicio 3".actor (
    id integer NOT NULL,
    "codActor" character varying,
    "nomActor" character varying,
    "fechanacActor" date
);


ALTER TABLE "Ejercicio 3".actor OWNER TO postgres;

--
-- Name: actorAuxiliar; Type: TABLE; Schema: Ejercicio 3; Owner: postgres
--

CREATE TABLE "Ejercicio 3"."actorAuxiliar" (
    id integer NOT NULL,
    "idActor" integer,
    "idPelicula" integer
);


ALTER TABLE "Ejercicio 3"."actorAuxiliar" OWNER TO postgres;

--
-- Name: actorAuxiliar_id_seq; Type: SEQUENCE; Schema: Ejercicio 3; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 3"."actorAuxiliar_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 3"."actorAuxiliar_id_seq" OWNER TO postgres;

--
-- Name: actorAuxiliar_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 3; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 3"."actorAuxiliar_id_seq" OWNED BY "Ejercicio 3"."actorAuxiliar".id;


--
-- Name: actor_id_seq; Type: SEQUENCE; Schema: Ejercicio 3; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 3".actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 3".actor_id_seq OWNER TO postgres;

--
-- Name: actor_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 3; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 3".actor_id_seq OWNED BY "Ejercicio 3".actor.id;


--
-- Name: alquilerPeliculas; Type: TABLE; Schema: Ejercicio 3; Owner: postgres
--

CREATE TABLE "Ejercicio 3"."alquilerPeliculas" (
    id integer NOT NULL,
    "clienteMembrecia" integer,
    "codAlquiler" integer,
    "fechaAlquiler" date,
    "fechaDev" date,
    "valorAlquiler" numeric,
    cantidad integer
);


ALTER TABLE "Ejercicio 3"."alquilerPeliculas" OWNER TO postgres;

--
-- Name: alquilerPeliculas_id_seq; Type: SEQUENCE; Schema: Ejercicio 3; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 3"."alquilerPeliculas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 3"."alquilerPeliculas_id_seq" OWNER TO postgres;

--
-- Name: alquilerPeliculas_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 3; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 3"."alquilerPeliculas_id_seq" OWNED BY "Ejercicio 3"."alquilerPeliculas".id;


--
-- Name: auxAlquiler; Type: TABLE; Schema: Ejercicio 3; Owner: postgres
--

CREATE TABLE "Ejercicio 3"."auxAlquiler" (
    id integer NOT NULL,
    "idAlquiler" integer,
    "idCassette" integer
);


ALTER TABLE "Ejercicio 3"."auxAlquiler" OWNER TO postgres;

--
-- Name: auxAlquiler_id_seq; Type: SEQUENCE; Schema: Ejercicio 3; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 3"."auxAlquiler_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 3"."auxAlquiler_id_seq" OWNER TO postgres;

--
-- Name: auxAlquiler_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 3; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 3"."auxAlquiler_id_seq" OWNED BY "Ejercicio 3"."auxAlquiler".id;


--
-- Name: cassette; Type: TABLE; Schema: Ejercicio 3; Owner: postgres
--

CREATE TABLE "Ejercicio 3".cassette (
    id integer NOT NULL,
    "codCassette" character varying,
    "numCopias" integer,
    "idFormatoCassette" integer,
    "idPelicula" integer
);


ALTER TABLE "Ejercicio 3".cassette OWNER TO postgres;

--
-- Name: cassette_id_seq; Type: SEQUENCE; Schema: Ejercicio 3; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 3".cassette_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 3".cassette_id_seq OWNER TO postgres;

--
-- Name: cassette_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 3; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 3".cassette_id_seq OWNED BY "Ejercicio 3".cassette.id;


--
-- Name: cliente; Type: TABLE; Schema: Ejercicio 3; Owner: postgres
--

CREATE TABLE "Ejercicio 3".cliente (
    "numMembresia" integer NOT NULL,
    "codCliente" character varying,
    "nomCliente" character varying
);


ALTER TABLE "Ejercicio 3".cliente OWNER TO postgres;

--
-- Name: cliente_numMembresia_seq; Type: SEQUENCE; Schema: Ejercicio 3; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 3"."cliente_numMembresia_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 3"."cliente_numMembresia_seq" OWNER TO postgres;

--
-- Name: cliente_numMembresia_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 3; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 3"."cliente_numMembresia_seq" OWNED BY "Ejercicio 3".cliente."numMembresia";


--
-- Name: direccionCliente; Type: TABLE; Schema: Ejercicio 3; Owner: postgres
--

CREATE TABLE "Ejercicio 3"."direccionCliente" (
    id integer NOT NULL,
    "dirCliente" character varying,
    "clienteMembrecia" integer
);


ALTER TABLE "Ejercicio 3"."direccionCliente" OWNER TO postgres;

--
-- Name: direccionCliente_id_seq; Type: SEQUENCE; Schema: Ejercicio 3; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 3"."direccionCliente_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 3"."direccionCliente_id_seq" OWNER TO postgres;

--
-- Name: direccionCliente_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 3; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 3"."direccionCliente_id_seq" OWNED BY "Ejercicio 3"."direccionCliente".id;


--
-- Name: formatoCassette; Type: TABLE; Schema: Ejercicio 3; Owner: postgres
--

CREATE TABLE "Ejercicio 3"."formatoCassette" (
    id integer NOT NULL,
    formato character varying
);


ALTER TABLE "Ejercicio 3"."formatoCassette" OWNER TO postgres;

--
-- Name: formatoCassette_id_seq; Type: SEQUENCE; Schema: Ejercicio 3; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 3"."formatoCassette_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 3"."formatoCassette_id_seq" OWNER TO postgres;

--
-- Name: formatoCassette_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 3; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 3"."formatoCassette_id_seq" OWNED BY "Ejercicio 3"."formatoCassette".id;


--
-- Name: pelicula; Type: TABLE; Schema: Ejercicio 3; Owner: postgres
--

CREATE TABLE "Ejercicio 3".pelicula (
    id integer NOT NULL,
    titulo character varying,
    "idPeliculaCategoria" integer,
    "idPeliculaTipo" integer
);


ALTER TABLE "Ejercicio 3".pelicula OWNER TO postgres;

--
-- Name: peliculaCategoria; Type: TABLE; Schema: Ejercicio 3; Owner: postgres
--

CREATE TABLE "Ejercicio 3"."peliculaCategoria" (
    id integer NOT NULL,
    categoria character varying
);


ALTER TABLE "Ejercicio 3"."peliculaCategoria" OWNER TO postgres;

--
-- Name: peliculaCategoria_id_seq; Type: SEQUENCE; Schema: Ejercicio 3; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 3"."peliculaCategoria_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 3"."peliculaCategoria_id_seq" OWNER TO postgres;

--
-- Name: peliculaCategoria_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 3; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 3"."peliculaCategoria_id_seq" OWNED BY "Ejercicio 3"."peliculaCategoria".id;


--
-- Name: peliculaTipo; Type: TABLE; Schema: Ejercicio 3; Owner: postgres
--

CREATE TABLE "Ejercicio 3"."peliculaTipo" (
    id integer NOT NULL,
    "codTipo" character varying
);


ALTER TABLE "Ejercicio 3"."peliculaTipo" OWNER TO postgres;

--
-- Name: peliculaTipo_id_seq; Type: SEQUENCE; Schema: Ejercicio 3; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 3"."peliculaTipo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 3"."peliculaTipo_id_seq" OWNER TO postgres;

--
-- Name: peliculaTipo_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 3; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 3"."peliculaTipo_id_seq" OWNED BY "Ejercicio 3"."peliculaTipo".id;


--
-- Name: pelicula_id_seq; Type: SEQUENCE; Schema: Ejercicio 3; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 3".pelicula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 3".pelicula_id_seq OWNER TO postgres;

--
-- Name: pelicula_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 3; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 3".pelicula_id_seq OWNED BY "Ejercicio 3".pelicula.id;


--
-- Name: telefonoCliente; Type: TABLE; Schema: Ejercicio 3; Owner: postgres
--

CREATE TABLE "Ejercicio 3"."telefonoCliente" (
    id integer NOT NULL,
    "telefonoCliente" character varying,
    "clienteMembrecia" integer
);


ALTER TABLE "Ejercicio 3"."telefonoCliente" OWNER TO postgres;

--
-- Name: telefonoCliente_id_seq; Type: SEQUENCE; Schema: Ejercicio 3; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 3"."telefonoCliente_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 3"."telefonoCliente_id_seq" OWNER TO postgres;

--
-- Name: telefonoCliente_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 3; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 3"."telefonoCliente_id_seq" OWNED BY "Ejercicio 3"."telefonoCliente".id;


--
-- Name: ColegioProfesor; Type: TABLE; Schema: Ejercicio 4; Owner: postgres
--

CREATE TABLE "Ejercicio 4"."ColegioProfesor" (
    id integer NOT NULL,
    "idColegio" integer NOT NULL,
    "idProfesor" integer NOT NULL
);


ALTER TABLE "Ejercicio 4"."ColegioProfesor" OWNER TO postgres;

--
-- Name: ColegioProfesor_id_seq; Type: SEQUENCE; Schema: Ejercicio 4; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 4"."ColegioProfesor_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 4"."ColegioProfesor_id_seq" OWNER TO postgres;

--
-- Name: ColegioProfesor_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 4; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 4"."ColegioProfesor_id_seq" OWNED BY "Ejercicio 4"."ColegioProfesor".id;


--
-- Name: asignatura; Type: TABLE; Schema: Ejercicio 4; Owner: postgres
--

CREATE TABLE "Ejercicio 4".asignatura (
    id integer NOT NULL,
    "asignaturaNombre" character varying NOT NULL
);


ALTER TABLE "Ejercicio 4".asignatura OWNER TO postgres;

--
-- Name: asignatura_id_seq; Type: SEQUENCE; Schema: Ejercicio 4; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 4".asignatura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 4".asignatura_id_seq OWNER TO postgres;

--
-- Name: asignatura_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 4; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 4".asignatura_id_seq OWNED BY "Ejercicio 4".asignatura.id;


--
-- Name: aula; Type: TABLE; Schema: Ejercicio 4; Owner: postgres
--

CREATE TABLE "Ejercicio 4".aula (
    id integer NOT NULL,
    "nombreAula" character varying NOT NULL
);


ALTER TABLE "Ejercicio 4".aula OWNER TO postgres;

--
-- Name: aula_id_seq; Type: SEQUENCE; Schema: Ejercicio 4; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 4".aula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 4".aula_id_seq OWNER TO postgres;

--
-- Name: aula_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 4; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 4".aula_id_seq OWNED BY "Ejercicio 4".aula.id;


--
-- Name: colegio; Type: TABLE; Schema: Ejercicio 4; Owner: postgres
--

CREATE TABLE "Ejercicio 4".colegio (
    id integer NOT NULL,
    "nombreColegio" character varying NOT NULL
);


ALTER TABLE "Ejercicio 4".colegio OWNER TO postgres;

--
-- Name: colegio_id_seq; Type: SEQUENCE; Schema: Ejercicio 4; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 4".colegio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 4".colegio_id_seq OWNER TO postgres;

--
-- Name: colegio_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 4; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 4".colegio_id_seq OWNED BY "Ejercicio 4".colegio.id;


--
-- Name: curso; Type: TABLE; Schema: Ejercicio 4; Owner: postgres
--

CREATE TABLE "Ejercicio 4".curso (
    id integer NOT NULL,
    "nombreCurso" character varying NOT NULL
);


ALTER TABLE "Ejercicio 4".curso OWNER TO postgres;

--
-- Name: curso_id_seq; Type: SEQUENCE; Schema: Ejercicio 4; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 4".curso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 4".curso_id_seq OWNER TO postgres;

--
-- Name: curso_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 4; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 4".curso_id_seq OWNED BY "Ejercicio 4".curso.id;


--
-- Name: detallePrestamo; Type: TABLE; Schema: Ejercicio 4; Owner: postgres
--

CREATE TABLE "Ejercicio 4"."detallePrestamo" (
    id integer NOT NULL,
    "idPrestamo" integer NOT NULL,
    "idLibro" integer NOT NULL
);


ALTER TABLE "Ejercicio 4"."detallePrestamo" OWNER TO postgres;

--
-- Name: detallePrestamo_id_seq; Type: SEQUENCE; Schema: Ejercicio 4; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 4"."detallePrestamo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 4"."detallePrestamo_id_seq" OWNER TO postgres;

--
-- Name: detallePrestamo_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 4; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 4"."detallePrestamo_id_seq" OWNED BY "Ejercicio 4"."detallePrestamo".id;


--
-- Name: editorial; Type: TABLE; Schema: Ejercicio 4; Owner: postgres
--

CREATE TABLE "Ejercicio 4".editorial (
    id integer NOT NULL,
    "editorialNombre" character varying NOT NULL
);


ALTER TABLE "Ejercicio 4".editorial OWNER TO postgres;

--
-- Name: editorial_id_seq; Type: SEQUENCE; Schema: Ejercicio 4; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 4".editorial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 4".editorial_id_seq OWNER TO postgres;

--
-- Name: editorial_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 4; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 4".editorial_id_seq OWNED BY "Ejercicio 4".editorial.id;


--
-- Name: libro; Type: TABLE; Schema: Ejercicio 4; Owner: postgres
--

CREATE TABLE "Ejercicio 4".libro (
    id integer NOT NULL,
    "libroNombre" character varying NOT NULL,
    "idEditorial" integer NOT NULL
);


ALTER TABLE "Ejercicio 4".libro OWNER TO postgres;

--
-- Name: libro_id_seq; Type: SEQUENCE; Schema: Ejercicio 4; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 4".libro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 4".libro_id_seq OWNER TO postgres;

--
-- Name: libro_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 4; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 4".libro_id_seq OWNED BY "Ejercicio 4".libro.id;


--
-- Name: prestamo; Type: TABLE; Schema: Ejercicio 4; Owner: postgres
--

CREATE TABLE "Ejercicio 4".prestamo (
    id integer NOT NULL,
    "idProfesor" integer NOT NULL,
    "fechaPrestamo" date NOT NULL,
    "idCurso" integer NOT NULL,
    "idAula" integer NOT NULL,
    "idAsignatura" integer NOT NULL
);


ALTER TABLE "Ejercicio 4".prestamo OWNER TO postgres;

--
-- Name: prestamo_id_seq; Type: SEQUENCE; Schema: Ejercicio 4; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 4".prestamo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 4".prestamo_id_seq OWNER TO postgres;

--
-- Name: prestamo_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 4; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 4".prestamo_id_seq OWNED BY "Ejercicio 4".prestamo.id;


--
-- Name: profesor; Type: TABLE; Schema: Ejercicio 4; Owner: postgres
--

CREATE TABLE "Ejercicio 4".profesor (
    id integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE "Ejercicio 4".profesor OWNER TO postgres;

--
-- Name: profesor_id_seq; Type: SEQUENCE; Schema: Ejercicio 4; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 4".profesor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 4".profesor_id_seq OWNER TO postgres;

--
-- Name: profesor_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 4; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 4".profesor_id_seq OWNED BY "Ejercicio 4".profesor.id;


--
-- Name: alumno; Type: TABLE; Schema: Ejercicio 5; Owner: postgres
--

CREATE TABLE "Ejercicio 5".alumno (
    id integer NOT NULL,
    "codigoAlumno" integer NOT NULL,
    nombre character varying NOT NULL,
    "idEspecialidad" integer NOT NULL
);


ALTER TABLE "Ejercicio 5".alumno OWNER TO postgres;

--
-- Name: alumno_id_seq; Type: SEQUENCE; Schema: Ejercicio 5; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 5".alumno_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 5".alumno_id_seq OWNER TO postgres;

--
-- Name: alumno_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 5; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 5".alumno_id_seq OWNED BY "Ejercicio 5".alumno.id;


--
-- Name: curso; Type: TABLE; Schema: Ejercicio 5; Owner: postgres
--

CREATE TABLE "Ejercicio 5".curso (
    id integer NOT NULL,
    "codigoCurso" character varying NOT NULL,
    "nombreCurso" character varying NOT NULL,
    "idGrado" integer NOT NULL
);


ALTER TABLE "Ejercicio 5".curso OWNER TO postgres;

--
-- Name: cursoAlumno; Type: TABLE; Schema: Ejercicio 5; Owner: postgres
--

CREATE TABLE "Ejercicio 5"."cursoAlumno" (
    id integer NOT NULL,
    "idCurso" integer NOT NULL,
    "idAlumno" integer NOT NULL
);


ALTER TABLE "Ejercicio 5"."cursoAlumno" OWNER TO postgres;

--
-- Name: cursoAlumno_id_seq; Type: SEQUENCE; Schema: Ejercicio 5; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 5"."cursoAlumno_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 5"."cursoAlumno_id_seq" OWNER TO postgres;

--
-- Name: cursoAlumno_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 5; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 5"."cursoAlumno_id_seq" OWNED BY "Ejercicio 5"."cursoAlumno".id;


--
-- Name: cursoDocente; Type: TABLE; Schema: Ejercicio 5; Owner: postgres
--

CREATE TABLE "Ejercicio 5"."cursoDocente" (
    id integer NOT NULL,
    "idCurso" integer NOT NULL,
    "idDocente" integer NOT NULL
);


ALTER TABLE "Ejercicio 5"."cursoDocente" OWNER TO postgres;

--
-- Name: cursoDocente_id_seq; Type: SEQUENCE; Schema: Ejercicio 5; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 5"."cursoDocente_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 5"."cursoDocente_id_seq" OWNER TO postgres;

--
-- Name: cursoDocente_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 5; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 5"."cursoDocente_id_seq" OWNED BY "Ejercicio 5"."cursoDocente".id;


--
-- Name: cursoGrado; Type: TABLE; Schema: Ejercicio 5; Owner: postgres
--

CREATE TABLE "Ejercicio 5"."cursoGrado" (
    id integer NOT NULL,
    "idCurso" integer NOT NULL,
    "idSeccion" integer NOT NULL
);


ALTER TABLE "Ejercicio 5"."cursoGrado" OWNER TO postgres;

--
-- Name: cursoGrado_id_seq; Type: SEQUENCE; Schema: Ejercicio 5; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 5"."cursoGrado_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 5"."cursoGrado_id_seq" OWNER TO postgres;

--
-- Name: cursoGrado_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 5; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 5"."cursoGrado_id_seq" OWNED BY "Ejercicio 5"."cursoGrado".id;


--
-- Name: curso_id_seq; Type: SEQUENCE; Schema: Ejercicio 5; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 5".curso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 5".curso_id_seq OWNER TO postgres;

--
-- Name: curso_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 5; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 5".curso_id_seq OWNED BY "Ejercicio 5".curso.id;


--
-- Name: docente; Type: TABLE; Schema: Ejercicio 5; Owner: postgres
--

CREATE TABLE "Ejercicio 5".docente (
    id integer NOT NULL,
    nombre character varying NOT NULL,
    "idOficina" integer NOT NULL
);


ALTER TABLE "Ejercicio 5".docente OWNER TO postgres;

--
-- Name: docente_id_seq; Type: SEQUENCE; Schema: Ejercicio 5; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 5".docente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 5".docente_id_seq OWNER TO postgres;

--
-- Name: docente_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 5; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 5".docente_id_seq OWNED BY "Ejercicio 5".docente.id;


--
-- Name: especialidad; Type: TABLE; Schema: Ejercicio 5; Owner: postgres
--

CREATE TABLE "Ejercicio 5".especialidad (
    id integer NOT NULL,
    "nombreEspe" character varying NOT NULL
);


ALTER TABLE "Ejercicio 5".especialidad OWNER TO postgres;

--
-- Name: especialidad_id_seq; Type: SEQUENCE; Schema: Ejercicio 5; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 5".especialidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 5".especialidad_id_seq OWNER TO postgres;

--
-- Name: especialidad_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 5; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 5".especialidad_id_seq OWNED BY "Ejercicio 5".especialidad.id;


--
-- Name: oficina; Type: TABLE; Schema: Ejercicio 5; Owner: postgres
--

CREATE TABLE "Ejercicio 5".oficina (
    id integer NOT NULL,
    "codigoOficina" character varying NOT NULL
);


ALTER TABLE "Ejercicio 5".oficina OWNER TO postgres;

--
-- Name: oficina_id_seq; Type: SEQUENCE; Schema: Ejercicio 5; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 5".oficina_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 5".oficina_id_seq OWNER TO postgres;

--
-- Name: oficina_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 5; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 5".oficina_id_seq OWNED BY "Ejercicio 5".oficina.id;


--
-- Name: seccion; Type: TABLE; Schema: Ejercicio 5; Owner: postgres
--

CREATE TABLE "Ejercicio 5".seccion (
    id integer NOT NULL,
    "nombreGrado" character varying NOT NULL
);


ALTER TABLE "Ejercicio 5".seccion OWNER TO postgres;

--
-- Name: seccion_id_seq; Type: SEQUENCE; Schema: Ejercicio 5; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 5".seccion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 5".seccion_id_seq OWNER TO postgres;

--
-- Name: seccion_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 5; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 5".seccion_id_seq OWNED BY "Ejercicio 5".seccion.id;


--
-- Name: autor; Type: TABLE; Schema: Ejercicio 6; Owner: postgres
--

CREATE TABLE "Ejercicio 6".autor (
    id integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE "Ejercicio 6".autor OWNER TO postgres;

--
-- Name: autor_id_seq; Type: SEQUENCE; Schema: Ejercicio 6; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 6".autor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 6".autor_id_seq OWNER TO postgres;

--
-- Name: autor_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 6; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 6".autor_id_seq OWNED BY "Ejercicio 6".autor.id;


--
-- Name: editorial; Type: TABLE; Schema: Ejercicio 6; Owner: postgres
--

CREATE TABLE "Ejercicio 6".editorial (
    id integer NOT NULL,
    "nombreEdi" character varying NOT NULL
);


ALTER TABLE "Ejercicio 6".editorial OWNER TO postgres;

--
-- Name: editorial_id_seq; Type: SEQUENCE; Schema: Ejercicio 6; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 6".editorial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 6".editorial_id_seq OWNER TO postgres;

--
-- Name: editorial_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 6; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 6".editorial_id_seq OWNED BY "Ejercicio 6".editorial.id;


--
-- Name: lector; Type: TABLE; Schema: Ejercicio 6; Owner: postgres
--

CREATE TABLE "Ejercicio 6".lector (
    id integer NOT NULL,
    "nombreLector" character varying NOT NULL
);


ALTER TABLE "Ejercicio 6".lector OWNER TO postgres;

--
-- Name: lector_id_seq; Type: SEQUENCE; Schema: Ejercicio 6; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 6".lector_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 6".lector_id_seq OWNER TO postgres;

--
-- Name: lector_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 6; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 6".lector_id_seq OWNED BY "Ejercicio 6".lector.id;


--
-- Name: libro; Type: TABLE; Schema: Ejercicio 6; Owner: postgres
--

CREATE TABLE "Ejercicio 6".libro (
    id integer NOT NULL,
    "codLibro" integer NOT NULL,
    titulo character varying NOT NULL,
    "idEditorial" integer NOT NULL,
    "idPrestamo" integer NOT NULL
);


ALTER TABLE "Ejercicio 6".libro OWNER TO postgres;

--
-- Name: libroAutor; Type: TABLE; Schema: Ejercicio 6; Owner: postgres
--

CREATE TABLE "Ejercicio 6"."libroAutor" (
    id integer NOT NULL,
    "idLibro" integer NOT NULL,
    "idAutor" integer NOT NULL
);


ALTER TABLE "Ejercicio 6"."libroAutor" OWNER TO postgres;

--
-- Name: libroAutor_id_seq; Type: SEQUENCE; Schema: Ejercicio 6; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 6"."libroAutor_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 6"."libroAutor_id_seq" OWNER TO postgres;

--
-- Name: libroAutor_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 6; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 6"."libroAutor_id_seq" OWNED BY "Ejercicio 6"."libroAutor".id;


--
-- Name: libroPrestamo; Type: TABLE; Schema: Ejercicio 6; Owner: postgres
--

CREATE TABLE "Ejercicio 6"."libroPrestamo" (
    id integer NOT NULL,
    "idLibro" integer NOT NULL,
    "idPrestamo" integer NOT NULL
);


ALTER TABLE "Ejercicio 6"."libroPrestamo" OWNER TO postgres;

--
-- Name: libroPrestamo_id_seq; Type: SEQUENCE; Schema: Ejercicio 6; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 6"."libroPrestamo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 6"."libroPrestamo_id_seq" OWNER TO postgres;

--
-- Name: libroPrestamo_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 6; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 6"."libroPrestamo_id_seq" OWNED BY "Ejercicio 6"."libroPrestamo".id;


--
-- Name: libro_id_seq; Type: SEQUENCE; Schema: Ejercicio 6; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 6".libro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 6".libro_id_seq OWNER TO postgres;

--
-- Name: libro_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 6; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 6".libro_id_seq OWNED BY "Ejercicio 6".libro.id;


--
-- Name: prestamo; Type: TABLE; Schema: Ejercicio 6; Owner: postgres
--

CREATE TABLE "Ejercicio 6".prestamo (
    id integer NOT NULL,
    "fechaDev" date NOT NULL,
    "idLector" integer NOT NULL
);


ALTER TABLE "Ejercicio 6".prestamo OWNER TO postgres;

--
-- Name: prestamo_id_seq; Type: SEQUENCE; Schema: Ejercicio 6; Owner: postgres
--

CREATE SEQUENCE "Ejercicio 6".prestamo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Ejercicio 6".prestamo_id_seq OWNER TO postgres;

--
-- Name: prestamo_id_seq; Type: SEQUENCE OWNED BY; Schema: Ejercicio 6; Owner: postgres
--

ALTER SEQUENCE "Ejercicio 6".prestamo_id_seq OWNED BY "Ejercicio 6".prestamo.id;


--
-- Name: categoriaProducto idCategoria; Type: DEFAULT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1"."categoriaProducto" ALTER COLUMN "idCategoria" SET DEFAULT nextval('"Ejercicio 1"."categoriaProducto_idCategoria_seq"'::regclass);


--
-- Name: ciudad id; Type: DEFAULT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".ciudad ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 1".ciudad_id_seq'::regclass);


--
-- Name: cliente id; Type: DEFAULT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".cliente ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 1".cliente_id_seq'::regclass);


--
-- Name: direccion id; Type: DEFAULT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".direccion ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 1".direccion_id_seq'::regclass);


--
-- Name: factura numFac; Type: DEFAULT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".factura ALTER COLUMN "numFac" SET DEFAULT nextval('"Ejercicio 1"."factura_numFac_seq"'::regclass);


--
-- Name: producto id; Type: DEFAULT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".producto ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 1".producto_id_seq'::regclass);


--
-- Name: telefonoCliente id; Type: DEFAULT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1"."telefonoCliente" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 1"."telefonoCliente_id_seq"'::regclass);


--
-- Name: actividadEmpresa id; Type: DEFAULT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2"."actividadEmpresa" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 2"."actividadEmpresa_id_seq"'::regclass);


--
-- Name: ciudad id; Type: DEFAULT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".ciudad ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 2".ciudad_id_seq'::regclass);


--
-- Name: contacto id; Type: DEFAULT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".contacto ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 2".contacto_id_seq'::regclass);


--
-- Name: destinatario id; Type: DEFAULT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".destinatario ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 2".destinatario_id_seq'::regclass);


--
-- Name: direccionEmpresa id; Type: DEFAULT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2"."direccionEmpresa" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 2"."direccionEmpresa_id_seq"'::regclass);


--
-- Name: empresa id; Type: DEFAULT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".empresa ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 2".empresa_id_seq'::regclass);


--
-- Name: guia guiaNo; Type: DEFAULT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".guia ALTER COLUMN "guiaNo" SET DEFAULT nextval('"Ejercicio 2"."guia_guiaNo_seq"'::regclass);


--
-- Name: paquete id; Type: DEFAULT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".paquete ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 2".paquete_id_seq'::regclass);


--
-- Name: telefonoDestinatario id; Type: DEFAULT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2"."telefonoDestinatario" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 2"."telefonoDestinatario_id_seq"'::regclass);


--
-- Name: tipoContacto id; Type: DEFAULT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2"."tipoContacto" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 2"."tipoContacto_id_seq"'::regclass);


--
-- Name: tipoPquete id; Type: DEFAULT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2"."tipoPquete" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 2"."tipoPquete_id_seq"'::regclass);


--
-- Name: actor id; Type: DEFAULT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3".actor ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 3".actor_id_seq'::regclass);


--
-- Name: actorAuxiliar id; Type: DEFAULT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."actorAuxiliar" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 3"."actorAuxiliar_id_seq"'::regclass);


--
-- Name: alquilerPeliculas id; Type: DEFAULT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."alquilerPeliculas" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 3"."alquilerPeliculas_id_seq"'::regclass);


--
-- Name: auxAlquiler id; Type: DEFAULT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."auxAlquiler" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 3"."auxAlquiler_id_seq"'::regclass);


--
-- Name: cassette id; Type: DEFAULT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3".cassette ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 3".cassette_id_seq'::regclass);


--
-- Name: cliente numMembresia; Type: DEFAULT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3".cliente ALTER COLUMN "numMembresia" SET DEFAULT nextval('"Ejercicio 3"."cliente_numMembresia_seq"'::regclass);


--
-- Name: direccionCliente id; Type: DEFAULT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."direccionCliente" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 3"."direccionCliente_id_seq"'::regclass);


--
-- Name: formatoCassette id; Type: DEFAULT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."formatoCassette" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 3"."formatoCassette_id_seq"'::regclass);


--
-- Name: pelicula id; Type: DEFAULT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3".pelicula ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 3".pelicula_id_seq'::regclass);


--
-- Name: peliculaCategoria id; Type: DEFAULT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."peliculaCategoria" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 3"."peliculaCategoria_id_seq"'::regclass);


--
-- Name: peliculaTipo id; Type: DEFAULT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."peliculaTipo" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 3"."peliculaTipo_id_seq"'::regclass);


--
-- Name: telefonoCliente id; Type: DEFAULT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."telefonoCliente" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 3"."telefonoCliente_id_seq"'::regclass);


--
-- Name: ColegioProfesor id; Type: DEFAULT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4"."ColegioProfesor" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 4"."ColegioProfesor_id_seq"'::regclass);


--
-- Name: asignatura id; Type: DEFAULT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".asignatura ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 4".asignatura_id_seq'::regclass);


--
-- Name: aula id; Type: DEFAULT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".aula ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 4".aula_id_seq'::regclass);


--
-- Name: colegio id; Type: DEFAULT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".colegio ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 4".colegio_id_seq'::regclass);


--
-- Name: curso id; Type: DEFAULT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".curso ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 4".curso_id_seq'::regclass);


--
-- Name: detallePrestamo id; Type: DEFAULT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4"."detallePrestamo" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 4"."detallePrestamo_id_seq"'::regclass);


--
-- Name: editorial id; Type: DEFAULT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".editorial ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 4".editorial_id_seq'::regclass);


--
-- Name: libro id; Type: DEFAULT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".libro ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 4".libro_id_seq'::regclass);


--
-- Name: prestamo id; Type: DEFAULT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".prestamo ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 4".prestamo_id_seq'::regclass);


--
-- Name: profesor id; Type: DEFAULT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".profesor ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 4".profesor_id_seq'::regclass);


--
-- Name: alumno id; Type: DEFAULT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5".alumno ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 5".alumno_id_seq'::regclass);


--
-- Name: curso id; Type: DEFAULT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5".curso ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 5".curso_id_seq'::regclass);


--
-- Name: cursoAlumno id; Type: DEFAULT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5"."cursoAlumno" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 5"."cursoAlumno_id_seq"'::regclass);


--
-- Name: cursoDocente id; Type: DEFAULT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5"."cursoDocente" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 5"."cursoDocente_id_seq"'::regclass);


--
-- Name: cursoGrado id; Type: DEFAULT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5"."cursoGrado" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 5"."cursoGrado_id_seq"'::regclass);


--
-- Name: docente id; Type: DEFAULT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5".docente ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 5".docente_id_seq'::regclass);


--
-- Name: especialidad id; Type: DEFAULT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5".especialidad ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 5".especialidad_id_seq'::regclass);


--
-- Name: oficina id; Type: DEFAULT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5".oficina ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 5".oficina_id_seq'::regclass);


--
-- Name: seccion id; Type: DEFAULT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5".seccion ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 5".seccion_id_seq'::regclass);


--
-- Name: autor id; Type: DEFAULT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6".autor ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 6".autor_id_seq'::regclass);


--
-- Name: editorial id; Type: DEFAULT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6".editorial ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 6".editorial_id_seq'::regclass);


--
-- Name: lector id; Type: DEFAULT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6".lector ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 6".lector_id_seq'::regclass);


--
-- Name: libro id; Type: DEFAULT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6".libro ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 6".libro_id_seq'::regclass);


--
-- Name: libroAutor id; Type: DEFAULT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6"."libroAutor" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 6"."libroAutor_id_seq"'::regclass);


--
-- Name: libroPrestamo id; Type: DEFAULT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6"."libroPrestamo" ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 6"."libroPrestamo_id_seq"'::regclass);


--
-- Name: prestamo id; Type: DEFAULT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6".prestamo ALTER COLUMN id SET DEFAULT nextval('"Ejercicio 6".prestamo_id_seq'::regclass);


--
-- Data for Name: categoriaProducto; Type: TABLE DATA; Schema: Ejercicio 1; Owner: postgres
--

COPY "Ejercicio 1"."categoriaProducto" ("idCategoria", categoria) FROM stdin;
1	Electrónica
2	Alimentos
3	Ropa
\.


--
-- Data for Name: ciudad; Type: TABLE DATA; Schema: Ejercicio 1; Owner: postgres
--

COPY "Ejercicio 1".ciudad (id, "ciudadCliente") FROM stdin;
1	Caracas
2	Maracaibo
3	Valencia
\.


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: Ejercicio 1; Owner: postgres
--

COPY "Ejercicio 1".cliente (id, "rifCliente", "nomCliente") FROM stdin;
1	J-12345678-9	Cliente Uno
2	J-98765432-1	Cliente Dos
3	V-11223344-5	Cliente Tres
\.


--
-- Data for Name: direccion; Type: TABLE DATA; Schema: Ejercicio 1; Owner: postgres
--

COPY "Ejercicio 1".direccion (id, "dirCliente", "idCiudad", "idCliente") FROM stdin;
1	Calle 1, Sector A	1	1
2	Av. 2, Edif B	2	2
3	Calle 3, Urb C	3	3
\.


--
-- Data for Name: factura; Type: TABLE DATA; Schema: Ejercicio 1; Owner: postgres
--

COPY "Ejercicio 1".factura ("numFac", "idCliente", "idProd", "cantProd", "fechaFac") FROM stdin;
1	1	1	1	2024-01-10
2	2	2	5	2024-02-15
3	3	3	2	2024-03-20
\.


--
-- Data for Name: producto; Type: TABLE DATA; Schema: Ejercicio 1; Owner: postgres
--

COPY "Ejercicio 1".producto (id, "codProd", "despProd", "valUnit", "idCategoria") FROM stdin;
1	P001	Televisor 32"	299.99	1
2	P002	Arroz 1kg	2.50	2
3	P003	Camisa XL	15.00	3
\.


--
-- Data for Name: telefonoCliente; Type: TABLE DATA; Schema: Ejercicio 1; Owner: postgres
--

COPY "Ejercicio 1"."telefonoCliente" (id, "idCliente", telefono) FROM stdin;
1	1	+58 212-555-0101
2	2	+58 261-555-0202
3	3	+58 241-555-0303
\.


--
-- Data for Name: actividadEmpresa; Type: TABLE DATA; Schema: Ejercicio 2; Owner: postgres
--

COPY "Ejercicio 2"."actividadEmpresa" (id, "orgnAct") FROM stdin;
1	Transporte
2	Comercio
3	Logística
\.


--
-- Data for Name: ciudad; Type: TABLE DATA; Schema: Ejercicio 2; Owner: postgres
--

COPY "Ejercicio 2".ciudad (id, "CodCiudad", "Ciudad") FROM stdin;
1	C001	Caracas
2	C002	Maracaibo
3	C003	Valencia
\.


--
-- Data for Name: contacto; Type: TABLE DATA; Schema: Ejercicio 2; Owner: postgres
--

COPY "Ejercicio 2".contacto (id, contacto, "idTipoContacto", "idEmpresa") FROM stdin;
1	Luis Martínez	1	1
2	Ana Díaz	2	2
3	Pedro Gómez	3	3
\.


--
-- Data for Name: destinatario; Type: TABLE DATA; Schema: Ejercicio 2; Owner: postgres
--

COPY "Ejercicio 2".destinatario (id, "destId", "destNom", "destDir", "idCiudad") FROM stdin;
1	D-100	Juan Perez	Calle Falsa 123	1
2	D-101	María Gómez	Av. Siempre Viva 742	2
3	D-102	Carlos Ruiz	Calle Luna 45	3
\.


--
-- Data for Name: direccionEmpresa; Type: TABLE DATA; Schema: Ejercicio 2; Owner: postgres
--

COPY "Ejercicio 2"."direccionEmpresa" (id, "orgnDir", "idEmpresa", "idCiudad") FROM stdin;
1	Av. Principal 1	1	1
2	Calle Comercio 20	2	2
3	Zona Industrial, Parcela 5	3	3
\.


--
-- Data for Name: empresa; Type: TABLE DATA; Schema: Ejercicio 2; Owner: postgres
--

COPY "Ejercicio 2".empresa (id, "orgnRif", "orgnNom", "idActividad") FROM stdin;
1	J-00000001-1	Transporte Express	1
2	J-00000002-2	Comercial Uno	2
3	J-00000003-3	Logistica SA	3
\.


--
-- Data for Name: guia; Type: TABLE DATA; Schema: Ejercicio 2; Owner: postgres
--

COPY "Ejercicio 2".guia ("guiaNo", "guiaFecha", "guiaHora", "idDestinatario", "idEmpresa", "valrFlete", "destKm") FROM stdin;
1	2024-01-10	08:30:00	1	1	50.00	12.5
2	2024-01-12	09:15:00	2	2	30.00	7.2
3	2024-01-15	14:00:00	3	3	100.00	45.0
\.


--
-- Data for Name: paquete; Type: TABLE DATA; Schema: Ejercicio 2; Owner: postgres
--

COPY "Ejercicio 2".paquete (id, codigo, nombre, descripcion, "idTipoPquete", "idGuia") FROM stdin;
1	PKG001	Caja Telefono	Caja pequeña con teléfono	1	1
2	PKG002	Saco Arroz	Saco de 25kg	2	2
3	PKG003	Mueble	Mueble tipo mesa	3	3
\.


--
-- Data for Name: telefonoDestinatario; Type: TABLE DATA; Schema: Ejercicio 2; Owner: postgres
--

COPY "Ejercicio 2"."telefonoDestinatario" (id, "destTel", "idDestinatario") FROM stdin;
1	+58 412-555-0001	1
2	+58 414-555-0002	2
3	+58 416-555-0003	3
\.


--
-- Data for Name: tipoContacto; Type: TABLE DATA; Schema: Ejercicio 2; Owner: postgres
--

COPY "Ejercicio 2"."tipoContacto" (id, tipo) FROM stdin;
3	Mail
1	Telefono
2	Celular
\.


--
-- Data for Name: tipoPquete; Type: TABLE DATA; Schema: Ejercicio 2; Owner: postgres
--

COPY "Ejercicio 2"."tipoPquete" (id, tipo) FROM stdin;
1	Pequeño
2	Mediano
3	Grande
\.


--
-- Data for Name: actor; Type: TABLE DATA; Schema: Ejercicio 3; Owner: postgres
--

COPY "Ejercicio 3".actor (id, "codActor", "nomActor", "fechanacActor") FROM stdin;
1	A001	Carlos Pérez	1980-05-10
2	A002	María López	1975-11-20
3	A003	Jorge Díaz	1990-02-28
\.


--
-- Data for Name: actorAuxiliar; Type: TABLE DATA; Schema: Ejercicio 3; Owner: postgres
--

COPY "Ejercicio 3"."actorAuxiliar" (id, "idActor", "idPelicula") FROM stdin;
1	1	1
2	2	2
3	3	3
\.


--
-- Data for Name: alquilerPeliculas; Type: TABLE DATA; Schema: Ejercicio 3; Owner: postgres
--

COPY "Ejercicio 3"."alquilerPeliculas" (id, "clienteMembrecia", "codAlquiler", "fechaAlquiler", "fechaDev", "valorAlquiler", cantidad) FROM stdin;
1	1	1001	2024-01-01	2024-01-05	10.00	1
2	2	1002	2024-02-01	2024-02-03	7.50	1
3	3	1003	2024-03-05	2024-03-07	12.00	2
\.


--
-- Data for Name: auxAlquiler; Type: TABLE DATA; Schema: Ejercicio 3; Owner: postgres
--

COPY "Ejercicio 3"."auxAlquiler" (id, "idAlquiler", "idCassette") FROM stdin;
1	1	1
2	2	2
3	3	3
\.


--
-- Data for Name: cassette; Type: TABLE DATA; Schema: Ejercicio 3; Owner: postgres
--

COPY "Ejercicio 3".cassette (id, "codCassette", "numCopias", "idFormatoCassette", "idPelicula") FROM stdin;
1	CASS001	2	1	1
2	CASS002	1	2	2
3	CASS003	3	3	3
\.


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: Ejercicio 3; Owner: postgres
--

COPY "Ejercicio 3".cliente ("numMembresia", "codCliente", "nomCliente") FROM stdin;
1	CL001	Juan Morales
2	CL002	Ana Ruiz
3	CL003	Pedro Sánchez
\.


--
-- Data for Name: direccionCliente; Type: TABLE DATA; Schema: Ejercicio 3; Owner: postgres
--

COPY "Ejercicio 3"."direccionCliente" (id, "dirCliente", "clienteMembrecia") FROM stdin;
1	Calle 1 #10	1
2	Av. 2 #20	2
3	Calle 3 #30	3
\.


--
-- Data for Name: formatoCassette; Type: TABLE DATA; Schema: Ejercicio 3; Owner: postgres
--

COPY "Ejercicio 3"."formatoCassette" (id, formato) FROM stdin;
1	VHS
2	DVD
3	Blu-Ray
\.


--
-- Data for Name: pelicula; Type: TABLE DATA; Schema: Ejercicio 3; Owner: postgres
--

COPY "Ejercicio 3".pelicula (id, titulo, "idPeliculaCategoria", "idPeliculaTipo") FROM stdin;
1	Rápido y Furioso	1	1
2	La risa eterna	2	2
3	Lágrimas del ayer	3	3
\.


--
-- Data for Name: peliculaCategoria; Type: TABLE DATA; Schema: Ejercicio 3; Owner: postgres
--

COPY "Ejercicio 3"."peliculaCategoria" (id, categoria) FROM stdin;
1	Acción
2	Comedia
3	Drama
\.


--
-- Data for Name: peliculaTipo; Type: TABLE DATA; Schema: Ejercicio 3; Owner: postgres
--

COPY "Ejercicio 3"."peliculaTipo" (id, "codTipo") FROM stdin;
1	T1
2	T2
3	T3
\.


--
-- Data for Name: telefonoCliente; Type: TABLE DATA; Schema: Ejercicio 3; Owner: postgres
--

COPY "Ejercicio 3"."telefonoCliente" (id, "telefonoCliente", "clienteMembrecia") FROM stdin;
1	+58 212-555-1111	1
2	+58 412-555-2222	2
3	+58 414-555-3333	3
\.


--
-- Data for Name: ColegioProfesor; Type: TABLE DATA; Schema: Ejercicio 4; Owner: postgres
--

COPY "Ejercicio 4"."ColegioProfesor" (id, "idColegio", "idProfesor") FROM stdin;
1	1	1
2	2	2
3	3	3
\.


--
-- Data for Name: asignatura; Type: TABLE DATA; Schema: Ejercicio 4; Owner: postgres
--

COPY "Ejercicio 4".asignatura (id, "asignaturaNombre") FROM stdin;
1	Matemáticas
2	Historia
3	Ciencias
\.


--
-- Data for Name: aula; Type: TABLE DATA; Schema: Ejercicio 4; Owner: postgres
--

COPY "Ejercicio 4".aula (id, "nombreAula") FROM stdin;
1	Aula 101
2	Aula 202
3	Aula 303
\.


--
-- Data for Name: colegio; Type: TABLE DATA; Schema: Ejercicio 4; Owner: postgres
--

COPY "Ejercicio 4".colegio (id, "nombreColegio") FROM stdin;
1	Colegio San Juan
2	Colegio La Paz
3	Colegio Santa María
\.


--
-- Data for Name: curso; Type: TABLE DATA; Schema: Ejercicio 4; Owner: postgres
--

COPY "Ejercicio 4".curso (id, "nombreCurso") FROM stdin;
1	Curso 1
2	Curso 2
3	Curso 3
\.


--
-- Data for Name: detallePrestamo; Type: TABLE DATA; Schema: Ejercicio 4; Owner: postgres
--

COPY "Ejercicio 4"."detallePrestamo" (id, "idPrestamo", "idLibro") FROM stdin;
1	1	1
2	2	2
3	3	3
\.


--
-- Data for Name: editorial; Type: TABLE DATA; Schema: Ejercicio 4; Owner: postgres
--

COPY "Ejercicio 4".editorial (id, "editorialNombre") FROM stdin;
1	Editorial Alfa
2	Editorial Beta
3	Editorial Gamma
\.


--
-- Data for Name: libro; Type: TABLE DATA; Schema: Ejercicio 4; Owner: postgres
--

COPY "Ejercicio 4".libro (id, "libroNombre", "idEditorial") FROM stdin;
1	Álgebra Básica	1
2	Historia Universal	2
3	Ciencias Naturales	3
\.


--
-- Data for Name: prestamo; Type: TABLE DATA; Schema: Ejercicio 4; Owner: postgres
--

COPY "Ejercicio 4".prestamo (id, "idProfesor", "fechaPrestamo", "idCurso", "idAula", "idAsignatura") FROM stdin;
1	1	2024-01-15	1	1	1
2	2	2024-02-20	2	2	2
3	3	2024-03-25	3	3	3
\.


--
-- Data for Name: profesor; Type: TABLE DATA; Schema: Ejercicio 4; Owner: postgres
--

COPY "Ejercicio 4".profesor (id, nombre) FROM stdin;
1	Juan Perez
2	María Gomez
3	Luis Fernández
\.


--
-- Data for Name: alumno; Type: TABLE DATA; Schema: Ejercicio 5; Owner: postgres
--

COPY "Ejercicio 5".alumno (id, "codigoAlumno", nombre, "idEspecialidad") FROM stdin;
1	1001	Juan Gómez	1
2	1002	Carla Ruiz	2
3	1003	Diego Fernández	3
\.


--
-- Data for Name: curso; Type: TABLE DATA; Schema: Ejercicio 5; Owner: postgres
--

COPY "Ejercicio 5".curso (id, "codigoCurso", "nombreCurso", "idGrado") FROM stdin;
1	C-01	Álgebra	1
2	C-02	Física I	2
3	C-03	Historia Moderna	3
\.


--
-- Data for Name: cursoAlumno; Type: TABLE DATA; Schema: Ejercicio 5; Owner: postgres
--

COPY "Ejercicio 5"."cursoAlumno" (id, "idCurso", "idAlumno") FROM stdin;
1	1	1
2	2	2
3	3	3
\.


--
-- Data for Name: cursoDocente; Type: TABLE DATA; Schema: Ejercicio 5; Owner: postgres
--

COPY "Ejercicio 5"."cursoDocente" (id, "idCurso", "idDocente") FROM stdin;
1	1	1
2	2	2
3	3	3
\.


--
-- Data for Name: cursoGrado; Type: TABLE DATA; Schema: Ejercicio 5; Owner: postgres
--

COPY "Ejercicio 5"."cursoGrado" (id, "idCurso", "idSeccion") FROM stdin;
1	1	1
2	2	2
3	3	3
\.


--
-- Data for Name: docente; Type: TABLE DATA; Schema: Ejercicio 5; Owner: postgres
--

COPY "Ejercicio 5".docente (id, nombre, "idOficina") FROM stdin;
1	Ana Pérez	1
2	Luis García	2
3	María López	3
\.


--
-- Data for Name: especialidad; Type: TABLE DATA; Schema: Ejercicio 5; Owner: postgres
--

COPY "Ejercicio 5".especialidad (id, "nombreEspe") FROM stdin;
1	Matemáticas
2	Física
3	Historia
\.


--
-- Data for Name: oficina; Type: TABLE DATA; Schema: Ejercicio 5; Owner: postgres
--

COPY "Ejercicio 5".oficina (id, "codigoOficina") FROM stdin;
1	OF-001
2	OF-002
3	OF-003
\.


--
-- Data for Name: seccion; Type: TABLE DATA; Schema: Ejercicio 5; Owner: postgres
--

COPY "Ejercicio 5".seccion (id, "nombreGrado") FROM stdin;
1	Primero
2	Segundo
3	Tercero
\.


--
-- Data for Name: autor; Type: TABLE DATA; Schema: Ejercicio 6; Owner: postgres
--

COPY "Ejercicio 6".autor (id, nombre) FROM stdin;
1	Gabriel García Márquez
2	Isabel Allende
3	Jorge Luis Borges
\.


--
-- Data for Name: editorial; Type: TABLE DATA; Schema: Ejercicio 6; Owner: postgres
--

COPY "Ejercicio 6".editorial (id, "nombreEdi") FROM stdin;
1	Editorial Alpha
2	Editorial Beta
3	Editorial Gamma
\.


--
-- Data for Name: lector; Type: TABLE DATA; Schema: Ejercicio 6; Owner: postgres
--

COPY "Ejercicio 6".lector (id, "nombreLector") FROM stdin;
1	María Pérez
2	Juan Rodríguez
3	Ana Gómez
\.


--
-- Data for Name: libro; Type: TABLE DATA; Schema: Ejercicio 6; Owner: postgres
--

COPY "Ejercicio 6".libro (id, "codLibro", titulo, "idEditorial", "idPrestamo") FROM stdin;
1	1001	Cien Años de Soledad	1	1
2	1002	La Casa de los Espíritus	2	2
3	1003	Ficciones	3	3
\.


--
-- Data for Name: libroAutor; Type: TABLE DATA; Schema: Ejercicio 6; Owner: postgres
--

COPY "Ejercicio 6"."libroAutor" (id, "idLibro", "idAutor") FROM stdin;
1	1	1
2	2	2
3	3	3
\.


--
-- Data for Name: libroPrestamo; Type: TABLE DATA; Schema: Ejercicio 6; Owner: postgres
--

COPY "Ejercicio 6"."libroPrestamo" (id, "idLibro", "idPrestamo") FROM stdin;
1	1	1
2	2	2
3	3	3
\.


--
-- Data for Name: prestamo; Type: TABLE DATA; Schema: Ejercicio 6; Owner: postgres
--

COPY "Ejercicio 6".prestamo (id, "fechaDev", "idLector") FROM stdin;
1	2026-01-01	1
2	2026-01-05	2
3	2026-01-10	3
\.


--
-- Name: categoriaProducto_idCategoria_seq; Type: SEQUENCE SET; Schema: Ejercicio 1; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 1"."categoriaProducto_idCategoria_seq"', 3, true);


--
-- Name: ciudad_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 1; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 1".ciudad_id_seq', 3, true);


--
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 1; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 1".cliente_id_seq', 3, true);


--
-- Name: direccion_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 1; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 1".direccion_id_seq', 3, true);


--
-- Name: factura_numFac_seq; Type: SEQUENCE SET; Schema: Ejercicio 1; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 1"."factura_numFac_seq"', 3, true);


--
-- Name: producto_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 1; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 1".producto_id_seq', 3, true);


--
-- Name: telefonoCliente_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 1; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 1"."telefonoCliente_id_seq"', 3, true);


--
-- Name: actividadEmpresa_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 2; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 2"."actividadEmpresa_id_seq"', 3, true);


--
-- Name: ciudad_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 2; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 2".ciudad_id_seq', 3, true);


--
-- Name: contacto_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 2; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 2".contacto_id_seq', 3, true);


--
-- Name: destinatario_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 2; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 2".destinatario_id_seq', 3, true);


--
-- Name: direccionEmpresa_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 2; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 2"."direccionEmpresa_id_seq"', 3, true);


--
-- Name: empresa_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 2; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 2".empresa_id_seq', 3, true);


--
-- Name: guia_guiaNo_seq; Type: SEQUENCE SET; Schema: Ejercicio 2; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 2"."guia_guiaNo_seq"', 3, true);


--
-- Name: paquete_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 2; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 2".paquete_id_seq', 3, true);


--
-- Name: telefonoDestinatario_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 2; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 2"."telefonoDestinatario_id_seq"', 3, true);


--
-- Name: tipoContacto_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 2; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 2"."tipoContacto_id_seq"', 3, true);


--
-- Name: tipoPquete_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 2; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 2"."tipoPquete_id_seq"', 3, true);


--
-- Name: actorAuxiliar_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 3; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 3"."actorAuxiliar_id_seq"', 3, true);


--
-- Name: actor_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 3; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 3".actor_id_seq', 3, true);


--
-- Name: alquilerPeliculas_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 3; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 3"."alquilerPeliculas_id_seq"', 3, true);


--
-- Name: auxAlquiler_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 3; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 3"."auxAlquiler_id_seq"', 3, true);


--
-- Name: cassette_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 3; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 3".cassette_id_seq', 3, true);


--
-- Name: cliente_numMembresia_seq; Type: SEQUENCE SET; Schema: Ejercicio 3; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 3"."cliente_numMembresia_seq"', 3, true);


--
-- Name: direccionCliente_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 3; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 3"."direccionCliente_id_seq"', 3, true);


--
-- Name: formatoCassette_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 3; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 3"."formatoCassette_id_seq"', 3, true);


--
-- Name: peliculaCategoria_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 3; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 3"."peliculaCategoria_id_seq"', 3, true);


--
-- Name: peliculaTipo_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 3; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 3"."peliculaTipo_id_seq"', 3, true);


--
-- Name: pelicula_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 3; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 3".pelicula_id_seq', 3, true);


--
-- Name: telefonoCliente_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 3; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 3"."telefonoCliente_id_seq"', 3, true);


--
-- Name: ColegioProfesor_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 4; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 4"."ColegioProfesor_id_seq"', 3, true);


--
-- Name: asignatura_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 4; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 4".asignatura_id_seq', 3, true);


--
-- Name: aula_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 4; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 4".aula_id_seq', 3, true);


--
-- Name: colegio_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 4; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 4".colegio_id_seq', 3, true);


--
-- Name: curso_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 4; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 4".curso_id_seq', 3, true);


--
-- Name: detallePrestamo_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 4; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 4"."detallePrestamo_id_seq"', 3, true);


--
-- Name: editorial_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 4; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 4".editorial_id_seq', 3, true);


--
-- Name: libro_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 4; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 4".libro_id_seq', 3, true);


--
-- Name: prestamo_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 4; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 4".prestamo_id_seq', 3, true);


--
-- Name: profesor_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 4; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 4".profesor_id_seq', 3, true);


--
-- Name: alumno_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 5; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 5".alumno_id_seq', 1, false);


--
-- Name: cursoAlumno_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 5; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 5"."cursoAlumno_id_seq"', 1, false);


--
-- Name: cursoDocente_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 5; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 5"."cursoDocente_id_seq"', 1, false);


--
-- Name: cursoGrado_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 5; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 5"."cursoGrado_id_seq"', 1, false);


--
-- Name: curso_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 5; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 5".curso_id_seq', 1, false);


--
-- Name: docente_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 5; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 5".docente_id_seq', 1, false);


--
-- Name: especialidad_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 5; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 5".especialidad_id_seq', 1, false);


--
-- Name: oficina_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 5; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 5".oficina_id_seq', 1, false);


--
-- Name: seccion_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 5; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 5".seccion_id_seq', 1, false);


--
-- Name: autor_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 6; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 6".autor_id_seq', 1, false);


--
-- Name: editorial_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 6; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 6".editorial_id_seq', 1, false);


--
-- Name: lector_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 6; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 6".lector_id_seq', 1, false);


--
-- Name: libroAutor_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 6; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 6"."libroAutor_id_seq"', 1, false);


--
-- Name: libroPrestamo_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 6; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 6"."libroPrestamo_id_seq"', 1, false);


--
-- Name: libro_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 6; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 6".libro_id_seq', 1, false);


--
-- Name: prestamo_id_seq; Type: SEQUENCE SET; Schema: Ejercicio 6; Owner: postgres
--

SELECT pg_catalog.setval('"Ejercicio 6".prestamo_id_seq', 1, false);


--
-- Name: categoriaProducto categoriaProducto_categoria_key; Type: CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1"."categoriaProducto"
    ADD CONSTRAINT "categoriaProducto_categoria_key" UNIQUE (categoria);


--
-- Name: categoriaProducto categoriaProducto_pkey; Type: CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1"."categoriaProducto"
    ADD CONSTRAINT "categoriaProducto_pkey" PRIMARY KEY ("idCategoria");


--
-- Name: ciudad ciudad_ciudadCliente_key; Type: CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".ciudad
    ADD CONSTRAINT "ciudad_ciudadCliente_key" UNIQUE ("ciudadCliente");


--
-- Name: ciudad ciudad_pkey; Type: CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".ciudad
    ADD CONSTRAINT ciudad_pkey PRIMARY KEY (id);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- Name: cliente cliente_rifCliente_key; Type: CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".cliente
    ADD CONSTRAINT "cliente_rifCliente_key" UNIQUE ("rifCliente");


--
-- Name: direccion direccion_pkey; Type: CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".direccion
    ADD CONSTRAINT direccion_pkey PRIMARY KEY (id);


--
-- Name: factura factura_pkey; Type: CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY ("numFac");


--
-- Name: producto producto_codProd_key; Type: CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".producto
    ADD CONSTRAINT "producto_codProd_key" UNIQUE ("codProd");


--
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);


--
-- Name: telefonoCliente telefonoCliente_pkey; Type: CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1"."telefonoCliente"
    ADD CONSTRAINT "telefonoCliente_pkey" PRIMARY KEY (id);


--
-- Name: actividadEmpresa actividadEmpresa_pkey; Type: CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2"."actividadEmpresa"
    ADD CONSTRAINT "actividadEmpresa_pkey" PRIMARY KEY (id);


--
-- Name: ciudad ciudad_pkey; Type: CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".ciudad
    ADD CONSTRAINT ciudad_pkey PRIMARY KEY (id);


--
-- Name: contacto contacto_pkey; Type: CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".contacto
    ADD CONSTRAINT contacto_pkey PRIMARY KEY (id);


--
-- Name: destinatario destinatario_pkey; Type: CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".destinatario
    ADD CONSTRAINT destinatario_pkey PRIMARY KEY (id);


--
-- Name: direccionEmpresa direccionEmpresa_pkey; Type: CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2"."direccionEmpresa"
    ADD CONSTRAINT "direccionEmpresa_pkey" PRIMARY KEY (id);


--
-- Name: empresa empresa_pkey; Type: CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".empresa
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (id);


--
-- Name: guia guia_pkey; Type: CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".guia
    ADD CONSTRAINT guia_pkey PRIMARY KEY ("guiaNo");


--
-- Name: paquete paquete_pkey; Type: CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".paquete
    ADD CONSTRAINT paquete_pkey PRIMARY KEY (id);


--
-- Name: telefonoDestinatario telefonoDestinatario_pkey; Type: CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2"."telefonoDestinatario"
    ADD CONSTRAINT "telefonoDestinatario_pkey" PRIMARY KEY (id);


--
-- Name: tipoContacto tipoContacto_pkey; Type: CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2"."tipoContacto"
    ADD CONSTRAINT "tipoContacto_pkey" PRIMARY KEY (id);


--
-- Name: tipoPquete tipoPquete_pkey; Type: CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2"."tipoPquete"
    ADD CONSTRAINT "tipoPquete_pkey" PRIMARY KEY (id);


--
-- Name: actorAuxiliar actorAuxiliar_pkey; Type: CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."actorAuxiliar"
    ADD CONSTRAINT "actorAuxiliar_pkey" PRIMARY KEY (id);


--
-- Name: actor actor_pkey; Type: CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3".actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id);


--
-- Name: alquilerPeliculas alquilerPeliculas_pkey; Type: CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."alquilerPeliculas"
    ADD CONSTRAINT "alquilerPeliculas_pkey" PRIMARY KEY (id);


--
-- Name: auxAlquiler auxAlquiler_pkey; Type: CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."auxAlquiler"
    ADD CONSTRAINT "auxAlquiler_pkey" PRIMARY KEY (id);


--
-- Name: cassette cassette_pkey; Type: CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3".cassette
    ADD CONSTRAINT cassette_pkey PRIMARY KEY (id);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3".cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY ("numMembresia");


--
-- Name: direccionCliente direccionCliente_pkey; Type: CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."direccionCliente"
    ADD CONSTRAINT "direccionCliente_pkey" PRIMARY KEY (id);


--
-- Name: formatoCassette formatoCassette_pkey; Type: CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."formatoCassette"
    ADD CONSTRAINT "formatoCassette_pkey" PRIMARY KEY (id);


--
-- Name: peliculaCategoria peliculaCategoria_pkey; Type: CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."peliculaCategoria"
    ADD CONSTRAINT "peliculaCategoria_pkey" PRIMARY KEY (id);


--
-- Name: peliculaTipo peliculaTipo_pkey; Type: CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."peliculaTipo"
    ADD CONSTRAINT "peliculaTipo_pkey" PRIMARY KEY (id);


--
-- Name: pelicula pelicula_pkey; Type: CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3".pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id);


--
-- Name: telefonoCliente telefonoCliente_pkey; Type: CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."telefonoCliente"
    ADD CONSTRAINT "telefonoCliente_pkey" PRIMARY KEY (id);


--
-- Name: ColegioProfesor ColegioProfesor_pkey; Type: CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4"."ColegioProfesor"
    ADD CONSTRAINT "ColegioProfesor_pkey" PRIMARY KEY (id);


--
-- Name: asignatura asignatura_pkey; Type: CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".asignatura
    ADD CONSTRAINT asignatura_pkey PRIMARY KEY (id);


--
-- Name: aula aula_pkey; Type: CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".aula
    ADD CONSTRAINT aula_pkey PRIMARY KEY (id);


--
-- Name: colegio colegio_pkey; Type: CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".colegio
    ADD CONSTRAINT colegio_pkey PRIMARY KEY (id);


--
-- Name: curso curso_pkey; Type: CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (id);


--
-- Name: detallePrestamo detallePrestamo_pkey; Type: CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4"."detallePrestamo"
    ADD CONSTRAINT "detallePrestamo_pkey" PRIMARY KEY (id);


--
-- Name: editorial editorial_pkey; Type: CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".editorial
    ADD CONSTRAINT editorial_pkey PRIMARY KEY (id);


--
-- Name: libro libro_pkey; Type: CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".libro
    ADD CONSTRAINT libro_pkey PRIMARY KEY (id);


--
-- Name: prestamo prestamo_pkey; Type: CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".prestamo
    ADD CONSTRAINT prestamo_pkey PRIMARY KEY (id);


--
-- Name: profesor profesor_pkey; Type: CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".profesor
    ADD CONSTRAINT profesor_pkey PRIMARY KEY (id);


--
-- Name: alumno alumno_pkey; Type: CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5".alumno
    ADD CONSTRAINT alumno_pkey PRIMARY KEY (id);


--
-- Name: cursoAlumno cursoAlumno_pkey; Type: CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5"."cursoAlumno"
    ADD CONSTRAINT "cursoAlumno_pkey" PRIMARY KEY (id);


--
-- Name: cursoDocente cursoDocente_pkey; Type: CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5"."cursoDocente"
    ADD CONSTRAINT "cursoDocente_pkey" PRIMARY KEY (id);


--
-- Name: cursoGrado cursoGrado_pkey; Type: CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5"."cursoGrado"
    ADD CONSTRAINT "cursoGrado_pkey" PRIMARY KEY (id);


--
-- Name: curso curso_pkey; Type: CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5".curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (id);


--
-- Name: docente docente_idOficina_key; Type: CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5".docente
    ADD CONSTRAINT "docente_idOficina_key" UNIQUE ("idOficina");


--
-- Name: docente docente_pkey; Type: CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5".docente
    ADD CONSTRAINT docente_pkey PRIMARY KEY (id);


--
-- Name: especialidad especialidad_pkey; Type: CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5".especialidad
    ADD CONSTRAINT especialidad_pkey PRIMARY KEY (id);


--
-- Name: oficina oficina_pkey; Type: CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5".oficina
    ADD CONSTRAINT oficina_pkey PRIMARY KEY (id);


--
-- Name: seccion seccion_pkey; Type: CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5".seccion
    ADD CONSTRAINT seccion_pkey PRIMARY KEY (id);


--
-- Name: autor autor_pkey; Type: CONSTRAINT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6".autor
    ADD CONSTRAINT autor_pkey PRIMARY KEY (id);


--
-- Name: editorial editorial_pkey; Type: CONSTRAINT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6".editorial
    ADD CONSTRAINT editorial_pkey PRIMARY KEY (id);


--
-- Name: lector lector_pkey; Type: CONSTRAINT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6".lector
    ADD CONSTRAINT lector_pkey PRIMARY KEY (id);


--
-- Name: libroAutor libroAutor_pkey; Type: CONSTRAINT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6"."libroAutor"
    ADD CONSTRAINT "libroAutor_pkey" PRIMARY KEY (id);


--
-- Name: libroPrestamo libroPrestamo_pkey; Type: CONSTRAINT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6"."libroPrestamo"
    ADD CONSTRAINT "libroPrestamo_pkey" PRIMARY KEY (id);


--
-- Name: libro libro_pkey; Type: CONSTRAINT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6".libro
    ADD CONSTRAINT libro_pkey PRIMARY KEY (id);


--
-- Name: prestamo prestamo_pkey; Type: CONSTRAINT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6".prestamo
    ADD CONSTRAINT prestamo_pkey PRIMARY KEY (id);


--
-- Name: direccion direccion_idCiudad_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".direccion
    ADD CONSTRAINT "direccion_idCiudad_fkey" FOREIGN KEY ("idCiudad") REFERENCES "Ejercicio 1".ciudad(id);


--
-- Name: direccion direccion_idCliente_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".direccion
    ADD CONSTRAINT "direccion_idCliente_fkey" FOREIGN KEY ("idCliente") REFERENCES "Ejercicio 1".cliente(id);


--
-- Name: factura factura_idCliente_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".factura
    ADD CONSTRAINT "factura_idCliente_fkey" FOREIGN KEY ("idCliente") REFERENCES "Ejercicio 1".cliente(id);


--
-- Name: factura factura_idProd_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".factura
    ADD CONSTRAINT "factura_idProd_fkey" FOREIGN KEY ("idProd") REFERENCES "Ejercicio 1".producto(id);


--
-- Name: producto producto_idCategoria_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1".producto
    ADD CONSTRAINT "producto_idCategoria_fkey" FOREIGN KEY ("idCategoria") REFERENCES "Ejercicio 1"."categoriaProducto"("idCategoria");


--
-- Name: telefonoCliente telefonoCliente_idCliente_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 1; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 1"."telefonoCliente"
    ADD CONSTRAINT "telefonoCliente_idCliente_fkey" FOREIGN KEY ("idCliente") REFERENCES "Ejercicio 1".cliente(id);


--
-- Name: contacto contacto_idEmpresa_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".contacto
    ADD CONSTRAINT "contacto_idEmpresa_fkey" FOREIGN KEY ("idEmpresa") REFERENCES "Ejercicio 2".empresa(id);


--
-- Name: contacto contacto_idTipoContacto_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".contacto
    ADD CONSTRAINT "contacto_idTipoContacto_fkey" FOREIGN KEY ("idTipoContacto") REFERENCES "Ejercicio 2"."tipoContacto"(id);


--
-- Name: destinatario destinatario_idCiudad_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".destinatario
    ADD CONSTRAINT "destinatario_idCiudad_fkey" FOREIGN KEY ("idCiudad") REFERENCES "Ejercicio 2".ciudad(id);


--
-- Name: direccionEmpresa direccionEmpresa_idCiudad_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2"."direccionEmpresa"
    ADD CONSTRAINT "direccionEmpresa_idCiudad_fkey" FOREIGN KEY ("idCiudad") REFERENCES "Ejercicio 2".ciudad(id);


--
-- Name: direccionEmpresa direccionEmpresa_idEmpresa_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2"."direccionEmpresa"
    ADD CONSTRAINT "direccionEmpresa_idEmpresa_fkey" FOREIGN KEY ("idEmpresa") REFERENCES "Ejercicio 2".empresa(id);


--
-- Name: empresa empresa_idActividad_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".empresa
    ADD CONSTRAINT "empresa_idActividad_fkey" FOREIGN KEY ("idActividad") REFERENCES "Ejercicio 2"."actividadEmpresa"(id);


--
-- Name: guia guia_idDestinatario_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".guia
    ADD CONSTRAINT "guia_idDestinatario_fkey" FOREIGN KEY ("idDestinatario") REFERENCES "Ejercicio 2".destinatario(id);


--
-- Name: guia guia_idEmpresa_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".guia
    ADD CONSTRAINT "guia_idEmpresa_fkey" FOREIGN KEY ("idEmpresa") REFERENCES "Ejercicio 2".empresa(id);


--
-- Name: paquete paquete_idGuia_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".paquete
    ADD CONSTRAINT "paquete_idGuia_fkey" FOREIGN KEY ("idGuia") REFERENCES "Ejercicio 2".guia("guiaNo");


--
-- Name: paquete paquete_idTipoPquete_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2".paquete
    ADD CONSTRAINT "paquete_idTipoPquete_fkey" FOREIGN KEY ("idTipoPquete") REFERENCES "Ejercicio 2"."tipoPquete"(id);


--
-- Name: telefonoDestinatario telefonoDestinatario_idDestinatario_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 2; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 2"."telefonoDestinatario"
    ADD CONSTRAINT "telefonoDestinatario_idDestinatario_fkey" FOREIGN KEY ("idDestinatario") REFERENCES "Ejercicio 2".destinatario(id);


--
-- Name: actorAuxiliar actorAuxiliar_idActor_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."actorAuxiliar"
    ADD CONSTRAINT "actorAuxiliar_idActor_fkey" FOREIGN KEY ("idActor") REFERENCES "Ejercicio 3".actor(id);


--
-- Name: actorAuxiliar actorAuxiliar_idPelicula_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."actorAuxiliar"
    ADD CONSTRAINT "actorAuxiliar_idPelicula_fkey" FOREIGN KEY ("idPelicula") REFERENCES "Ejercicio 3".pelicula(id);


--
-- Name: alquilerPeliculas alquilerPeliculas_clienteMembrecia_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."alquilerPeliculas"
    ADD CONSTRAINT "alquilerPeliculas_clienteMembrecia_fkey" FOREIGN KEY ("clienteMembrecia") REFERENCES "Ejercicio 3".cliente("numMembresia");


--
-- Name: auxAlquiler auxAlquiler_idAlquiler_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."auxAlquiler"
    ADD CONSTRAINT "auxAlquiler_idAlquiler_fkey" FOREIGN KEY ("idAlquiler") REFERENCES "Ejercicio 3"."alquilerPeliculas"(id);


--
-- Name: auxAlquiler auxAlquiler_idCassette_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."auxAlquiler"
    ADD CONSTRAINT "auxAlquiler_idCassette_fkey" FOREIGN KEY ("idCassette") REFERENCES "Ejercicio 3".cassette(id);


--
-- Name: cassette cassette_idFormatoCassette_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3".cassette
    ADD CONSTRAINT "cassette_idFormatoCassette_fkey" FOREIGN KEY ("idFormatoCassette") REFERENCES "Ejercicio 3"."formatoCassette"(id);


--
-- Name: cassette cassette_idPelicula_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3".cassette
    ADD CONSTRAINT "cassette_idPelicula_fkey" FOREIGN KEY ("idPelicula") REFERENCES "Ejercicio 3".pelicula(id);


--
-- Name: direccionCliente direccionCliente_clienteMembrecia_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."direccionCliente"
    ADD CONSTRAINT "direccionCliente_clienteMembrecia_fkey" FOREIGN KEY ("clienteMembrecia") REFERENCES "Ejercicio 3".cliente("numMembresia");


--
-- Name: pelicula pelicula_idPeliculaCategoria_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3".pelicula
    ADD CONSTRAINT "pelicula_idPeliculaCategoria_fkey" FOREIGN KEY ("idPeliculaCategoria") REFERENCES "Ejercicio 3"."peliculaCategoria"(id);


--
-- Name: pelicula pelicula_idPeliculaTipo_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3".pelicula
    ADD CONSTRAINT "pelicula_idPeliculaTipo_fkey" FOREIGN KEY ("idPeliculaTipo") REFERENCES "Ejercicio 3"."peliculaTipo"(id);


--
-- Name: telefonoCliente telefonoCliente_clienteMembrecia_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 3; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 3"."telefonoCliente"
    ADD CONSTRAINT "telefonoCliente_clienteMembrecia_fkey" FOREIGN KEY ("clienteMembrecia") REFERENCES "Ejercicio 3".cliente("numMembresia");


--
-- Name: ColegioProfesor fk_colegioprofesor_idcolegio; Type: FK CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4"."ColegioProfesor"
    ADD CONSTRAINT fk_colegioprofesor_idcolegio FOREIGN KEY ("idColegio") REFERENCES "Ejercicio 4".colegio(id);


--
-- Name: ColegioProfesor fk_colegioprofesor_idprofesor; Type: FK CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4"."ColegioProfesor"
    ADD CONSTRAINT fk_colegioprofesor_idprofesor FOREIGN KEY ("idProfesor") REFERENCES "Ejercicio 4".profesor(id);


--
-- Name: detallePrestamo fk_detalleprestamo_idlibro; Type: FK CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4"."detallePrestamo"
    ADD CONSTRAINT fk_detalleprestamo_idlibro FOREIGN KEY ("idLibro") REFERENCES "Ejercicio 4".libro(id);


--
-- Name: detallePrestamo fk_detalleprestamo_idprestamo; Type: FK CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4"."detallePrestamo"
    ADD CONSTRAINT fk_detalleprestamo_idprestamo FOREIGN KEY ("idPrestamo") REFERENCES "Ejercicio 4".prestamo(id);


--
-- Name: libro fk_libro_ideditorial; Type: FK CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".libro
    ADD CONSTRAINT fk_libro_ideditorial FOREIGN KEY ("idEditorial") REFERENCES "Ejercicio 4".editorial(id);


--
-- Name: prestamo fk_prestamo_idasignatura; Type: FK CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".prestamo
    ADD CONSTRAINT fk_prestamo_idasignatura FOREIGN KEY ("idAsignatura") REFERENCES "Ejercicio 4".asignatura(id);


--
-- Name: prestamo fk_prestamo_idaula; Type: FK CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".prestamo
    ADD CONSTRAINT fk_prestamo_idaula FOREIGN KEY ("idAula") REFERENCES "Ejercicio 4".aula(id);


--
-- Name: prestamo fk_prestamo_idcurso; Type: FK CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".prestamo
    ADD CONSTRAINT fk_prestamo_idcurso FOREIGN KEY ("idCurso") REFERENCES "Ejercicio 4".curso(id);


--
-- Name: prestamo fk_prestamo_idprofesor; Type: FK CONSTRAINT; Schema: Ejercicio 4; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 4".prestamo
    ADD CONSTRAINT fk_prestamo_idprofesor FOREIGN KEY ("idProfesor") REFERENCES "Ejercicio 4".profesor(id);


--
-- Name: alumno alumno_idEspecialidad_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5".alumno
    ADD CONSTRAINT "alumno_idEspecialidad_fkey" FOREIGN KEY ("idEspecialidad") REFERENCES "Ejercicio 5".especialidad(id);


--
-- Name: cursoAlumno cursoAlumno_idAlumno_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5"."cursoAlumno"
    ADD CONSTRAINT "cursoAlumno_idAlumno_fkey" FOREIGN KEY ("idAlumno") REFERENCES "Ejercicio 5".alumno(id);


--
-- Name: cursoAlumno cursoAlumno_idCurso_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5"."cursoAlumno"
    ADD CONSTRAINT "cursoAlumno_idCurso_fkey" FOREIGN KEY ("idCurso") REFERENCES "Ejercicio 5".curso(id);


--
-- Name: cursoDocente cursoDocente_idCurso_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5"."cursoDocente"
    ADD CONSTRAINT "cursoDocente_idCurso_fkey" FOREIGN KEY ("idCurso") REFERENCES "Ejercicio 5".curso(id);


--
-- Name: cursoDocente cursoDocente_idDocente_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5"."cursoDocente"
    ADD CONSTRAINT "cursoDocente_idDocente_fkey" FOREIGN KEY ("idDocente") REFERENCES "Ejercicio 5".docente(id);


--
-- Name: cursoGrado cursoGrado_idCurso_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5"."cursoGrado"
    ADD CONSTRAINT "cursoGrado_idCurso_fkey" FOREIGN KEY ("idCurso") REFERENCES "Ejercicio 5".curso(id);


--
-- Name: cursoGrado cursoGrado_idSeccion_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5"."cursoGrado"
    ADD CONSTRAINT "cursoGrado_idSeccion_fkey" FOREIGN KEY ("idSeccion") REFERENCES "Ejercicio 5".seccion(id);


--
-- Name: docente docente_idOficina_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 5; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 5".docente
    ADD CONSTRAINT "docente_idOficina_fkey" FOREIGN KEY ("idOficina") REFERENCES "Ejercicio 5".oficina(id);


--
-- Name: libroAutor libroAutor_idAutor_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6"."libroAutor"
    ADD CONSTRAINT "libroAutor_idAutor_fkey" FOREIGN KEY ("idAutor") REFERENCES "Ejercicio 6".autor(id);


--
-- Name: libroAutor libroAutor_idLibro_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6"."libroAutor"
    ADD CONSTRAINT "libroAutor_idLibro_fkey" FOREIGN KEY ("idLibro") REFERENCES "Ejercicio 6".libro(id);


--
-- Name: libroPrestamo libroPrestamo_idLibro_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6"."libroPrestamo"
    ADD CONSTRAINT "libroPrestamo_idLibro_fkey" FOREIGN KEY ("idLibro") REFERENCES "Ejercicio 6".libro(id);


--
-- Name: libroPrestamo libroPrestamo_idPrestamo_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6"."libroPrestamo"
    ADD CONSTRAINT "libroPrestamo_idPrestamo_fkey" FOREIGN KEY ("idPrestamo") REFERENCES "Ejercicio 6".prestamo(id);


--
-- Name: libro libro_idEditorial_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6".libro
    ADD CONSTRAINT "libro_idEditorial_fkey" FOREIGN KEY ("idEditorial") REFERENCES "Ejercicio 6".editorial(id);


--
-- Name: prestamo prestamo_idLector_fkey; Type: FK CONSTRAINT; Schema: Ejercicio 6; Owner: postgres
--

ALTER TABLE ONLY "Ejercicio 6".prestamo
    ADD CONSTRAINT "prestamo_idLector_fkey" FOREIGN KEY ("idLector") REFERENCES "Ejercicio 6".lector(id);


--
-- PostgreSQL database dump complete
--

\unrestrict pIKfXmpJpoI2NMU9oxg3HdKg1mywfoLdo7NGIT7lXjrLSE2jpF3e7NKVasVYhV5

