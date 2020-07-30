--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6 (Ubuntu 11.6-1.pgdg18.04+1)
-- Dumped by pg_dump version 12.3

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

--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


--
-- Name: degreetreeorshrubstump(); Type: FUNCTION; Schema: public; Owner: ddzpcgyx
--

CREATE FUNCTION public.degreetreeorshrubstump() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

    BEGIN

        if ( select "checkToSum" from "passportPlantationObjects" where "ID_Object" = new."mainObjectId") then

        if ((select name from "lifeForms" where new."lifeFormId" = "lifeForms"."lifeFormsId") = 'дерево') then
           update "passportPlantationObjects"  set "treesCount" = "treesCount" - 1 where "ID_Object" = new."mainObjectId";
        end if;

        if ((select name from "lifeForms" where new."lifeFormId" = "lifeForms"."lifeFormsId") = 'кустарник') then
          update "passportPlantationObjects" as p  set "shrubsCount" = "shrubsCount" - 1 where "ID_Object" = new."mainObjectId";
        end if;

      end if;

        RETURN NEW;
    END;
$$;


ALTER FUNCTION public.degreetreeorshrubstump() OWNER TO ddzpcgyx;

--
-- Name: deletedatacutrecomend(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletedatacutrecomend(nme character varying)
    LANGUAGE sql
    AS $$

    delete from "cutRecomend" where name = nme;

    $$;


ALTER PROCEDURE public.deletedatacutrecomend(nme character varying) OWNER TO ddzpcgyx;

--
-- Name: deletedatacutrecomendbyid(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletedatacutrecomendbyid(id integer)
    LANGUAGE sql
    AS $$

    delete from "cutRecomend" where "cutRecomendId" = id;

    $$;


ALTER PROCEDURE public.deletedatacutrecomendbyid(id integer) OWNER TO ddzpcgyx;

--
-- Name: deletedatacutrecomendbyname(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletedatacutrecomendbyname(nme character varying)
    LANGUAGE sql
    AS $$

    delete from "cutRecomend" where name = nme;

    $$;


ALTER PROCEDURE public.deletedatacutrecomendbyname(nme character varying) OWNER TO ddzpcgyx;

--
-- Name: deletedatafromdistricts(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletedatafromdistricts(id integer)
    LANGUAGE sql
    AS $_$
    DELETE FROM "districts" as d WHERE d."districtsId" = $1 $_$;


ALTER PROCEDURE public.deletedatafromdistricts(id integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddatabalanceholders(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddatabalanceholders(id integer)
    LANGUAGE sql
    AS $$

    delete from "balanceHolders" where "balanceHoldersId" = id;

    $$;


ALTER PROCEDURE public.deleteiddatabalanceholders(id integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddatadistricts(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddatadistricts(id integer)
    LANGUAGE sql
    AS $$

    delete from "districts" where "districtsId" = id;

    $$;


ALTER PROCEDURE public.deleteiddatadistricts(id integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddataflowergarden(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddataflowergarden(flowergardenid integer)
    LANGUAGE sql
    AS $$

    delete from "flowerGardens" where "flowerGardensId" = flowerGardenId;

    $$;


ALTER PROCEDURE public.deleteiddataflowergarden(flowergardenid integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddataflowergardengrassingtypes(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddataflowergardengrassingtypes(flowergardenid integer)
    LANGUAGE sql
    AS $$

    delete from "flowerGardensGrassingTypes" where "flowerGardensGrassingTypesId" = FlowerGardenId;

    $$;


ALTER PROCEDURE public.deleteiddataflowergardengrassingtypes(flowergardenid integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddataflowergardenlifestatuscategory(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddataflowergardenlifestatuscategory(flowergardenid integer)
    LANGUAGE sql
    AS $$

    delete from "flowerGardenLifeStatusCategory" where "flowerGardenLifeStatusCategoryId" = flowerGardenId;

    $$;


ALTER PROCEDURE public.deleteiddataflowergardenlifestatuscategory(flowergardenid integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddataflowergardentypes(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddataflowergardentypes(flowergardenid integer)
    LANGUAGE sql
    AS $$

    delete from "flowerGardensTypes" where "flowerGardensTypesId" = FlowerGardenId;

    $$;


ALTER PROCEDURE public.deleteiddataflowergardentypes(flowergardenid integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddatalandscapingcategorys(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddatalandscapingcategorys(landscapingcategoryid integer)
    LANGUAGE sql
    AS $$

    delete from "landscapingCategorys" where "landscapingCategorysId" = landscapingCategoryId;

    $$;


ALTER PROCEDURE public.deleteiddatalandscapingcategorys(landscapingcategoryid integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddatalifeforms(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddatalifeforms(lifeformid integer)
    LANGUAGE sql
    AS $$

    delete from "lifeForms" where "lifeFormsId" = LifeFormId;

    $$;


ALTER PROCEDURE public.deleteiddatalifeforms(lifeformid integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddatamainobjects(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddatamainobjects(mainobjectid integer)
    LANGUAGE sql
    AS $$

    delete from "mainObjects" where "mainObjectsId" = mainObjectId;

    $$;


ALTER PROCEDURE public.deleteiddatamainobjects(mainobjectid integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddatamainobjecttypes(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddatamainobjecttypes(mainobjecttypeid integer)
    LANGUAGE sql
    AS $$

    delete from "mainObjectTypes" where "mainObjectTypesId" = MainObjectTypeId;

    $$;


ALTER PROCEDURE public.deleteiddatamainobjecttypes(mainobjecttypeid integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddatapassport(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddatapassport(passportid integer)
    LANGUAGE sql
    AS $$

    delete from "passportPlantationObjects" where "passportPlantationObjectsId" = PassportId;

    $$;


ALTER PROCEDURE public.deleteiddatapassport(passportid integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddataplantationtypes(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddataplantationtypes(plantationtypeid integer)
    LANGUAGE sql
    AS $$

    delete from "plantationTypes" where "plantationTypesId" = PlantationTypeId;

    $$;


ALTER PROCEDURE public.deleteiddataplantationtypes(plantationtypeid integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddataspecies(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddataspecies(specieid integer)
    LANGUAGE sql
    AS $$

    delete from "species" where "speciesId" = specieId;

    $$;


ALTER PROCEDURE public.deleteiddataspecies(specieid integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddatastreets(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddatastreets(streetid integer)
    LANGUAGE sql
    AS $$

    delete from "streets" where "streetsId" = streetId;

    $$;


ALTER PROCEDURE public.deleteiddatastreets(streetid integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddatatilingtypes(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddatatilingtypes(tilingtypeid integer)
    LANGUAGE sql
    AS $$

    delete from "tilingsTypes" where "tilingsTypesId" = tilingTypeId;

    $$;


ALTER PROCEDURE public.deleteiddatatilingtypes(tilingtypeid integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddatatreeandshrubslifestatuscategory(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddatatreeandshrubslifestatuscategory(treeandshrubslifestatuscategoryid integer)
    LANGUAGE sql
    AS $$

    delete from "TreesAndShrubsLifeStatusCategory" where "TreesAndShrubsLifeStatusCategoryId" = TreeAndShrubsLifeStatusCategoryId;

    $$;


ALTER PROCEDURE public.deleteiddatatreeandshrubslifestatuscategory(treeandshrubslifestatuscategoryid integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddatatreeandshrubsplantingtypes(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddatatreeandshrubsplantingtypes(plantingtypeid integer)
    LANGUAGE sql
    AS $$

    delete from "treesAndShrubsPlantingTypes" where "treesAndShrubsPlantingTypesId" = plantingTypeId;

    $$;


ALTER PROCEDURE public.deleteiddatatreeandshrubsplantingtypes(plantingtypeid integer) OWNER TO ddzpcgyx;

--
-- Name: deleteiddatatreesandshrubs(integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deleteiddatatreesandshrubs(treesandshrubsid integer)
    LANGUAGE sql
    AS $$

    delete from "treesAndShrubs" where "treesAndShrubsId" = treesAndShrubsId;

    $$;


ALTER PROCEDURE public.deleteiddatatreesandshrubs(treesandshrubsid integer) OWNER TO ddzpcgyx;

--
-- Name: deletenamedatabalanceholders(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletenamedatabalanceholders(balanceholdername character varying)
    LANGUAGE sql
    AS $$

    delete from "balanceHolders" where name = balanceHolderName;

    $$;


ALTER PROCEDURE public.deletenamedatabalanceholders(balanceholdername character varying) OWNER TO ddzpcgyx;

--
-- Name: deletenamedatadistricts(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletenamedatadistricts(districtname character varying)
    LANGUAGE sql
    AS $$

    delete from "districts" where name = districtName;

    $$;


ALTER PROCEDURE public.deletenamedatadistricts(districtname character varying) OWNER TO ddzpcgyx;

--
-- Name: deletenamedataflowergardengrassingtypes(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletenamedataflowergardengrassingtypes(flowergardenname character varying)
    LANGUAGE sql
    AS $$

    delete from "flowerGardensGrassingTypes" where name = FlowerGardenName;

    $$;


ALTER PROCEDURE public.deletenamedataflowergardengrassingtypes(flowergardenname character varying) OWNER TO ddzpcgyx;

--
-- Name: deletenamedataflowergardenlifestatuscategory(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletenamedataflowergardenlifestatuscategory(flowergardenname character varying)
    LANGUAGE sql
    AS $$

    delete from "flowerGardenLifeStatusCategory" where name = flowerGardenName;

    $$;


ALTER PROCEDURE public.deletenamedataflowergardenlifestatuscategory(flowergardenname character varying) OWNER TO ddzpcgyx;

--
-- Name: deletenamedataflowergardentypes(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletenamedataflowergardentypes(flowergardenname character varying)
    LANGUAGE sql
    AS $$

    delete from "flowerGardensTypes" where name = FlowerGardenName;

    $$;


ALTER PROCEDURE public.deletenamedataflowergardentypes(flowergardenname character varying) OWNER TO ddzpcgyx;

--
-- Name: deletenamedatalandscapingcategorys(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletenamedatalandscapingcategorys(landscapingcategoryname character varying)
    LANGUAGE sql
    AS $$

    delete from "landscapingCategorys" where name = landscapingCategoryName;

    $$;


ALTER PROCEDURE public.deletenamedatalandscapingcategorys(landscapingcategoryname character varying) OWNER TO ddzpcgyx;

--
-- Name: deletenamedatalifeforms(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletenamedatalifeforms(lifeformname character varying)
    LANGUAGE sql
    AS $$

    delete from "lifeForms" where name = LifeFormName;

    $$;


ALTER PROCEDURE public.deletenamedatalifeforms(lifeformname character varying) OWNER TO ddzpcgyx;

--
-- Name: deletenamedatamainobjects(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletenamedatamainobjects(mainobjectname character varying)
    LANGUAGE sql
    AS $$

    delete from "mainObjects" where name = mainObjectName;

    $$;


ALTER PROCEDURE public.deletenamedatamainobjects(mainobjectname character varying) OWNER TO ddzpcgyx;

--
-- Name: deletenamedatamainobjecttypes(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletenamedatamainobjecttypes(mainobjecttypename character varying)
    LANGUAGE sql
    AS $$

    delete from "mainObjectTypes" where name = MainObjectTypeName;

    $$;


ALTER PROCEDURE public.deletenamedatamainobjecttypes(mainobjecttypename character varying) OWNER TO ddzpcgyx;

--
-- Name: deletenamedataplantationtypes(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletenamedataplantationtypes(plantationtypename character varying)
    LANGUAGE sql
    AS $$

    delete from "plantationTypes" where name = PlantationTypeName;

    $$;


ALTER PROCEDURE public.deletenamedataplantationtypes(plantationtypename character varying) OWNER TO ddzpcgyx;

--
-- Name: deletenamedataspecies(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletenamedataspecies(speciename character varying)
    LANGUAGE sql
    AS $$

    delete from "species" where name = specieName;

    $$;


ALTER PROCEDURE public.deletenamedataspecies(speciename character varying) OWNER TO ddzpcgyx;

--
-- Name: deletenamedatastreets(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletenamedatastreets(streetname character varying)
    LANGUAGE sql
    AS $$

    delete from "streets" where name = streetName;

    $$;


ALTER PROCEDURE public.deletenamedatastreets(streetname character varying) OWNER TO ddzpcgyx;

--
-- Name: deletenamedatatilingtypes(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletenamedatatilingtypes(tilingtypename character varying)
    LANGUAGE sql
    AS $$

    delete from "tilingsTypes" where name = tilingTypeName;

    $$;


ALTER PROCEDURE public.deletenamedatatilingtypes(tilingtypename character varying) OWNER TO ddzpcgyx;

--
-- Name: deletenamedatatreeandshrubslifestatuscategory(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletenamedatatreeandshrubslifestatuscategory(treeandshrubslifestatuscategoryname character varying)
    LANGUAGE sql
    AS $$

    delete from "TreesAndShrubsLifeStatusCategory" where name = TreeAndShrubsLifeStatusCategoryName;

    $$;


ALTER PROCEDURE public.deletenamedatatreeandshrubslifestatuscategory(treeandshrubslifestatuscategoryname character varying) OWNER TO ddzpcgyx;

--
-- Name: deletenamedatatreeandshrubsplantingtypes(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.deletenamedatatreeandshrubsplantingtypes(plantingtypename character varying)
    LANGUAGE sql
    AS $$

    delete from "treesAndShrubsPlantingTypes" where name = plantingTypeName;

    $$;


ALTER PROCEDURE public.deletenamedatatreeandshrubsplantingtypes(plantingtypename character varying) OWNER TO ddzpcgyx;

--
-- Name: insert_dataflowergardens(integer, integer, integer, integer, integer, character varying, text, text, text); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insert_dataflowergardens(flowergardentypeid integer, flowergardenlifestatuscategoryid integer, flowergardengrassingtypeid integer, sitenumber integer, areaval integer, dat character varying, recommend text, "stateсharacteristic" text, flowersgardenscomposit text)
    LANGUAGE sql
    AS $$
insert into "flowerGardens" ("flowerGardenTypeId", "flowerGardenLifeStatusCategoryId", "siteNumber",
                             "areaVal", date, recommendations, "stateСharacteristic",
                             "flowersGardensComposit", "flowerGardenGrassingTypeId")
values (flowergardentypeid, flowergardenlifestatuscategoryid, sitenumber, areaVal, TO_DATE(Dat, 'DD/MM/YYYY'), recommend,
        stateсharacteristic,flowersgardenscomposit, flowerGardenGrassingTypeID );
$$;


ALTER PROCEDURE public.insert_dataflowergardens(flowergardentypeid integer, flowergardenlifestatuscategoryid integer, flowergardengrassingtypeid integer, sitenumber integer, areaval integer, dat character varying, recommend text, "stateсharacteristic" text, flowersgardenscomposit text) OWNER TO ddzpcgyx;

--
-- Name: insert_datapassportplantationobject(integer, integer, character varying, integer, character varying, integer, integer, integer, integer, integer, integer, integer, boolean); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insert_datapassportplantationobject(cadastralnumber integer, sitescount integer, dateobjcreate character varying, landscapingcategoryid integer, schemapath character varying, asphaltm integer, gravelm integer, slabsm integer, primingm integer, buildingsm integer, pondsm integer, id_object integer, checktosum boolean)
    LANGUAGE sql
    AS $$
insert into "passportPlantationObjects" (" cadastralNumber", "sitesCount", "dateObjCreate", "landscapingCategoryId",
                                         "schemaPath", "asphaltM", "gravelM", "slabsM", "primingM",
                                         "buildingsM", "pondsM", "ID_Object", "checkToSum")
values ( cadastralNumber, sitesCount, TO_DATE(dateObjCreate, 'DD/MM/YYYY'), landscapingCategoryId,
        schemaPath,asphaltM, gravelM,  slabsM, primingM, buildingsM, pondsM, ID_Object, checkToSum);
$$;


ALTER PROCEDURE public.insert_datapassportplantationobject(cadastralnumber integer, sitescount integer, dateobjcreate character varying, landscapingcategoryid integer, schemapath character varying, asphaltm integer, gravelm integer, slabsm integer, primingm integer, buildingsm integer, pondsm integer, id_object integer, checktosum boolean) OWNER TO ddzpcgyx;

--
-- Name: insert_datapassportplantationobject(character varying, integer, character varying, integer, character varying, integer, integer, integer, integer, integer, integer, integer, boolean); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insert_datapassportplantationobject(cadastralnumber character varying, sitescount integer, dateobjcreate character varying, landscapingcategoryid integer, schemapath character varying, asphaltm integer, gravelm integer, slabsm integer, primingm integer, buildingsm integer, pondsm integer, id_object integer, checktosum boolean)
    LANGUAGE sql
    AS $$
insert into "passportPlantationObjects" (" cadastralNumber", "sitesCount", "dateObjCreate", "landscapingCategoryId",
                                         "schemaPath", "asphaltM", "gravelM", "slabsM", "primingM",
                                         "buildingsM", "pondsM", "ID_Object", "checkToSum")
values ( cadastralNumber, sitesCount, TO_DATE(dateObjCreate, 'DD/MM/YYYY'), landscapingCategoryId,
        schemaPath,asphaltM, gravelM,  slabsM, primingM, buildingsM, pondsM, ID_Object, checkToSum);
$$;


ALTER PROCEDURE public.insert_datapassportplantationobject(cadastralnumber character varying, sitescount integer, dateobjcreate character varying, landscapingcategoryid integer, schemapath character varying, asphaltm integer, gravelm integer, slabsm integer, primingm integer, buildingsm integer, pondsm integer, id_object integer, checktosum boolean) OWNER TO ddzpcgyx;

--
-- Name: insert_datapassportplantationobject(character varying, integer, character varying, integer, character varying, integer, integer, integer, integer, integer, integer, integer, boolean, integer, integer, integer, integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insert_datapassportplantationobject(cadastralnumber character varying, sitescount integer, dateobjcreate character varying, landscapingcategoryid integer, schemapath character varying, asphaltm integer, gravelm integer, slabsm integer, primingm integer, buildingsm integer, pondsm integer, id_object integer, checktosum boolean, streetlength integer, avgpassagewidth integer, totalobjarea integer, anothrm integer)
    LANGUAGE sql
    AS $$
insert into "passportPlantationObjects" (" cadastralNumber", "sitesCount", "dateObjCreate", "landscapingCategoryId",
                                         "schemaPath", "asphaltM", "gravelM", "slabsM", "primingM",
                                         "buildingsM", "pondsM", "ID_Object", "checkToSum", "lengthOfStreet", "avgPassageWidthM"
                                         , "totalObjAreaKM", "anothrM")
values ( cadastralNumber, sitesCount, TO_DATE(dateObjCreate, 'DD/MM/YYYY'), landscapingCategoryId,
        schemaPath,asphaltM, gravelM,  slabsM, primingM, buildingsM, pondsM, ID_Object, checkToSum, streetLength, avgPassageWidth
        , totalObjArea, anothrM);
$$;


ALTER PROCEDURE public.insert_datapassportplantationobject(cadastralnumber character varying, sitescount integer, dateobjcreate character varying, landscapingcategoryid integer, schemapath character varying, asphaltm integer, gravelm integer, slabsm integer, primingm integer, buildingsm integer, pondsm integer, id_object integer, checktosum boolean, streetlength integer, avgpassagewidth integer, totalobjarea integer, anothrm integer) OWNER TO ddzpcgyx;

--
-- Name: insert_datatreeorshrubwithoutimage(integer, integer, integer, integer, integer, integer, integer, integer, real, character varying, character varying, text, integer, real, double precision, double precision); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insert_datatreeorshrubwithoutimage(mainobjectid integer, treeorshrublifestatuscategoryid integer, lifeformid integer, specieid integer, plantingtype integer, sitenumber integer, currentage integer, landingage integer, heig real, inventdate character varying, landingdate character varying, characteris text, recommendationid integer, diameteratheight13 real, lat double precision, long double precision)
    LANGUAGE sql
    AS $$
insert into "treesAndShrubs" ("mainObjectId", "treeOrShrubLifeStatusCategoryId",
                              "lifeFormId", "specieId", "plantingType", "siteNumber",
                              "currentAge", "landingAge",
                              height, "inventDate", "landingDate", characteristic, "recommendationId", "diameterAtHeight13",
                              "latitude ", longitude)
values (mainObjectId, treeOrShrubLifeStatusCategoryId, lifeFormId, specieId, plantingType, siteNumber,
        currentAge, landingAge, heig,
        TO_DATE(inventDate, 'DD/MM/YYYY'), TO_DATE(landingDate, 'DD/MM/YYYY'),
        characteris, recommendationId, diameterAtHeight13,
        lat, long);

$$;


ALTER PROCEDURE public.insert_datatreeorshrubwithoutimage(mainobjectid integer, treeorshrublifestatuscategoryid integer, lifeformid integer, specieid integer, plantingtype integer, sitenumber integer, currentage integer, landingage integer, heig real, inventdate character varying, landingdate character varying, characteris text, recommendationid integer, diameteratheight13 real, lat double precision, long double precision) OWNER TO ddzpcgyx;

--
-- Name: insert_datatreeorshrubwithoutimage(integer, integer, integer, integer, integer, integer, character varying, integer, integer, real, character varying, character varying, text, integer, real, double precision, double precision); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insert_datatreeorshrubwithoutimage(mainobjectid integer, treeorshrublifestatuscategoryid integer, lifeformid integer, specieid integer, plantingtype integer, sitenumber integer, plantnumber character varying, currentage integer, landingage integer, heig real, inventdate character varying, landingdate character varying, characteris text, recommendationid integer, diameteratheight13 real, lat double precision, long double precision)
    LANGUAGE sql
    AS $$
insert into "treesAndShrubs" ("mainObjectId", "treeOrShrubLifeStatusCategoryId",
                              "lifeFormId", "specieId", "plantingType", "siteNumber", "plantNumber",
                              "currentAge", "landingAge",
                              height, "inventDate", "landingDate", characteristic, "recommendationId", "diameterAtHeight13",
                              "latitude ", longitude)
values (mainObjectId, treeOrShrubLifeStatusCategoryId, lifeFormId, specieId, plantingType, siteNumber,
        plantNumber, currentAge, landingAge, heig,
        TO_DATE(inventDate, 'DD/MM/YYYY'), TO_DATE(landingDate, 'DD/MM/YYYY'),
        characteris, recommendationId, diameterAtHeight13,
        lat, long);

$$;


ALTER PROCEDURE public.insert_datatreeorshrubwithoutimage(mainobjectid integer, treeorshrublifestatuscategoryid integer, lifeformid integer, specieid integer, plantingtype integer, sitenumber integer, plantnumber character varying, currentage integer, landingage integer, heig real, inventdate character varying, landingdate character varying, characteris text, recommendationid integer, diameteratheight13 real, lat double precision, long double precision) OWNER TO ddzpcgyx;

--
-- Name: insert_datatreeorshrubwithoutimage(integer, integer, integer, integer, integer, integer, character varying, integer, integer, real, character varying, character varying, text, text, real, double precision, double precision); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insert_datatreeorshrubwithoutimage(mainobjectid integer, treeorshrublifestatuscategoryid integer, lifeformid integer, specieid integer, plantingtype integer, sitenumber integer, plantnumber character varying, currentage integer, landingage integer, heig real, inventdate character varying, landingdate character varying, characteris text, recommend text, diameteratheight13 real, lat double precision, long double precision)
    LANGUAGE sql
    AS $$
insert into "treesAndShrubs" ("mainObjectId", "treeOrShrubLifeStatusCategoryId",
                              "lifeFormId", "specieId", "plantingType", "siteNumber", "plantNumber",
                              "currentAge", "landingAge",
                              height, "inventDate", "landingDate", characteristic, recommendations, "diameterAtHeight13",
                              "latitude ", longitude)
values (mainObjectId, treeOrShrubLifeStatusCategoryId, lifeFormId, specieId, plantingType, siteNumber,
        plantNumber, currentAge, landingAge, heig,
        TO_DATE(inventDate, 'DD/MM/YYYY'), TO_DATE(landingDate, 'DD/MM/YYYY'),
        characteris, recommend, diameterAtHeight13,
        lat, long);

$$;


ALTER PROCEDURE public.insert_datatreeorshrubwithoutimage(mainobjectid integer, treeorshrublifestatuscategoryid integer, lifeformid integer, specieid integer, plantingtype integer, sitenumber integer, plantnumber character varying, currentage integer, landingage integer, heig real, inventdate character varying, landingdate character varying, characteris text, recommend text, diameteratheight13 real, lat double precision, long double precision) OWNER TO ddzpcgyx;

--
-- Name: insertdatabalanceholders(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdatabalanceholders(name character varying)
    LANGUAGE sql
    AS $$

   INSERT INTO "balanceHolders" (name) values (name::varchar)

$$;


ALTER PROCEDURE public.insertdatabalanceholders(name character varying) OWNER TO ddzpcgyx;

--
-- Name: insertdatacutrecomend(character varying, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdatacutrecomend(nme character varying, clarif character varying)
    LANGUAGE sql
    AS $$

    insert into "cutRecomend" ("name", clarification) values ( nme, clarif)

    $$;


ALTER PROCEDURE public.insertdatacutrecomend(nme character varying, clarif character varying) OWNER TO ddzpcgyx;

--
-- Name: insertdatadistricts(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdatadistricts(name character varying)
    LANGUAGE sql
    AS $$

   INSERT INTO "districts" (name) values (name::varchar)

$$;


ALTER PROCEDURE public.insertdatadistricts(name character varying) OWNER TO ddzpcgyx;

--
-- Name: insertdataflowergardenlifestatuscategory(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdataflowergardenlifestatuscategory(name character varying)
    LANGUAGE sql
    AS $$

   INSERT INTO "flowerGardenLifeStatusCategory" (name) values (name::varchar)

$$;


ALTER PROCEDURE public.insertdataflowergardenlifestatuscategory(name character varying) OWNER TO ddzpcgyx;

--
-- Name: insertdataflowergardensgrassingtypes(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdataflowergardensgrassingtypes(name character varying)
    LANGUAGE sql
    AS $$

   INSERT INTO "flowerGardensGrassingTypes" (name) values (name::varchar)

$$;


ALTER PROCEDURE public.insertdataflowergardensgrassingtypes(name character varying) OWNER TO ddzpcgyx;

--
-- Name: insertdataflowergardenstypes(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdataflowergardenstypes(name character varying)
    LANGUAGE sql
    AS $$

   INSERT INTO "flowerGardensTypes" (name) values (name::varchar)

$$;


ALTER PROCEDURE public.insertdataflowergardenstypes(name character varying) OWNER TO ddzpcgyx;

--
-- Name: insertdatalandscapingcategorys(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdatalandscapingcategorys(name character varying)
    LANGUAGE sql
    AS $$

   INSERT INTO "landscapingCategorys" (name) values (name::varchar)

$$;


ALTER PROCEDURE public.insertdatalandscapingcategorys(name character varying) OWNER TO ddzpcgyx;

--
-- Name: insertdatalifeforms(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdatalifeforms(name character varying)
    LANGUAGE sql
    AS $$

   INSERT INTO "lifeForms" (name) values (name::varchar)

$$;


ALTER PROCEDURE public.insertdatalifeforms(name character varying) OWNER TO ddzpcgyx;

--
-- Name: insertdatamainobjects(character varying, integer, integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdatamainobjects(name character varying, balanceholderid integer, mainobjecttype integer)
    LANGUAGE sql
    AS $$

    insert into "mainObjects" ("balanceHolderId", "mainObjectTypeId", name) values ( balanceHolderId, mainObjectType, name)

    $$;


ALTER PROCEDURE public.insertdatamainobjects(name character varying, balanceholderid integer, mainobjecttype integer) OWNER TO ddzpcgyx;

--
-- Name: insertdatamainobjecttypes(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdatamainobjecttypes(name character varying)
    LANGUAGE sql
    AS $$

   INSERT INTO "mainObjectTypes" (name) values (name::varchar)

$$;


ALTER PROCEDURE public.insertdatamainobjecttypes(name character varying) OWNER TO ddzpcgyx;

--
-- Name: insertdataplantationtypes(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdataplantationtypes(name character varying)
    LANGUAGE sql
    AS $$

   INSERT INTO "plantationTypes" (name) values (name::varchar)

$$;


ALTER PROCEDURE public.insertdataplantationtypes(name character varying) OWNER TO ddzpcgyx;

--
-- Name: insertdataspecies(character varying, integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdataspecies(name character varying, abovespec integer)
    LANGUAGE sql
    AS $$

   INSERT INTO "species" (name, "aboveSpecieId") values (name::varchar, aboveSpec)

$$;


ALTER PROCEDURE public.insertdataspecies(name character varying, abovespec integer) OWNER TO ddzpcgyx;

--
-- Name: insertdatastreets(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdatastreets(name character varying)
    LANGUAGE sql
    AS $$

   INSERT INTO "streets" (name) values (name::varchar)

$$;


ALTER PROCEDURE public.insertdatastreets(name character varying) OWNER TO ddzpcgyx;

--
-- Name: insertdatatilingtypes(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdatatilingtypes(name character varying)
    LANGUAGE sql
    AS $$

   INSERT INTO "tilingsTypes" (name) values (name::varchar)

$$;


ALTER PROCEDURE public.insertdatatilingtypes(name character varying) OWNER TO ddzpcgyx;

--
-- Name: insertdatatreeorshrub(integer, integer, integer, integer, integer, integer, integer, integer, real, character varying, character varying, text, integer, real, double precision, double precision, character varying, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdatatreeorshrub(mainobjectid integer, treeorshrublifestatuscategoryid integer, lifeformid integer, specieid integer, plantingtype integer, sitenumber integer, currentage integer, landingage integer, heig real, inventdate character varying, landingdate character varying, characteris text, recommendationid integer, diameteratheight13 real, lat double precision, long double precision, imagepath character varying, leafimgaepath character varying)
    LANGUAGE sql
    AS $$
insert into "treesAndShrubs" ("mainObjectId", "treeOrShrubLifeStatusCategoryId",
                              "lifeFormId", "specieId", "plantingType", "siteNumber",
                              "currentAge", "landingAge",
                              height, "inventDate", "landingDate", characteristic, "recommendationId", "diameterAtHeight13",
                              "latitude ", longitude, "plantImagePath", "leafImagePath")
values (mainObjectId, treeOrShrubLifeStatusCategoryId, lifeFormId, specieId, plantingType, siteNumber,
        currentAge, landingAge, heig,
        TO_DATE(inventDate, 'DD/MM/YYYY'), TO_DATE(landingDate, 'DD/MM/YYYY'),
        characteris, recommendationId, diameterAtHeight13,
        lat, long, imagePath, leafImgaePath);

$$;


ALTER PROCEDURE public.insertdatatreeorshrub(mainobjectid integer, treeorshrublifestatuscategoryid integer, lifeformid integer, specieid integer, plantingtype integer, sitenumber integer, currentage integer, landingage integer, heig real, inventdate character varying, landingdate character varying, characteris text, recommendationid integer, diameteratheight13 real, lat double precision, long double precision, imagepath character varying, leafimgaepath character varying) OWNER TO ddzpcgyx;

--
-- Name: insertdatatreeorshrub(integer, integer, integer, integer, integer, integer, integer, integer, integer, real, character varying, character varying, text, integer, real, double precision, double precision, character varying, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdatatreeorshrub(mainobjectid integer, treeorshrublifestatuscategoryid integer, lifeformid integer, specieid integer, plantingtype integer, sitenumber integer, plantnumber integer, currentage integer, landingage integer, heig real, inventdate character varying, landingdate character varying, characteris text, recommendationid integer, diameteratheight13 real, lat double precision, long double precision, imagepath character varying, leafimgaepath character varying)
    LANGUAGE sql
    AS $$
insert into "treesAndShrubs" ("mainObjectId", "treeOrShrubLifeStatusCategoryId",
                              "lifeFormId", "specieId", "plantingType", "siteNumber", "plantNumber",
                              "currentAge", "landingAge",
                              height, "inventDate", "landingDate", characteristic, "recommendationId", "diameterAtHeight13",
                              "latitude ", longitude, "plantImagePath", "leafImagePath")
values (mainObjectId, treeOrShrubLifeStatusCategoryId, lifeFormId, specieId, plantingType, siteNumber,
        plantNumber, currentAge, landingAge, heig,
        TO_DATE(inventDate, 'DD/MM/YYYY'), TO_DATE(landingDate, 'DD/MM/YYYY'),
        characteris, recommendationId, diameterAtHeight13,
        lat, long, imagePath, leafImgaePath);

$$;


ALTER PROCEDURE public.insertdatatreeorshrub(mainobjectid integer, treeorshrublifestatuscategoryid integer, lifeformid integer, specieid integer, plantingtype integer, sitenumber integer, plantnumber integer, currentage integer, landingage integer, heig real, inventdate character varying, landingdate character varying, characteris text, recommendationid integer, diameteratheight13 real, lat double precision, long double precision, imagepath character varying, leafimgaepath character varying) OWNER TO ddzpcgyx;

--
-- Name: insertdatatreesandshrubslifestatuscategorys(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdatatreesandshrubslifestatuscategorys(name character varying)
    LANGUAGE sql
    AS $$

   INSERT INTO "TreesAndShrubsLifeStatusCategory" (name) values (name::varchar)

$$;


ALTER PROCEDURE public.insertdatatreesandshrubslifestatuscategorys(name character varying) OWNER TO ddzpcgyx;

--
-- Name: insertdatatreesandshrubsplantingtypes(character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.insertdatatreesandshrubsplantingtypes(name character varying)
    LANGUAGE sql
    AS $$

   INSERT INTO "treesAndShrubsPlantingTypes" (name) values (name::varchar)

$$;


ALTER PROCEDURE public.insertdatatreesandshrubsplantingtypes(name character varying) OWNER TO ddzpcgyx;

--
-- Name: matchtreeorshrubstump(); Type: FUNCTION; Schema: public; Owner: ddzpcgyx
--

CREATE FUNCTION public.matchtreeorshrubstump() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

    BEGIN

        IF (TG_OP = 'DELETE') THEN

        if ( select "checkToSum" from "passportPlantationObjects" where "ID_Object" = old."mainObjectId") then

                   if ((select name from "lifeForms" where old."lifeFormId" = "lifeForms"."lifeFormsId") = 'дерево') then
           update "passportPlantationObjects"  set "treesCount" = "treesCount" - 1 where "ID_Object" = old."mainObjectId";

        elseif ((select name from "lifeForms" where old."lifeFormId" = "lifeForms"."lifeFormsId") = 'кустарник') then
          update "passportPlantationObjects" as p  set "shrubsCount" = "shrubsCount" - 1 where "ID_Object" = old."mainObjectId";
        end if;
                   end if;
end if;
         if (TG_OP = 'INSERT') THEN

if ( select "checkToSum" from "passportPlantationObjects" where "ID_Object" = new."mainObjectId") then


                  if ((select name from "lifeForms" where new."lifeFormId" = "lifeForms"."lifeFormsId") = 'дерево') then
           update "passportPlantationObjects"  set "treesCount" = "treesCount" + 1 where "ID_Object" = new."mainObjectId";

        elseif ((select name from "lifeForms" where new."lifeFormId" = "lifeForms"."lifeFormsId") = 'кустарник') then
          update "passportPlantationObjects" as p  set "shrubsCount" = "shrubsCount" + 1 where "ID_Object" = new."mainObjectId";
        end if;
end if;
        end if;

        RETURN NULL;
    END;
$$;


ALTER FUNCTION public.matchtreeorshrubstump() OWNER TO ddzpcgyx;

SET default_tablespace = '';

--
-- Name: treesAndShrubs; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."treesAndShrubs" (
    "treesAndShrubsId" integer NOT NULL,
    "mainObjectId" integer NOT NULL,
    "treeOrShrubLifeStatusCategoryId" integer NOT NULL,
    "lifeFormId" integer,
    "specieId" integer NOT NULL,
    "siteNumber" integer NOT NULL,
    "plantNumber" integer NOT NULL,
    "leafImagePath" character varying(60),
    "plantImagePath" character varying(60),
    "currentAge" integer DEFAULT 0 NOT NULL,
    "landingAge" integer NOT NULL,
    "landingDate" date NOT NULL,
    height real DEFAULT 0 NOT NULL,
    "inventDate" date NOT NULL,
    characteristic text,
    "recommendationId" integer,
    "diameterAtHeight13" real DEFAULT 0 NOT NULL,
    "latitude " double precision NOT NULL,
    longitude double precision NOT NULL,
    "plantingType" integer NOT NULL,
    CONSTRAINT currentagecheck CHECK (("currentAge" > 0)),
    CONSTRAINT heightcheck CHECK ((height > (0)::double precision)),
    CONSTRAINT landingagecheck CHECK (("landingAge" > 0))
);


ALTER TABLE public."treesAndShrubs" OWNER TO ddzpcgyx;

--
-- Name: TABLE "treesAndShrubs"; Type: COMMENT; Schema: public; Owner: ddzpcgyx
--

COMMENT ON TABLE public."treesAndShrubs" IS 'инвентаризация деревьев и кустарников';


--
-- Name: process(regclass); Type: FUNCTION; Schema: public; Owner: ddzpcgyx
--

CREATE FUNCTION public.process(_tbl regclass) RETURNS SETOF public."treesAndShrubs"
    LANGUAGE plpgsql
    AS $$
BEGIN
RETURN QUERY EXECUTE 'SELECT * FROM ' || _tbl || 'WHERE _tbl.mainObjectId = 2';
END
$$;


ALTER FUNCTION public.process(_tbl regclass) OWNER TO ddzpcgyx;

--
-- Name: process(regclass, integer); Type: FUNCTION; Schema: public; Owner: ddzpcgyx
--

CREATE FUNCTION public.process(_tbl regclass, firtarg integer) RETURNS SETOF public."treesAndShrubs"
    LANGUAGE plpgsql
    AS $_$
BEGIN
RETURN QUERY EXECUTE 'SELECT * FROM ' || _tbl || 'WHERE' || $1 || '.mainObjectId = ' || $2;
END
$_$;


ALTER FUNCTION public.process(_tbl regclass, firtarg integer) OWNER TO ddzpcgyx;

--
-- Name: sumtreeorshrubstump(); Type: FUNCTION; Schema: public; Owner: ddzpcgyx
--

CREATE FUNCTION public.sumtreeorshrubstump() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

    BEGIN

        if ( select "checkToSum" from "passportPlantationObjects" where "ID_Object" = new."mainObjectId") then

        if ((select name from "lifeForms" where new."lifeFormId" = "lifeForms"."lifeFormId") = 'дерево') then
           update "passportPlantationObjects"  set "treesCount" = "treesCount" + 1 where "ID_Object" = new."mainObjectId";
        end if;

        if ((select name from "lifeForms" where new."lifeFormId" = "lifeForms"."lifeFormId") = 'кустарник') then
          update "passportPlantationObjects" as p  set "shrubsCount" = "shrubsCount" + 1 where "ID_Object" = new."mainObjectId";
        end if;

      end if;

        RETURN NEW;
    END;
$$;


ALTER FUNCTION public.sumtreeorshrubstump() OWNER TO ddzpcgyx;

--
-- Name: testfunc(integer, integer); Type: FUNCTION; Schema: public; Owner: ddzpcgyx
--

CREATE FUNCTION public.testfunc(ageleft integer, ageright integer) RETURNS TABLE(mainobject character varying, lifestatuscategory character varying, plantingtype character varying, lifeform character varying, specie character varying, long double precision, lat double precision, sitenumber integer, plantnumber character varying, leafimagepath character varying, plantimagepath character varying, currentage integer, landingage integer, landingdate date, height real, inventdate date, diametrat13 real, recomendations text, characteristic text, treeorshrubid integer)
    LANGUAGE sql
    AS $$
    SELECT * from treesAndShrubsAllData;
$$;


ALTER FUNCTION public.testfunc(ageleft integer, ageright integer) OWNER TO ddzpcgyx;

--
-- Name: treesandshrubsalldataformainobjectid(integer); Type: FUNCTION; Schema: public; Owner: ddzpcgyx
--

CREATE FUNCTION public.treesandshrubsalldataformainobjectid(mainobjectid integer) RETURNS TABLE(lifestatuscategory character varying, plantingtype character varying, lifeform character varying, specie character varying, cutrecomend character varying, longitude double precision, latitude double precision, "plantNumber" integer, "leafImagePath" character varying, "plantImagePath" character varying, "currentAge" integer, "landingAge" integer, "landingDate" date, height real, "inventDate" date, "diameterAtHeight13" real, characteristic text, "treeOrShrubId" integer)
    LANGUAGE sql
    AS $$

    select  tls.name as lifeStatusCategory, tspt.name as plantingType,
lf.name as lifeForm, sp.name as specie, rec.name as cutRecomend,
tas.longitude as longitude, tas."latitude " as latitude, "plantNumber", "leafImagePath", "plantImagePath",
       "currentAge", "landingAge", "landingDate", height, "inventDate", "diameterAtHeight13",
tas.characteristic as characteristic, "treesAndShrubsId"
from "treesAndShrubs" as tas, "TreesAndShrubsLifeStatusCategory" as tls, "lifeForms" as lf, species as sp,
"treesAndShrubsPlantingTypes" as tspt, "cutRecomend" as rec
    where "plantingType" = tspt."treesAndShrubsPlantingTypesId" and
tas."mainObjectId" = mainObjectId and
tas."treeOrShrubLifeStatusCategoryId" = tls."TreesAndShrubsLifeStatusCategoryId" and
tas."lifeFormId" = lf."lifeFormsId" and
tas."specieId" = sp."speciesId" and
tas."recommendationId" = rec."cutRecomendId"


    $$;


ALTER FUNCTION public.treesandshrubsalldataformainobjectid(mainobjectid integer) OWNER TO ddzpcgyx;

--
-- Name: treesandshrubsalldataforsitenumberandmainobjectid(integer, integer); Type: FUNCTION; Schema: public; Owner: ddzpcgyx
--

CREATE FUNCTION public.treesandshrubsalldataforsitenumberandmainobjectid(mainobjectid integer, sitenumber integer) RETURNS TABLE(lifestatuscategory character varying, plantingtype character varying, lifeform character varying, specie character varying, cutrecomend character varying, longitude double precision, latitude double precision, "plantNumber" integer, "leafImagePath" character varying, "plantImagePath" character varying, "currentAge" integer, "landingAge" integer, "landingDate" date, height real, "inventDate" date, "diameterAtHeight13" real, characteristic text, "treeOrShrubId" integer)
    LANGUAGE sql
    AS $$

select tls.name as lifeStatusCategory, tspt.name as plantingType,
lf.name as lifeForm, sp.name as specie, cutRecomend,
tas.longitude as longitude, tas."latitude " as latitude, "plantNumber", "leafImagePath", "plantImagePath",
       "currentAge", "landingAge", "landingDate", height, "inventDate", "diameterAtHeight13",
tas.characteristic as characteristic, "treesAndShrubsId" from
(select "treesAndShrubsId","mainObjectId","treeOrShrubLifeStatusCategoryId","lifeFormId","specieId",
        "plantNumber","leafImagePath","plantImagePath","currentAge","landingAge","landingDate",
        height,"inventDate",characteristic,"latitude ",longitude,"diameterAtHeight13","plantingType",
        name as cutRecomend
from "treesAndShrubs" left join "cutRecomend"
    on "treesAndShrubs"."recommendationId" = "cutRecomend"."cutRecomendId"
where "siteNumber" = siteNumber and "mainObjectId" = mainObjectId) as tas,
            "TreesAndShrubsLifeStatusCategory" as tls, "lifeForms" as lf, species as sp,
"treesAndShrubsPlantingTypes" as tspt
where "plantingType" = tspt."treesAndShrubsPlantingTypesId" and
tas."mainObjectId" = mainObjectId and
tas."treeOrShrubLifeStatusCategoryId" = tls."TreesAndShrubsLifeStatusCategoryId" and
tas."lifeFormId" = lf."lifeFormsId" and
tas."specieId" = sp."speciesId"
order by "plantNumber"    ;


    $$;


ALTER FUNCTION public.treesandshrubsalldataforsitenumberandmainobjectid(mainobjectid integer, sitenumber integer) OWNER TO ddzpcgyx;

--
-- Name: treesandshrubsdatabyid(integer); Type: FUNCTION; Schema: public; Owner: ddzpcgyx
--

CREATE FUNCTION public.treesandshrubsdatabyid(treesorshrubsid integer) RETURNS public."treesAndShrubs"
    LANGUAGE sql
    AS $$
  SELECT * FROM "treesAndShrubs" where "treesAndShrubsId" = treesOrShrubsId;
$$;


ALTER FUNCTION public.treesandshrubsdatabyid(treesorshrubsid integer) OWNER TO ddzpcgyx;

--
-- Name: treesandshrubsdatacurrentagebetween(integer, integer); Type: FUNCTION; Schema: public; Owner: ddzpcgyx
--

CREATE FUNCTION public.treesandshrubsdatacurrentagebetween(ageleft integer, ageright integer) RETURNS SETOF public."treesAndShrubs"
    LANGUAGE sql
    AS $$
  SELECT * FROM "treesAndShrubs" where "treesAndShrubs"."currentAge" BETWEEN ageLeft AND ageRight;
$$;


ALTER FUNCTION public.treesandshrubsdatacurrentagebetween(ageleft integer, ageright integer) OWNER TO ddzpcgyx;

--
-- Name: treesandshrubsdataheightbetween(real, real); Type: FUNCTION; Schema: public; Owner: ddzpcgyx
--

CREATE FUNCTION public.treesandshrubsdataheightbetween(heightleft real, heightright real) RETURNS SETOF public."treesAndShrubs"
    LANGUAGE sql
    AS $$
  SELECT * FROM "treesAndShrubs" where "treesAndShrubs"."height" BETWEEN heightLeft AND heightRight;
$$;


ALTER FUNCTION public.treesandshrubsdataheightbetween(heightleft real, heightright real) OWNER TO ddzpcgyx;

--
-- Name: treesandshrubsdatainventdatebetween(character varying, character varying); Type: FUNCTION; Schema: public; Owner: ddzpcgyx
--

CREATE FUNCTION public.treesandshrubsdatainventdatebetween(dateleft character varying, dateright character varying) RETURNS SETOF public."treesAndShrubs"
    LANGUAGE sql
    AS $$
  SELECT * FROM "treesAndShrubs" where "treesAndShrubs"."inventDate" BETWEEN TO_DATE(dateLeft, 'DD/MM/YYYY') AND TO_DATE(dateRight, 'DD/MM/YYYY');
$$;


ALTER FUNCTION public.treesandshrubsdatainventdatebetween(dateleft character varying, dateright character varying) OWNER TO ddzpcgyx;

--
-- Name: treesandshrubsdatalandingagebetween(integer, integer); Type: FUNCTION; Schema: public; Owner: ddzpcgyx
--

CREATE FUNCTION public.treesandshrubsdatalandingagebetween(ageleft integer, ageright integer) RETURNS SETOF public."treesAndShrubs"
    LANGUAGE sql
    AS $$
  SELECT * FROM "treesAndShrubs" where "treesAndShrubs"."landingAge" BETWEEN ageLeft AND ageRight;
$$;


ALTER FUNCTION public.treesandshrubsdatalandingagebetween(ageleft integer, ageright integer) OWNER TO ddzpcgyx;

--
-- Name: treesandshrubsdatalandingdatebetween(character varying, character varying); Type: FUNCTION; Schema: public; Owner: ddzpcgyx
--

CREATE FUNCTION public.treesandshrubsdatalandingdatebetween(dateleft character varying, dateright character varying) RETURNS SETOF public."treesAndShrubs"
    LANGUAGE sql
    AS $$
  SELECT * FROM "treesAndShrubs" where "treesAndShrubs"."landingDate" BETWEEN TO_DATE(dateLeft, 'DD/MM/YYYY') AND TO_DATE(dateRight, 'DD/MM/YYYY');
$$;


ALTER FUNCTION public.treesandshrubsdatalandingdatebetween(dateleft character varying, dateright character varying) OWNER TO ddzpcgyx;

--
-- Name: treesandshrubsdatasitenumberswithmainobjectid(integer); Type: FUNCTION; Schema: public; Owner: ddzpcgyx
--

CREATE FUNCTION public.treesandshrubsdatasitenumberswithmainobjectid(idmainobject integer) RETURNS TABLE(sitenumber integer)
    LANGUAGE sql
    AS $$
    select distinct "siteNumber" from "treesAndShrubs" where "mainObjectId" = idMainObject
    $$;


ALTER FUNCTION public.treesandshrubsdatasitenumberswithmainobjectid(idmainobject integer) OWNER TO ddzpcgyx;

--
-- Name: updatedatabalanceholders(integer, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedatabalanceholders(id integer, nme character varying)
    LANGUAGE sql
    AS $$

UPDATE "balanceHolders"
SET name = nme

WHERE "balanceHoldersId" = id

    $$;


ALTER PROCEDURE public.updatedatabalanceholders(id integer, nme character varying) OWNER TO ddzpcgyx;

--
-- Name: updatedatacutrecomendbyid(integer, character varying, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedatacutrecomendbyid(id integer, nme character varying, clarif character varying)
    LANGUAGE sql
    AS $$

UPDATE "cutRecomend"
SET name = nme,
    clarification = clarif

WHERE "cutRecomendId" = id

    $$;


ALTER PROCEDURE public.updatedatacutrecomendbyid(id integer, nme character varying, clarif character varying) OWNER TO ddzpcgyx;

--
-- Name: updatedatadistricts(integer, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedatadistricts(id integer, nme character varying)
    LANGUAGE sql
    AS $$

UPDATE "districts"
SET name = nme

WHERE "districtsId" = id

    $$;


ALTER PROCEDURE public.updatedatadistricts(id integer, nme character varying) OWNER TO ddzpcgyx;

--
-- Name: updatedataflowergardenlifestatuscategory(integer, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedataflowergardenlifestatuscategory(id integer, nme character varying)
    LANGUAGE sql
    AS $$

UPDATE "flowerGardenLifeStatusCategory"
SET name = nme

WHERE "flowerGardenLifeStatusCategoryId" = id

    $$;


ALTER PROCEDURE public.updatedataflowergardenlifestatuscategory(id integer, nme character varying) OWNER TO ddzpcgyx;

--
-- Name: updatedataflowergardens(integer, integer, integer, integer, integer, integer, character varying, text, text, text); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedataflowergardens(flowergardenid integer, flowergardentypeid integer, flowergardenlifestatuscategoryid integer, flowergardengrassingtypeid integer, sitenumber integer, areaval integer, dat character varying, recommend text, "stateсharacteristic" text, flowersgardenscomposit text)
    LANGUAGE sql
    AS $$
    UPDATE "flowerGardens"
        set "flowerGardenTypeId" = flowergardentypeid,
            "flowerGardenLifeStatusCategoryId" = flowergardenlifestatuscategoryid,
            "flowerGardenGrassingTypeId" = flowerGardenGrassingTypeID,
            "siteNumber" = sitenumber,
            "areaVal" = areaVal,
            date = TO_DATE(Dat, 'DD/MM/YYYY'),
            recommendations = recommend,
            "stateСharacteristic" = stateсharacteristic,
            "flowersGardensComposit" = flowersgardenscomposit
    where "flowerGardensId" = flowerGardenId



$$;


ALTER PROCEDURE public.updatedataflowergardens(flowergardenid integer, flowergardentypeid integer, flowergardenlifestatuscategoryid integer, flowergardengrassingtypeid integer, sitenumber integer, areaval integer, dat character varying, recommend text, "stateсharacteristic" text, flowersgardenscomposit text) OWNER TO ddzpcgyx;

--
-- Name: updatedataflowergardensgrassingtypes(integer, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedataflowergardensgrassingtypes(id integer, nme character varying)
    LANGUAGE sql
    AS $$

UPDATE "flowerGardensGrassingTypes"
SET name = nme

WHERE "flowerGardensGrassingTypesId" = id

    $$;


ALTER PROCEDURE public.updatedataflowergardensgrassingtypes(id integer, nme character varying) OWNER TO ddzpcgyx;

--
-- Name: updatedataflowergardenstypes(integer, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedataflowergardenstypes(id integer, nme character varying)
    LANGUAGE sql
    AS $$

UPDATE "flowerGardensTypes"
SET name = nme

WHERE "flowerGardensTypesId" = id

    $$;


ALTER PROCEDURE public.updatedataflowergardenstypes(id integer, nme character varying) OWNER TO ddzpcgyx;

--
-- Name: updatedatalandscapingcategorys(integer, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedatalandscapingcategorys(id integer, nme character varying)
    LANGUAGE sql
    AS $$

UPDATE "landscapingCategorys"
SET name = nme

WHERE "landscapingCategorysId" = id

    $$;


ALTER PROCEDURE public.updatedatalandscapingcategorys(id integer, nme character varying) OWNER TO ddzpcgyx;

--
-- Name: updatedatalifeforms(integer, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedatalifeforms(id integer, nme character varying)
    LANGUAGE sql
    AS $$

UPDATE "lifeForms"
SET name = nme

WHERE "lifeFormsId" = id

    $$;


ALTER PROCEDURE public.updatedatalifeforms(id integer, nme character varying) OWNER TO ddzpcgyx;

--
-- Name: updatedatamainobject(integer, character varying, integer, integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedatamainobject(id integer, mainobjectname character varying, balanceholderid integer, mainobjecttypeid integer)
    LANGUAGE sql
    AS $$

    update "mainObjects"
    set  name = MainObjectName,
        "balanceHolderId" =balanceHolderId,
        "mainObjectTypeId" = mainObjectTypeId
    where "mainObjectsId" = id

    $$;


ALTER PROCEDURE public.updatedatamainobject(id integer, mainobjectname character varying, balanceholderid integer, mainobjecttypeid integer) OWNER TO ddzpcgyx;

--
-- Name: updatedatamainobject(integer, integer, integer, integer, integer, integer, character varying, text, text, text); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedatamainobject(flowergardenid integer, flowergardentypeid integer, flowergardenlifestatuscategoryid integer, flowergardengrassingtypeid integer, sitenumber integer, areaval integer, dat character varying, recommend text, "stateсharacteristic" text, flowersgardenscomposit text)
    LANGUAGE sql
    AS $$
    UPDATE "flowerGardens"
        set "flowerGardenTypeId" = flowergardentypeid,
            "flowerGardenLifeStatusCategoryId" = flowergardenlifestatuscategoryid,
            "flowerGardenGrassingTypeId" = flowerGardenGrassingTypeID,
            "siteNumber" = sitenumber,
            "areaVal" = areaVal,
            date = TO_DATE(Dat, 'DD/MM/YYYY'),
            recommendations = recommend,
            "stateСharacteristic" = stateсharacteristic,
            "flowersGardensComposit" = flowersgardenscomposit
    where "flowerGardensId" = flowerGardenId



$$;


ALTER PROCEDURE public.updatedatamainobject(flowergardenid integer, flowergardentypeid integer, flowergardenlifestatuscategoryid integer, flowergardengrassingtypeid integer, sitenumber integer, areaval integer, dat character varying, recommend text, "stateсharacteristic" text, flowersgardenscomposit text) OWNER TO ddzpcgyx;

--
-- Name: updatedatamainobjecttypes(integer, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedatamainobjecttypes(id integer, nme character varying)
    LANGUAGE sql
    AS $$

UPDATE "mainObjectTypes"
SET name = nme

WHERE "mainObjectTypesId" = id

    $$;


ALTER PROCEDURE public.updatedatamainobjecttypes(id integer, nme character varying) OWNER TO ddzpcgyx;

--
-- Name: updatedatapassportplantationobject(integer, character varying, integer, character varying, integer, character varying, integer, integer, integer, integer, integer, integer, integer, boolean); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedatapassportplantationobject(id integer, cadastralnumber character varying, sitescount integer, dateobjcreate character varying, landscapingcategoryid integer, schemapath character varying, asphaltm integer, gravelm integer, slabsm integer, primingm integer, buildingsm integer, pondsm integer, id_object integer, checktosum boolean)
    LANGUAGE sql
    AS $$
    UPDATE "passportPlantationObjects"
    set " cadastralNumber" = cadastralNumber,
        "sitesCount" = sitesCount,
        "dateObjCreate" = TO_DATE(dateObjCreate, 'DD/MM/YYYY'),
        "landscapingCategoryId" = landscapingCategoryId,
        "schemaPath" = schemaPath,
        "asphaltM" = asphaltM,
        "gravelM" = gravelM,
        "slabsM" = slabsM,
        "primingM" = primingM,
        "buildingsM" =buildingsM,
        "pondsM" = pondsM,
        "ID_Object" = ID_Object,
        "checkToSum" = checkToSum
    where "passportPlantationObjectId" =id
    $$;


ALTER PROCEDURE public.updatedatapassportplantationobject(id integer, cadastralnumber character varying, sitescount integer, dateobjcreate character varying, landscapingcategoryid integer, schemapath character varying, asphaltm integer, gravelm integer, slabsm integer, primingm integer, buildingsm integer, pondsm integer, id_object integer, checktosum boolean) OWNER TO ddzpcgyx;

--
-- Name: updatedatapassportplantationobject(integer, character varying, integer, character varying, integer, character varying, integer, integer, integer, integer, integer, integer, integer, boolean, integer, integer, integer, integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedatapassportplantationobject(id integer, cadastralnumber character varying, sitescount integer, dateobjcreate character varying, landscapingcategoryid integer, schemapath character varying, asphaltm integer, gravelm integer, slabsm integer, primingm integer, buildingsm integer, pondsm integer, id_object integer, checktosum boolean, streetlength integer, avgpassagewidth integer, totalobjarea integer, anothrm integer)
    LANGUAGE sql
    AS $$
    UPDATE "passportPlantationObjects"
    set " cadastralNumber" = cadastralNumber,
        "sitesCount" = sitesCount,
        "dateObjCreate" = TO_DATE(dateObjCreate, 'DD/MM/YYYY'),
        "landscapingCategoryId" = landscapingCategoryId,
        "schemaPath" = schemaPath,
        "asphaltM" = asphaltM,
        "gravelM" = gravelM,
        "slabsM" = slabsM,
        "primingM" = primingM,
        "buildingsM" =buildingsM,
        "pondsM" = pondsM,
        "ID_Object" = ID_Object,
        "checkToSum" = checkToSum,
        "lengthOfStreet" = streetLength,
        "avgPassageWidthM" = avgPassageWidth,
        "totalObjAreaKM" = totalObjArea,
        "anothrM" = anothrM

    where "passportPlantationObjectsId" =id
    $$;


ALTER PROCEDURE public.updatedatapassportplantationobject(id integer, cadastralnumber character varying, sitescount integer, dateobjcreate character varying, landscapingcategoryid integer, schemapath character varying, asphaltm integer, gravelm integer, slabsm integer, primingm integer, buildingsm integer, pondsm integer, id_object integer, checktosum boolean, streetlength integer, avgpassagewidth integer, totalobjarea integer, anothrm integer) OWNER TO ddzpcgyx;

--
-- Name: updatedataplantationtypes(integer, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedataplantationtypes(id integer, nme character varying)
    LANGUAGE sql
    AS $$

UPDATE "plantationTypes"
SET name = nme

WHERE "plantationTypesId" = id

    $$;


ALTER PROCEDURE public.updatedataplantationtypes(id integer, nme character varying) OWNER TO ddzpcgyx;

--
-- Name: updatedataspecies(integer, character varying, integer); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedataspecies(id integer, nme character varying, idabove integer)
    LANGUAGE sql
    AS $$

UPDATE "species"
SET name = nme,
    "aboveSpecieId" = idAbove

WHERE "speciesId" = id

    $$;


ALTER PROCEDURE public.updatedataspecies(id integer, nme character varying, idabove integer) OWNER TO ddzpcgyx;

--
-- Name: updatedatastreets(integer, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedatastreets(id integer, nme character varying)
    LANGUAGE sql
    AS $$

UPDATE "streets"
SET name = nme

WHERE "streetsId" = id

    $$;


ALTER PROCEDURE public.updatedatastreets(id integer, nme character varying) OWNER TO ddzpcgyx;

--
-- Name: updatedatatilingstypes(integer, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedatatilingstypes(id integer, nme character varying)
    LANGUAGE sql
    AS $$

UPDATE "tilingsTypes"
SET name = nme

WHERE "tilingsTypesId" = id

    $$;


ALTER PROCEDURE public.updatedatatilingstypes(id integer, nme character varying) OWNER TO ddzpcgyx;

--
-- Name: updatedatatreeorshrub(integer, integer, integer, integer, integer, integer, integer, integer, integer, integer, real, character varying, character varying, text, integer, real, double precision, double precision, character varying, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedatatreeorshrub(id integer, mainobjectid integer, treeorshrublifestatuscategoryid integer, lifeformid integer, specieid integer, plantingtype integer, sitenumber integer, plantnumber integer, currentage integer, landingage integer, heig real, inventdate character varying, landingdate character varying, characteris text, recommendationid integer, diameteratheight13 real, lat double precision, long double precision, imagepath character varying, leafimgaepath character varying)
    LANGUAGE sql
    AS $$

UPDATE "treesAndShrubs"
Set "mainObjectId" = mainObjectId,
    "treeOrShrubLifeStatusCategoryId" = treeOrShrubLifeStatusCategoryId,
    "lifeFormId" = lifeFormId,
    "specieId" = specieId,
    "plantingType" = plantingType,
    "siteNumber" = siteNumber,
    "plantNumber" = plantNumber,
    "currentAge" = currentAge,
    "landingAge" = landingAge,
    height = heig,
    "inventDate" = TO_DATE(inventDate, 'DD/MM/YYYY'),
    "landingDate" = TO_DATE(landingDate, 'DD/MM/YYYY'),
    characteristic = characteris,
    "recommendationId" =recommendationId,
    "diameterAtHeight13" = diameterAtHeight13,
    "latitude " = lat,
    longitude = long,
    "plantImagePath" = imagePath,
    "leafImagePath" =leafImgaePath

WHERE "treesAndShrubsId" = id

    $$;


ALTER PROCEDURE public.updatedatatreeorshrub(id integer, mainobjectid integer, treeorshrublifestatuscategoryid integer, lifeformid integer, specieid integer, plantingtype integer, sitenumber integer, plantnumber integer, currentage integer, landingage integer, heig real, inventdate character varying, landingdate character varying, characteris text, recommendationid integer, diameteratheight13 real, lat double precision, long double precision, imagepath character varying, leafimgaepath character varying) OWNER TO ddzpcgyx;

--
-- Name: updatedatatreesandshrubslifestatuscategory(integer, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedatatreesandshrubslifestatuscategory(id integer, nme character varying)
    LANGUAGE sql
    AS $$

UPDATE "TreesAndShrubsLifeStatusCategory"
SET name = nme

WHERE "TreesAndShrubsLifeStatusCategoryId" = id

    $$;


ALTER PROCEDURE public.updatedatatreesandshrubslifestatuscategory(id integer, nme character varying) OWNER TO ddzpcgyx;

--
-- Name: updatedatatreesandshrubsplantingtypes(integer, character varying); Type: PROCEDURE; Schema: public; Owner: ddzpcgyx
--

CREATE PROCEDURE public.updatedatatreesandshrubsplantingtypes(id integer, nme character varying)
    LANGUAGE sql
    AS $$

UPDATE "treesAndShrubsPlantingTypes"
SET name = nme

WHERE "treesAndShrubsPlantingTypesId" = id

    $$;


ALTER PROCEDURE public.updatedatatreesandshrubsplantingtypes(id integer, nme character varying) OWNER TO ddzpcgyx;

--
-- Name: updateplantnumber(); Type: FUNCTION; Schema: public; Owner: ddzpcgyx
--

CREATE FUNCTION public.updateplantnumber() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

    BEGIN



            if ((select max("plantNumber") from "treesAndShrubs" where "siteNumber" = new."siteNumber") is null)

              then new."plantNumber" = 1;

            else
               new."plantNumber" = (select max("plantNumber") from "treesAndShrubs" where "siteNumber" = new."siteNumber") + 1;
                end if;



        RETURN new;
    END;
$$;


ALTER FUNCTION public.updateplantnumber() OWNER TO ddzpcgyx;

--
-- Name: TreesAndShrubsLifeStatusCategory; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."TreesAndShrubsLifeStatusCategory" (
    "TreesAndShrubsLifeStatusCategoryId" integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public."TreesAndShrubsLifeStatusCategory" OWNER TO ddzpcgyx;

--
-- Name: TABLE "TreesAndShrubsLifeStatusCategory"; Type: COMMENT; Schema: public; Owner: ddzpcgyx
--

COMMENT ON TABLE public."TreesAndShrubsLifeStatusCategory" IS 'справочник категорий жизненного состояния деревьев и кустарников';


--
-- Name: TreesAndShrubsLifeStatusCategory_lifeStatusCategoryId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."TreesAndShrubsLifeStatusCategory_lifeStatusCategoryId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."TreesAndShrubsLifeStatusCategory_lifeStatusCategoryId_seq" OWNER TO ddzpcgyx;

--
-- Name: TreesAndShrubsLifeStatusCategory_lifeStatusCategoryId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."TreesAndShrubsLifeStatusCategory_lifeStatusCategoryId_seq" OWNED BY public."TreesAndShrubsLifeStatusCategory"."TreesAndShrubsLifeStatusCategoryId";


--
-- Name: aboveSpecie; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."aboveSpecie" (
    "aboveSpecieId" integer NOT NULL,
    name character varying(30) NOT NULL,
    "imagePath" character varying(100)
);


ALTER TABLE public."aboveSpecie" OWNER TO ddzpcgyx;

--
-- Name: aboveSpecie_aboveSpecieId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."aboveSpecie_aboveSpecieId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."aboveSpecie_aboveSpecieId_seq" OWNER TO ddzpcgyx;

--
-- Name: aboveSpecie_aboveSpecieId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."aboveSpecie_aboveSpecieId_seq" OWNED BY public."aboveSpecie"."aboveSpecieId";


--
-- Name: balanceHolders; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."balanceHolders" (
    "balanceHoldersId" integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public."balanceHolders" OWNER TO ddzpcgyx;

--
-- Name: balanceHolders_balanceHolderId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."balanceHolders_balanceHolderId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."balanceHolders_balanceHolderId_seq" OWNER TO ddzpcgyx;

--
-- Name: balanceHolders_balanceHolderId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."balanceHolders_balanceHolderId_seq" OWNED BY public."balanceHolders"."balanceHoldersId";


--
-- Name: cutRecomend; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."cutRecomend" (
    "cutRecomendId" integer NOT NULL,
    name character varying(60) NOT NULL,
    clarification text
);


ALTER TABLE public."cutRecomend" OWNER TO ddzpcgyx;

--
-- Name: cutRecomend_recomendId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."cutRecomend_recomendId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."cutRecomend_recomendId_seq" OWNER TO ddzpcgyx;

--
-- Name: cutRecomend_recomendId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."cutRecomend_recomendId_seq" OWNED BY public."cutRecomend"."cutRecomendId";


--
-- Name: districts; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public.districts (
    "districtsId" integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.districts OWNER TO ddzpcgyx;

--
-- Name: TABLE districts; Type: COMMENT; Schema: public; Owner: ddzpcgyx
--

COMMENT ON TABLE public.districts IS 'Справочник районов';


--
-- Name: districts_districtId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."districts_districtId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."districts_districtId_seq" OWNER TO ddzpcgyx;

--
-- Name: districts_districtId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."districts_districtId_seq" OWNED BY public.districts."districtsId";


--
-- Name: flowerGardenLifeStatusCategory; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."flowerGardenLifeStatusCategory" (
    "flowerGardenLifeStatusCategoryId" integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public."flowerGardenLifeStatusCategory" OWNER TO ddzpcgyx;

--
-- Name: TABLE "flowerGardenLifeStatusCategory"; Type: COMMENT; Schema: public; Owner: ddzpcgyx
--

COMMENT ON TABLE public."flowerGardenLifeStatusCategory" IS 'справочник жизненного состояние цветов и клумб';


--
-- Name: flowerGardenLifeStatusCategory_LifeStatusCategoryId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."flowerGardenLifeStatusCategory_LifeStatusCategoryId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."flowerGardenLifeStatusCategory_LifeStatusCategoryId_seq" OWNER TO ddzpcgyx;

--
-- Name: flowerGardenLifeStatusCategory_LifeStatusCategoryId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."flowerGardenLifeStatusCategory_LifeStatusCategoryId_seq" OWNED BY public."flowerGardenLifeStatusCategory"."flowerGardenLifeStatusCategoryId";


--
-- Name: flowerGardens; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."flowerGardens" (
    "flowerGardensId" integer NOT NULL,
    "flowerGardenTypeId" integer NOT NULL,
    "flowerGardenLifeStatusCategoryId" integer NOT NULL,
    "siteNumber" integer NOT NULL,
    "areaVal" integer NOT NULL,
    date date,
    recommendations text,
    "stateСharacteristic" text,
    "flowersGardensComposit" text,
    "flowerGardenGrassingTypeId" integer NOT NULL,
    CONSTRAINT metriccheck CHECK (("areaVal" >= 0)),
    CONSTRAINT numbercheck CHECK (("siteNumber" >= 0))
);


ALTER TABLE public."flowerGardens" OWNER TO ddzpcgyx;

--
-- Name: TABLE "flowerGardens"; Type: COMMENT; Schema: public; Owner: ddzpcgyx
--

COMMENT ON TABLE public."flowerGardens" IS 'ведомость цветников';


--
-- Name: flowerGardensGrassingTypes; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."flowerGardensGrassingTypes" (
    "flowerGardensGrassingTypesId" integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public."flowerGardensGrassingTypes" OWNER TO ddzpcgyx;

--
-- Name: flowerGardensGrassingTypes_flowerGardensGrassingTypeId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."flowerGardensGrassingTypes_flowerGardensGrassingTypeId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."flowerGardensGrassingTypes_flowerGardensGrassingTypeId_seq" OWNER TO ddzpcgyx;

--
-- Name: flowerGardensGrassingTypes_flowerGardensGrassingTypeId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."flowerGardensGrassingTypes_flowerGardensGrassingTypeId_seq" OWNED BY public."flowerGardensGrassingTypes"."flowerGardensGrassingTypesId";


--
-- Name: flowerGardensTypes; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."flowerGardensTypes" (
    "flowerGardensTypesId" integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public."flowerGardensTypes" OWNER TO ddzpcgyx;

--
-- Name: TABLE "flowerGardensTypes"; Type: COMMENT; Schema: public; Owner: ddzpcgyx
--

COMMENT ON TABLE public."flowerGardensTypes" IS 'справочник типов травянистово покрытия';


--
-- Name: flowerGardensTypes_flowerGardensTypeId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."flowerGardensTypes_flowerGardensTypeId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."flowerGardensTypes_flowerGardensTypeId_seq" OWNER TO ddzpcgyx;

--
-- Name: flowerGardensTypes_flowerGardensTypeId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."flowerGardensTypes_flowerGardensTypeId_seq" OWNED BY public."flowerGardensTypes"."flowerGardensTypesId";


--
-- Name: flowerGardens_flowerGardenId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."flowerGardens_flowerGardenId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."flowerGardens_flowerGardenId_seq" OWNER TO ddzpcgyx;

--
-- Name: flowerGardens_flowerGardenId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."flowerGardens_flowerGardenId_seq" OWNED BY public."flowerGardens"."flowerGardensId";


--
-- Name: flowergardensalldata; Type: VIEW; Schema: public; Owner: ddzpcgyx
--

CREATE VIEW public.flowergardensalldata AS
 SELECT fggt.name AS grassingtype,
    fgt.name AS type,
    fgc.name AS lifestatus,
    fg."flowersGardensComposit",
    fg."stateСharacteristic",
    fg."areaVal",
    fg."siteNumber",
    fg.recommendations,
    fg.date,
    fg."flowerGardensId"
   FROM public."flowerGardens" fg,
    public."flowerGardensGrassingTypes" fggt,
    public."flowerGardensTypes" fgt,
    public."flowerGardenLifeStatusCategory" fgc
  WHERE ((fg."flowerGardenTypeId" = fgt."flowerGardensTypesId") AND (fg."flowerGardenGrassingTypeId" = fggt."flowerGardensGrassingTypesId") AND (fg."flowerGardenLifeStatusCategoryId" = fgc."flowerGardenLifeStatusCategoryId"));


ALTER TABLE public.flowergardensalldata OWNER TO ddzpcgyx;

--
-- Name: flowergardensalldataonlyforflower; Type: VIEW; Schema: public; Owner: ddzpcgyx
--

CREATE VIEW public.flowergardensalldataonlyforflower AS
 SELECT flowergardensalldata.grassingtype,
    flowergardensalldata.type,
    flowergardensalldata.lifestatus,
    flowergardensalldata."flowersGardensComposit",
    flowergardensalldata."stateСharacteristic",
    flowergardensalldata."areaVal",
    flowergardensalldata."siteNumber",
    flowergardensalldata.recommendations,
    flowergardensalldata.date,
    flowergardensalldata."flowerGardensId"
   FROM public.flowergardensalldata
  WHERE ((flowergardensalldata.grassingtype)::text = 'цветник'::text);


ALTER TABLE public.flowergardensalldataonlyforflower OWNER TO ddzpcgyx;

--
-- Name: flowergardensalldataonlyforgardens; Type: VIEW; Schema: public; Owner: ddzpcgyx
--

CREATE VIEW public.flowergardensalldataonlyforgardens AS
 SELECT flowergardensalldata.grassingtype,
    flowergardensalldata.type,
    flowergardensalldata.lifestatus,
    flowergardensalldata."flowersGardensComposit",
    flowergardensalldata."stateСharacteristic",
    flowergardensalldata."areaVal",
    flowergardensalldata."siteNumber",
    flowergardensalldata.recommendations,
    flowergardensalldata.date,
    flowergardensalldata."flowerGardensId"
   FROM public.flowergardensalldata
  WHERE ((flowergardensalldata.grassingtype)::text = 'газон'::text);


ALTER TABLE public.flowergardensalldataonlyforgardens OWNER TO ddzpcgyx;

--
-- Name: landscapingCategorys; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."landscapingCategorys" (
    "landscapingCategorysId" integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public."landscapingCategorys" OWNER TO ddzpcgyx;

--
-- Name: landscapingCategorys _landscapingCategoryId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."landscapingCategorys _landscapingCategoryId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."landscapingCategorys _landscapingCategoryId_seq" OWNER TO ddzpcgyx;

--
-- Name: landscapingCategorys _landscapingCategoryId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."landscapingCategorys _landscapingCategoryId_seq" OWNED BY public."landscapingCategorys"."landscapingCategorysId";


--
-- Name: lifeForms; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."lifeForms" (
    "lifeFormsId" integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public."lifeForms" OWNER TO ddzpcgyx;

--
-- Name: TABLE "lifeForms"; Type: COMMENT; Schema: public; Owner: ddzpcgyx
--

COMMENT ON TABLE public."lifeForms" IS 'справочник типов жизненных форм';


--
-- Name: lifeForms_lifeFormId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."lifeForms_lifeFormId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."lifeForms_lifeFormId_seq" OWNER TO ddzpcgyx;

--
-- Name: lifeForms_lifeFormId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."lifeForms_lifeFormId_seq" OWNED BY public."lifeForms"."lifeFormsId";


--
-- Name: mainObjectTypes; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."mainObjectTypes" (
    "mainObjectTypesId" integer NOT NULL,
    name character varying(60)
);


ALTER TABLE public."mainObjectTypes" OWNER TO ddzpcgyx;

--
-- Name: TABLE "mainObjectTypes"; Type: COMMENT; Schema: public; Owner: ddzpcgyx
--

COMMENT ON TABLE public."mainObjectTypes" IS 'справочник типов объекта';


--
-- Name: mainObjectTypes_mainObjectTypesId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."mainObjectTypes_mainObjectTypesId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."mainObjectTypes_mainObjectTypesId_seq" OWNER TO ddzpcgyx;

--
-- Name: mainObjectTypes_mainObjectTypesId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."mainObjectTypes_mainObjectTypesId_seq" OWNED BY public."mainObjectTypes"."mainObjectTypesId";


--
-- Name: mainObjects; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."mainObjects" (
    "mainObjectsId" integer NOT NULL,
    "balanceHolderId" integer NOT NULL,
    "mainObjectTypeId" integer,
    name character varying(50) NOT NULL
);


ALTER TABLE public."mainObjects" OWNER TO ddzpcgyx;

--
-- Name: TABLE "mainObjects"; Type: COMMENT; Schema: public; Owner: ddzpcgyx
--

COMMENT ON TABLE public."mainObjects" IS 'Справочник объектов';


--
-- Name: mainObjects_mainObjectId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."mainObjects_mainObjectId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."mainObjects_mainObjectId_seq" OWNER TO ddzpcgyx;

--
-- Name: mainObjects_mainObjectId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."mainObjects_mainObjectId_seq" OWNED BY public."mainObjects"."mainObjectsId";


--
-- Name: mainobjectsalldata; Type: VIEW; Schema: public; Owner: ddzpcgyx
--

CREATE VIEW public.mainobjectsalldata AS
 SELECT mo.name AS mainobject,
    mot.name AS mainobjecttype,
    bh.name AS balanceholder,
    mo."mainObjectsId"
   FROM public."mainObjects" mo,
    public."mainObjectTypes" mot,
    public."balanceHolders" bh
  WHERE ((mo."mainObjectTypeId" = mot."mainObjectTypesId") AND (mo."balanceHolderId" = bh."balanceHoldersId"));


ALTER TABLE public.mainobjectsalldata OWNER TO ddzpcgyx;

--
-- Name: passportPlantationObjects; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."passportPlantationObjects" (
    "passportPlantationObjectsId" integer NOT NULL,
    " cadastralNumber" character varying(13) NOT NULL,
    "sitesCount" integer DEFAULT 0 NOT NULL,
    "dateObjCreate" date NOT NULL,
    "landscapingCategoryId" integer NOT NULL,
    "schemaPath" character varying(60),
    "treesCount" integer DEFAULT 0 NOT NULL,
    "shrubsCount" integer DEFAULT 0 NOT NULL,
    "flowerGardensM" integer DEFAULT 0 NOT NULL,
    "lawnM" integer DEFAULT 0 NOT NULL,
    "asphaltM" integer DEFAULT 0 NOT NULL,
    "gravelM" integer DEFAULT 0 NOT NULL,
    "slabsM" integer DEFAULT 0 NOT NULL,
    "primingM" integer DEFAULT 0,
    "buildingsM" integer DEFAULT 0,
    "pondsM" integer DEFAULT 0,
    "checkToSum" boolean DEFAULT false,
    "ID_Object" integer NOT NULL,
    "anothrM" integer,
    "totalObjAreaKM" integer,
    "avgPassageWidthM" integer,
    "lengthOfStreet" integer,
    CONSTRAINT metriccheck CHECK ((("flowerGardensM" >= 0) AND ("lawnM" >= 0) AND ("asphaltM" >= 0) AND ("gravelM" >= 0) AND ("slabsM" >= 0) AND ("primingM" >= 0) AND ("buildingsM" >= 0) AND ("pondsM" >= 0))),
    CONSTRAINT shrubscountcheck CHECK (("shrubsCount" >= 0)),
    CONSTRAINT treescountcheck CHECK (("treesCount" >= 0))
);


ALTER TABLE public."passportPlantationObjects" OWNER TO ddzpcgyx;

--
-- Name: passportPlantationObjects_passportPlantationObjectId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."passportPlantationObjects_passportPlantationObjectId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."passportPlantationObjects_passportPlantationObjectId_seq" OWNER TO ddzpcgyx;

--
-- Name: passportPlantationObjects_passportPlantationObjectId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."passportPlantationObjects_passportPlantationObjectId_seq" OWNED BY public."passportPlantationObjects"."passportPlantationObjectsId";


--
-- Name: passportobjectview; Type: VIEW; Schema: public; Owner: ddzpcgyx
--

CREATE VIEW public.passportobjectview AS
 SELECT mo.name AS mainobject,
    ppo." cadastralNumber",
    ppo."dateObjCreate",
    lc.name AS landscapecategory,
    ppo."sitesCount",
    ppo."schemaPath",
    ppo."treesCount",
    ppo."shrubsCount",
    ppo."flowerGardensM",
    ppo."lawnM",
    ppo."asphaltM",
    ppo."gravelM",
    ppo."slabsM",
    ppo."primingM",
    ppo."buildingsM",
    ppo."pondsM",
    ppo."checkToSum",
    ppo."passportPlantationObjectsId",
    ppo."lengthOfStreet",
    ppo."avgPassageWidthM",
    ppo."totalObjAreaKM",
    ppo."anothrM"
   FROM public."passportPlantationObjects" ppo,
    public."landscapingCategorys" lc,
    public."mainObjects" mo
  WHERE ((ppo."ID_Object" = mo."mainObjectsId") AND (ppo."landscapingCategoryId" = lc."landscapingCategorysId"));


ALTER TABLE public.passportobjectview OWNER TO ddzpcgyx;

--
-- Name: plantationTypes; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."plantationTypes" (
    "plantationTypesId" integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public."plantationTypes" OWNER TO ddzpcgyx;

--
-- Name: TABLE "plantationTypes"; Type: COMMENT; Schema: public; Owner: ddzpcgyx
--

COMMENT ON TABLE public."plantationTypes" IS 'типы насаждений';


--
-- Name: plantationTypes_plantationTypeId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."plantationTypes_plantationTypeId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."plantationTypes_plantationTypeId_seq" OWNER TO ddzpcgyx;

--
-- Name: plantationTypes_plantationTypeId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."plantationTypes_plantationTypeId_seq" OWNED BY public."plantationTypes"."plantationTypesId";


--
-- Name: species; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public.species (
    "speciesId" integer NOT NULL,
    name character varying(60) NOT NULL,
    "aboveSpecieId" integer
);


ALTER TABLE public.species OWNER TO ddzpcgyx;

--
-- Name: species_specieId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."species_specieId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."species_specieId_seq" OWNER TO ddzpcgyx;

--
-- Name: species_specieId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."species_specieId_seq" OWNED BY public.species."speciesId";


--
-- Name: streets; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public.streets (
    "streetsId" integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.streets OWNER TO ddzpcgyx;

--
-- Name: streets_street_Id_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."streets_street_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."streets_street_Id_seq" OWNER TO ddzpcgyx;

--
-- Name: streets_street_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."streets_street_Id_seq" OWNED BY public.streets."streetsId";


--
-- Name: tableBools; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."tableBools" (
    "balanceHolders" boolean DEFAULT true NOT NULL,
    streets boolean DEFAULT true NOT NULL,
    districts boolean DEFAULT true NOT NULL,
    "plantationTypes" boolean DEFAULT true NOT NULL,
    "tilingsTypes" boolean DEFAULT true NOT NULL,
    "treesAndShrubsTypeId" boolean DEFAULT true NOT NULL,
    species boolean DEFAULT true NOT NULL,
    "flowerGardensTypes" boolean DEFAULT true NOT NULL,
    "mainObjectTypes" boolean DEFAULT true NOT NULL,
    "landscapingCategorys" boolean DEFAULT true NOT NULL,
    "flowerGardenLifeStatusCategory" boolean DEFAULT true NOT NULL,
    "TreesAndShrubsLifeStatusCategory" boolean DEFAULT true NOT NULL,
    "aboveSpecie" boolean DEFAULT true NOT NULL,
    "cutRecomend" boolean DEFAULT true NOT NULL,
    "lifeForms" boolean DEFAULT true NOT NULL,
    "flowerGardensGrassingTypes" boolean DEFAULT true NOT NULL
);


ALTER TABLE public."tableBools" OWNER TO ddzpcgyx;

--
-- Name: tilingsTypes; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."tilingsTypes" (
    "tilingsTypesId" integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public."tilingsTypes" OWNER TO ddzpcgyx;

--
-- Name: TABLE "tilingsTypes"; Type: COMMENT; Schema: public; Owner: ddzpcgyx
--

COMMENT ON TABLE public."tilingsTypes" IS 'справочник типов замощений';


--
-- Name: tilingsTypes_tilingsTypeId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."tilingsTypes_tilingsTypeId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tilingsTypes_tilingsTypeId_seq" OWNER TO ddzpcgyx;

--
-- Name: tilingsTypes_tilingsTypeId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."tilingsTypes_tilingsTypeId_seq" OWNED BY public."tilingsTypes"."tilingsTypesId";


--
-- Name: treesAndShrubsPlantingTypes; Type: TABLE; Schema: public; Owner: ddzpcgyx
--

CREATE TABLE public."treesAndShrubsPlantingTypes" (
    "treesAndShrubsPlantingTypesId" integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public."treesAndShrubsPlantingTypes" OWNER TO ddzpcgyx;

--
-- Name: treesAndShrubsTypes_treesAndShrubsTypeId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."treesAndShrubsTypes_treesAndShrubsTypeId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."treesAndShrubsTypes_treesAndShrubsTypeId_seq" OWNER TO ddzpcgyx;

--
-- Name: treesAndShrubsTypes_treesAndShrubsTypeId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."treesAndShrubsTypes_treesAndShrubsTypeId_seq" OWNED BY public."treesAndShrubsPlantingTypes"."treesAndShrubsPlantingTypesId";


--
-- Name: treesAndShrubs_treeOrShrubId_seq; Type: SEQUENCE; Schema: public; Owner: ddzpcgyx
--

CREATE SEQUENCE public."treesAndShrubs_treeOrShrubId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."treesAndShrubs_treeOrShrubId_seq" OWNER TO ddzpcgyx;

--
-- Name: treesAndShrubs_treeOrShrubId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ddzpcgyx
--

ALTER SEQUENCE public."treesAndShrubs_treeOrShrubId_seq" OWNED BY public."treesAndShrubs"."treesAndShrubsId";


--
-- Name: treesandshrubsalldata; Type: VIEW; Schema: public; Owner: ddzpcgyx
--

CREATE VIEW public.treesandshrubsalldata AS
 SELECT tls.name AS lifestatuscategory,
    tspt.name AS plantingtype,
    lf.name AS lifeform,
    sp.name AS specie,
    tas.cutrecomend,
    tas.longitude,
    tas."latitude " AS latitude,
    tas."plantNumber",
    tas."leafImagePath",
    tas."plantImagePath",
    tas."currentAge",
    tas."landingAge",
    tas."landingDate",
    tas.height,
    tas."inventDate",
    tas."diameterAtHeight13",
    tas."siteNumber",
    tas.characteristic,
    tas."treesAndShrubsId",
    tas."mainObjectId"
   FROM ( SELECT "treesAndShrubs"."treesAndShrubsId",
            "treesAndShrubs"."mainObjectId",
            "treesAndShrubs"."treeOrShrubLifeStatusCategoryId",
            "treesAndShrubs"."lifeFormId",
            "treesAndShrubs"."specieId",
            "treesAndShrubs"."plantNumber",
            "treesAndShrubs"."leafImagePath",
            "treesAndShrubs"."plantImagePath",
            "treesAndShrubs"."currentAge",
            "treesAndShrubs"."landingAge",
            "treesAndShrubs"."landingDate",
            "treesAndShrubs".height,
            "treesAndShrubs"."inventDate",
            "treesAndShrubs".characteristic,
            "treesAndShrubs"."latitude ",
            "treesAndShrubs".longitude,
            "treesAndShrubs"."diameterAtHeight13",
            "treesAndShrubs"."plantingType",
            "cutRecomend".name AS cutrecomend,
            "treesAndShrubs"."siteNumber"
           FROM (public."treesAndShrubs"
             LEFT JOIN public."cutRecomend" ON (("treesAndShrubs"."recommendationId" = "cutRecomend"."cutRecomendId")))) tas,
    public."mainObjects" mo,
    public."TreesAndShrubsLifeStatusCategory" tls,
    public."lifeForms" lf,
    public.species sp,
    public."treesAndShrubsPlantingTypes" tspt
  WHERE ((tas."plantingType" = tspt."treesAndShrubsPlantingTypesId") AND (tas."mainObjectId" = mo."mainObjectsId") AND (tas."treeOrShrubLifeStatusCategoryId" = tls."TreesAndShrubsLifeStatusCategoryId") AND (tas."lifeFormId" = lf."lifeFormsId") AND (tas."specieId" = sp."speciesId"))
  ORDER BY tas."plantNumber";


ALTER TABLE public.treesandshrubsalldata OWNER TO ddzpcgyx;

--
-- Name: treesandshrubsalldataonlyforshrubs; Type: VIEW; Schema: public; Owner: ddzpcgyx
--

CREATE VIEW public.treesandshrubsalldataonlyforshrubs AS
 SELECT treesandshrubsalldata.lifestatuscategory,
    treesandshrubsalldata.plantingtype,
    treesandshrubsalldata.lifeform,
    treesandshrubsalldata.specie,
    treesandshrubsalldata.cutrecomend,
    treesandshrubsalldata.longitude,
    treesandshrubsalldata.latitude,
    treesandshrubsalldata."plantNumber",
    treesandshrubsalldata."leafImagePath",
    treesandshrubsalldata."plantImagePath",
    treesandshrubsalldata."currentAge",
    treesandshrubsalldata."landingAge",
    treesandshrubsalldata."landingDate",
    treesandshrubsalldata.height,
    treesandshrubsalldata."inventDate",
    treesandshrubsalldata."diameterAtHeight13",
    treesandshrubsalldata."siteNumber",
    treesandshrubsalldata.characteristic,
    treesandshrubsalldata."treesAndShrubsId"
   FROM public.treesandshrubsalldata
  WHERE ((treesandshrubsalldata.lifeform)::text = 'кустарник'::text);


ALTER TABLE public.treesandshrubsalldataonlyforshrubs OWNER TO ddzpcgyx;

--
-- Name: treesandshrubsalldataonlyfortrees; Type: VIEW; Schema: public; Owner: ddzpcgyx
--

CREATE VIEW public.treesandshrubsalldataonlyfortrees AS
 SELECT treesandshrubsalldata.lifestatuscategory,
    treesandshrubsalldata.plantingtype,
    treesandshrubsalldata.lifeform,
    treesandshrubsalldata.specie,
    treesandshrubsalldata.cutrecomend,
    treesandshrubsalldata.longitude,
    treesandshrubsalldata.latitude,
    treesandshrubsalldata."plantNumber",
    treesandshrubsalldata."leafImagePath",
    treesandshrubsalldata."plantImagePath",
    treesandshrubsalldata."currentAge",
    treesandshrubsalldata."landingAge",
    treesandshrubsalldata."landingDate",
    treesandshrubsalldata.height,
    treesandshrubsalldata."inventDate",
    treesandshrubsalldata."diameterAtHeight13",
    treesandshrubsalldata."siteNumber",
    treesandshrubsalldata.characteristic,
    treesandshrubsalldata."treesAndShrubsId"
   FROM public.treesandshrubsalldata
  WHERE ((treesandshrubsalldata.lifeform)::text = 'дерево'::text);


ALTER TABLE public.treesandshrubsalldataonlyfortrees OWNER TO ddzpcgyx;

--
-- Name: treesandshrubsmostpop; Type: VIEW; Schema: public; Owner: ddzpcgyx
--

CREATE VIEW public.treesandshrubsmostpop AS
 SELECT tas."treesAndShrubsId",
    tas."plantNumber",
    tas."siteNumber",
    tas."latitude " AS lat,
    tas.longitude AS long,
    mo.name AS mainobject,
    lsc.name AS lifestatuscategory,
    lf.name AS lifefom,
    s.name AS specie,
    tap.name AS plantingtype
   FROM public."treesAndShrubs" tas,
    public."mainObjects" mo,
    public."TreesAndShrubsLifeStatusCategory" lsc,
    public."lifeForms" lf,
    public.species s,
    public."treesAndShrubsPlantingTypes" tap
  WHERE ((tas."mainObjectId" = mo."mainObjectsId") AND (tas."treeOrShrubLifeStatusCategoryId" = lsc."TreesAndShrubsLifeStatusCategoryId") AND (tas."lifeFormId" = lf."lifeFormsId") AND (tas."specieId" = s."speciesId") AND (tas."plantingType" = tap."treesAndShrubsPlantingTypesId"));


ALTER TABLE public.treesandshrubsmostpop OWNER TO ddzpcgyx;

--
-- Name: TreesAndShrubsLifeStatusCategory TreesAndShrubsLifeStatusCategoryId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."TreesAndShrubsLifeStatusCategory" ALTER COLUMN "TreesAndShrubsLifeStatusCategoryId" SET DEFAULT nextval('public."TreesAndShrubsLifeStatusCategory_lifeStatusCategoryId_seq"'::regclass);


--
-- Name: aboveSpecie aboveSpecieId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."aboveSpecie" ALTER COLUMN "aboveSpecieId" SET DEFAULT nextval('public."aboveSpecie_aboveSpecieId_seq"'::regclass);


--
-- Name: balanceHolders balanceHoldersId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."balanceHolders" ALTER COLUMN "balanceHoldersId" SET DEFAULT nextval('public."balanceHolders_balanceHolderId_seq"'::regclass);


--
-- Name: cutRecomend cutRecomendId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."cutRecomend" ALTER COLUMN "cutRecomendId" SET DEFAULT nextval('public."cutRecomend_recomendId_seq"'::regclass);


--
-- Name: districts districtsId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public.districts ALTER COLUMN "districtsId" SET DEFAULT nextval('public."districts_districtId_seq"'::regclass);


--
-- Name: flowerGardenLifeStatusCategory flowerGardenLifeStatusCategoryId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."flowerGardenLifeStatusCategory" ALTER COLUMN "flowerGardenLifeStatusCategoryId" SET DEFAULT nextval('public."flowerGardenLifeStatusCategory_LifeStatusCategoryId_seq"'::regclass);


--
-- Name: flowerGardens flowerGardensId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."flowerGardens" ALTER COLUMN "flowerGardensId" SET DEFAULT nextval('public."flowerGardens_flowerGardenId_seq"'::regclass);


--
-- Name: flowerGardensGrassingTypes flowerGardensGrassingTypesId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."flowerGardensGrassingTypes" ALTER COLUMN "flowerGardensGrassingTypesId" SET DEFAULT nextval('public."flowerGardensGrassingTypes_flowerGardensGrassingTypeId_seq"'::regclass);


--
-- Name: flowerGardensTypes flowerGardensTypesId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."flowerGardensTypes" ALTER COLUMN "flowerGardensTypesId" SET DEFAULT nextval('public."flowerGardensTypes_flowerGardensTypeId_seq"'::regclass);


--
-- Name: landscapingCategorys landscapingCategorysId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."landscapingCategorys" ALTER COLUMN "landscapingCategorysId" SET DEFAULT nextval('public."landscapingCategorys _landscapingCategoryId_seq"'::regclass);


--
-- Name: lifeForms lifeFormsId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."lifeForms" ALTER COLUMN "lifeFormsId" SET DEFAULT nextval('public."lifeForms_lifeFormId_seq"'::regclass);


--
-- Name: mainObjectTypes mainObjectTypesId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."mainObjectTypes" ALTER COLUMN "mainObjectTypesId" SET DEFAULT nextval('public."mainObjectTypes_mainObjectTypesId_seq"'::regclass);


--
-- Name: mainObjects mainObjectsId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."mainObjects" ALTER COLUMN "mainObjectsId" SET DEFAULT nextval('public."mainObjects_mainObjectId_seq"'::regclass);


--
-- Name: passportPlantationObjects passportPlantationObjectsId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."passportPlantationObjects" ALTER COLUMN "passportPlantationObjectsId" SET DEFAULT nextval('public."passportPlantationObjects_passportPlantationObjectId_seq"'::regclass);


--
-- Name: plantationTypes plantationTypesId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."plantationTypes" ALTER COLUMN "plantationTypesId" SET DEFAULT nextval('public."plantationTypes_plantationTypeId_seq"'::regclass);


--
-- Name: species speciesId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public.species ALTER COLUMN "speciesId" SET DEFAULT nextval('public."species_specieId_seq"'::regclass);


--
-- Name: streets streetsId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public.streets ALTER COLUMN "streetsId" SET DEFAULT nextval('public."streets_street_Id_seq"'::regclass);


--
-- Name: tilingsTypes tilingsTypesId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."tilingsTypes" ALTER COLUMN "tilingsTypesId" SET DEFAULT nextval('public."tilingsTypes_tilingsTypeId_seq"'::regclass);


--
-- Name: treesAndShrubs treesAndShrubsId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."treesAndShrubs" ALTER COLUMN "treesAndShrubsId" SET DEFAULT nextval('public."treesAndShrubs_treeOrShrubId_seq"'::regclass);


--
-- Name: treesAndShrubsPlantingTypes treesAndShrubsPlantingTypesId; Type: DEFAULT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."treesAndShrubsPlantingTypes" ALTER COLUMN "treesAndShrubsPlantingTypesId" SET DEFAULT nextval('public."treesAndShrubsTypes_treesAndShrubsTypeId_seq"'::regclass);


--
-- Data for Name: TreesAndShrubsLifeStatusCategory; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."TreesAndShrubsLifeStatusCategory" ("TreesAndShrubsLifeStatusCategoryId", name) FROM stdin;
4	неудовлетворительное: усыхающее
5	неудовлетворительное: сухостой текущего года
3	удовлетворительное: сильно ослабленное
1	Хорошее: без признаков ослабления
2	удовлетворительное: ослабленное
6	неудовлетворительное: сухостой прошлых лет
\.


--
-- Data for Name: aboveSpecie; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."aboveSpecie" ("aboveSpecieId", name, "imagePath") FROM stdin;
1	Лиственный кустарник	\N
2	Хвойный кустарник	\N
3	Лиственное дерево	\N
4	Хвойное дерево	\N
\.


--
-- Data for Name: balanceHolders; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."balanceHolders" ("balanceHoldersId", name) FROM stdin;
5	Ленинский
4	Заводской
3	Кировский
2	Фрунзенский
10	Волжский
11	Комитет дорожного хозяйства, благоустройства и транспорта
1	Октябрьский
12	Муниципалитет Октябрьского района
\.


--
-- Data for Name: cutRecomend; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."cutRecomend" ("cutRecomendId", name, clarification) FROM stdin;
2	умеренная санитарная обрезка	удаление старых, больных, усыхающих и поврежденных ветвей, а также ветвей, направленных внутрь кроны или сближенных друг с другом средневозрастных деревьев до 50% длины годичного прироста
3	сильная санитарная обрезка	удаление старых, больных, усыхающих и поврежденных ветвей, а также ветвей, направленных внутрь кроны или сближенных друг с другом у быстрорастущих пород (клена ясенелистного, тополя, ясеня зеленого) 60-75% длины годичного прироста
4	снос аварийного дерева	деревья со структурными изъянами (наличие дупел, гнилей, обрыв корней, опасный наклон), способными привести к падению всего дерева или его части и причинению ущерба населению или государственному имуществу и имуществу граждан
1	слабая санитарная обрезка	удаление старых, больных, усыхающих и поврежденных ветвей, а также ветвей, направленных внутрь кроны или сближенных друг с другом у молодых деревьев не более 25-30% величины годичного прироста
\.


--
-- Data for Name: districts; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public.districts ("districtsId", name) FROM stdin;
3	Ленинский район
4	Фрунзенский район
6	Кировский район
5	Октябрьский район
1	Волжский район
2	Заводской район
\.


--
-- Data for Name: flowerGardenLifeStatusCategory; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."flowerGardenLifeStatusCategory" ("flowerGardenLifeStatusCategoryId", name) FROM stdin;
2	удовлетворительное
3	неудовлетворительное
1	хорошее
\.


--
-- Data for Name: flowerGardens; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."flowerGardens" ("flowerGardensId", "flowerGardenTypeId", "flowerGardenLifeStatusCategoryId", "siteNumber", "areaVal", date, recommendations, "stateСharacteristic", "flowersGardensComposit", "flowerGardenGrassingTypeId") FROM stdin;
1	1	1	1234	523	2021-12-16	многолетний широкий газон	отличное состояние	трава, трава, трава	1
2	2	2	1234	52	2020-12-16	многолетняя широкая цветочная клумба	отличное состояние	цветы, трава, цветы	2
\.


--
-- Data for Name: flowerGardensGrassingTypes; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."flowerGardensGrassingTypes" ("flowerGardensGrassingTypesId", name) FROM stdin;
1	газон
2	цветник
3	клумба
\.


--
-- Data for Name: flowerGardensTypes; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."flowerGardensTypes" ("flowerGardensTypesId", name) FROM stdin;
2	многолетники
3	луковичные
4	смешанные
5	инертный материал
1	однолетники
\.


--
-- Data for Name: landscapingCategorys; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."landscapingCategorys" ("landscapingCategorysId", name) FROM stdin;
2	специального назначения
3	ограниченного пользования
4	особо охраняемые
1	общего пользования
\.


--
-- Data for Name: lifeForms; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."lifeForms" ("lifeFormsId", name) FROM stdin;
2	кустарник
1	дерево
\.


--
-- Data for Name: mainObjectTypes; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."mainObjectTypes" ("mainObjectTypesId", name) FROM stdin;
2	сквер
3	бульвар
4	зелёная зона
5	гидропарк
6	парк
7	парковая зона
8	площадь
9	территория, занимаемая зелёными насаждениями
10	проспект
1	сад
12	двор
\.


--
-- Data for Name: mainObjects; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."mainObjects" ("mainObjectsId", "balanceHolderId", "mainObjectTypeId", name) FROM stdin;
1	1	1	волжский район
2	2	2	комитет дорожного хозяйства
3	3	3	заводской район
7	1	1	Набережная космонавтов
\.


--
-- Data for Name: passportPlantationObjects; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."passportPlantationObjects" ("passportPlantationObjectsId", " cadastralNumber", "sitesCount", "dateObjCreate", "landscapingCategoryId", "schemaPath", "treesCount", "shrubsCount", "flowerGardensM", "lawnM", "asphaltM", "gravelM", "slabsM", "primingM", "buildingsM", "pondsM", "checkToSum", "ID_Object", "anothrM", "totalObjAreaKM", "avgPassageWidthM", "lengthOfStreet") FROM stdin;
1	1234567890123	0	2020-12-16	1	asd.png	8	0	0	0	0	0	0	0	0	0	t	2	\N	\N	\N	\N
4	1234567890122	0	2020-12-16	1	asd.png	16	3	0	0	0	0	0	0	0	0	t	1	\N	\N	\N	\N
\.


--
-- Data for Name: plantationTypes; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."plantationTypes" ("plantationTypesId", name) FROM stdin;
3	цветники
4	газоны
1	деревья
7	кустарники
\.


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public.species ("speciesId", name, "aboveSpecieId") FROM stdin;
5	Тополь	3
1	Вяз гладколистный	3
4	Акация	3
2	Катальпа 	3
3	Каштан конский	3
8	Клен остролистный	3
9	Береза бородавчатая кустовая	3
10	Вяз	3
11	Береза пушистая	3
12	Спирея грефшейм	3
13	Липа мелколистная	3
14	Вяз гладкий	3
15	Вяз приземистый	3
16	Липа крупнолистная	3
17	Ирга обыкновенная	3
18	Кизильник блестящий куст	3
19	Вяз мелколистный	3
20	Павловния войлочная	3
21	Ель европейская	\N
22	 Ель колючая ф. голубая	\N
23	Ель сизая	\N
24	Псевдотсуга Мензиса	\N
25	Лиственница сибирская	\N
26	Лиственница европейская	\N
27	Можжевельник виргинский	\N
28	Пихта одноцветная	\N
29	Платикладус восточный (биота восточная)	\N
30	Сосна обыкновенная	\N
31	Сосна веймутова	\N
32	Туя западная	\N
33	Абрикос обыкновенный	\N
34	Бархат амурский	\N
35	Береза повислая	\N
36	Вяз голый	\N
37	Груша обыкновенная	\N
38	Дуб черешчатый	\N
39	Дуб красный	\N
40	Ива белая	\N
41	Ива ломкая	\N
42	Ива ломкая, ф. шаровидная	\N
43	Ива вавилонская	\N
44	Катальпа бигнониевидная	\N
45	Каштан конский обыкновенный	\N
46	Клен остролистный	\N
47	Клен остролистный, ф. Шведлера	\N
48	Клен полевой	\N
49	Клен серебристый	\N
50	Липа мелколистная	\N
51	Липа крупнолистная	\N
52	Орех серый	\N
53	Орех черный	\N
54	Орех маньчжурский	\N
55	Робиния лжеакация (акация белая)	\N
56	Рябина обыкновенная	\N
57	Рябина промежуточная	\N
58	Тополь дельтовидный	\N
59	Тополь черный	\N
60	Тополь белый	\N
61	Черемуха обыкновенная	\N
62	Черемуха виргинская	\N
63	Черемуха Маака	\N
64	Шелковица черная	\N
65	Яблоня Недзвецкого	\N
66	Ясень ланцетный	\N
67	Ясень обыкновенный	\N
68	Можжевельник обыкновенный	\N
69	Можжевельник казацкий	\N
70	Аморфа кустарниковая	\N
71	Арония	\N
72	Барбарис обыкновенный	\N
73	Барбарис Тунберга	\N
74	Бересклет европейский	\N
75	Бирючина обыкновенная	\N
76	Боярышник кроваво-красный	\N
77	Бузина красная	\N
78	Бузина черная	\N
79	Вейгела цветущая	\N
80	Вишня степная	\N
81	Вишня войлочная	\N
82	Гортензия древовидная	\N
83	Гортензия метельчатая	\N
84	Дерен кроваво-красный	\N
85	Дерен белый	\N
86	Дрок красильный	\N
87	Жимолость татарская	\N
88	Калина обыкновенная	\N
89	Карагана древовидная (акация желтая)	\N
90	Карагана кустарниковая (дереза)	\N
91	Клен Гиннала	\N
92	Клен татарский	\N
93	Лещина обыкновенная	\N
94	Лох узколистный	\N
95	Лох серебристый	\N
96	Магония паддуболистная	\N
97	Миндаль степной	\N
98	Пузыреплодник калинолистный	\N
99	Роза майская	\N
100	Роза морщинистая	\N
101	Рябинник рябинолистный	\N
102	Сирень обыкновенная	\N
103	Скумпия	\N
104	Смородина золотистая	\N
105	Снежноягодник белый	\N
106	Спирея средняя	\N
107	Спирея городчатая	\N
108	Спирея дубравколистная	\N
109	Спирея Вангута	\N
110	Спирея Бумольда	\N
111	Спирея японская	\N
112	Сумах пушистый	\N
7	Тополь пирамидальный	3
113	Тамарикс рыхлый	\N
114	Форзиция европейская	\N
115	Хеномелес японский (айва японская)	\N
116	Чубушник венечный	\N
117	Чубушник мелколиственный	\N
118	Виноград пятилисточковый девичий	\N
119	Жимолость каприфоль	\N
120	Клематис (ломонос) Жакмана	\N
\.


--
-- Data for Name: streets; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public.streets ("streetsId", name) FROM stdin;
3	Раховa
6	Слонова
13	Вольская
14	Чернышевского
15	Набережная Космонавтов
20	Симбирцева
21	Зарубина
22	Белоглинская
23	Попова
24	Степана Разина
26	Миротворцева
27	Рабочая
31	Емлютина
34	Политехническая
39	Дягтярная
40	Сакко и Ванцетти
41	Первая Дачная
42	Вторая Дачная
43	Третья Дачная
44	Четвертая Дачная
45	Пятая Дачная
46	Шестая Дачная
53	Яблочкова
55	Бабушкин взвоз
56	Шелковичная
57	Вавилова
38	Киселёва
64	Железнодорожная
65	Радищева
66	Большая Садовая
67	Беговая
68	2-й Детский проезд
69	Кумысная
70	Новоастраханское шоссе
71	Пугачева
72	Новоузенская
73	Танкистов
74	Большая Горная
77	50 лет Октября
78	1-я Одесская
79	40 лет Октября
80	1-й Детский проезд
81	Рамаева
5	Бахметьевская
63	Хользунова
\.


--
-- Data for Name: tableBools; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."tableBools" ("balanceHolders", streets, districts, "plantationTypes", "tilingsTypes", "treesAndShrubsTypeId", species, "flowerGardensTypes", "mainObjectTypes", "landscapingCategorys", "flowerGardenLifeStatusCategory", "TreesAndShrubsLifeStatusCategory", "aboveSpecie", "cutRecomend", "lifeForms", "flowerGardensGrassingTypes") FROM stdin;
t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t
\.


--
-- Data for Name: tilingsTypes; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."tilingsTypes" ("tilingsTypesId", name) FROM stdin;
3	плиточное покрытие
4	грунтовое покрытие
1	асфальт
6	бетон
2	щебёнка
\.


--
-- Data for Name: treesAndShrubs; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."treesAndShrubs" ("treesAndShrubsId", "mainObjectId", "treeOrShrubLifeStatusCategoryId", "lifeFormId", "specieId", "siteNumber", "plantNumber", "leafImagePath", "plantImagePath", "currentAge", "landingAge", "landingDate", height, "inventDate", characteristic, "recommendationId", "diameterAtHeight13", "latitude ", longitude, "plantingType") FROM stdin;
58	7	2	1	1	1889	1	\N	\N	20	1	2020-07-31	5	2020-07-14	Повреждение в виде дупла, стрижено.	1	57.9000015	51.5240459999999985	46.0424089999999993	1
65	7	4	2	5	1889	34			4	1	2020-07-31	5	2020-07-23	УДАЛИТЬ	1	57.9000015	51.5355672928424724	51.5353264145301821	1
55	7	2	1	45	1889	3	404.jpg	404.jpg	20	1	2020-06-29	9.60000038	2020-07-14	Повреждение в нижней части ствола в виде небольшого дупла.	1	58.5690002	51.5240849999999995	46.0427129999999991	1
24	7	2	1	13	1889	21	\N	\N	4	2	2021-12-16	5.09000015	2020-07-14	Спилена часть дерева, присутствуют повреждения коры.	\N	35.5999985	51.5243249999999975	46.042974000000001	1
41	7	1	1	8	1889	13	\N	\N	20	1	2020-06-29	2.5	2020-07-14	Молодое дерево.	\N	1.89999998	51.5241809999999987	46.0424080000000018	1
48	7	4	1	3	1889	6	\N	\N	12	1	2008-09-12	10.4099998	2020-07-14	Заметны потеки смолы, сухие листья.	\N	22.6000004	51.5241469999999993	46.0431150000000002	1
43	7	2	1	8	1889	15	\N	\N	20	1	2020-06-29	2.75	2020-07-14	Часть дерева спилена.	\N	3.18000007	51.5241770000000017	46.0425240000000002	1
32	7	2	1	12	1889	20	\N	\N	4	2	2021-12-16	2.82999992	2020-07-14	Спилена часть дерева.	\N	3.5	51.5242300000000029	46.0428640000000016	3
21	7	1	1	16	1889	24	\N	\N	4	2	2021-12-16	3.47000003	2020-07-14		\N	5.72900009	51.5243380000000002	46.043098999999998	1
44	7	1	1	2	1889	10	\N	\N	5	1	2020-06-29	5.59000015	2020-07-14		\N	25.7830009	51.5242689999999968	46.0438469999999995	1
27	7	1	1	14	1889	22	\N	\N	4	2	2021-12-16	3.51999998	2020-07-14	Молодое дерево.	\N	2.8599999	51.5242879999999985	46.0430240000000026	1
26	7	2	1	15	1889	23	\N	\N	4	2	2021-12-16	5.5	2020-07-14	Спилена часть дерева, присутствуют потеки.	\N	40.4199982	51.5243830000000003	46.043137999999999	1
40	7	2	1	9	1889	14	\N	\N	5	1	2020-07-01	5.4000001	2020-07-14		\N	57.2900009	51.5242140000000006	46.0424289999999985	1
37	7	4	1	5	1889	17	\N	\N	5	1	2020-01-07	18.1599998	2020-07-14	Есть повреждения коры и потеки.	\N	86.8899994	51.5242259999999987	46.0425109999999975	1
42	7	2	1	10	1889	16	\N	\N	5	1	2020-06-29	5.80000019	2020-07-14	Часть дерева спилена.	\N	40.4000015	51.5242229999999992	46.0425949999999986	1
49	7	2	1	3	1889	5	\N	\N	12	1	2008-09-12	11.1000004	2020-07-14	Сухие листья.	\N	56.9700012	51.524124999999998	46.0430589999999995	1
52	7	1	1	8	1889	31	\N	\N	20	1	2020-06-29	3.46000004	2020-07-14	Молодое дерево.	\N	4.13800001	51.5248800000000031	46.0436440000000005	1
16	7	1	1	18	1889	29	\N	\N	4	2	2021-12-16	1.62	2020-07-14	Часть дерева спилена, присутствуют молодые ростки.	\N	0	51.5243809999999982	46.0433359999999965	1
51	7	4	1	3	1889	7	\N	\N	20	1	2020-06-29	10.6070004	2020-07-14	Дерево частично спилено, одина из спиленых частей гниет.	\N	62.7000008	51.5241499999999988	46.043173000000003	1
18	7	4	1	19	1889	30	\N	\N	4	2	2021-12-16	4.62799978	2020-07-14	Часть дерева спилена, есть потеки.	\N	40.7400017	51.5244739999999979	46.043529999999997	1
36	7	4	1	5	1889	18	\N	\N	5	1	2020-07-01	18.1599998	2020-07-14	Есть большие потеки и повреждения коры.	\N	90.0800018	51.5243380000000002	46.0428380000000033	1
15	7	1	1	20	1889	32	\N	\N	4	2	2021-12-16	3.92000008	2020-07-14	Молодое дерево.	\N	4.45599985	51.5244160000000022	46.0435090000000002	1
22	7	2	1	16	1889	27	\N	\N	4	2	2021-12-16	18.2199993	2020-07-14	Присутствуют повреждения коры.	\N	16.2299995	51.524366999999998	46.0433530000000033	1
50	7	2	1	2	1889	8	\N	\N	20	1	2020-07-27	6.36000013	2020-07-14	В стволе имеется небольшое дупло.	\N	21.9599991	51.5242220000000017	46.0435590000000019	1
9	7	4	1	5	1889	33	\N	\N	1	1	2021-12-16	14.6499996	2020-07-14	Видны сильные повреждения коры и значительные потеки.	\N	84.6699982	51.5245000000000033	46.0437220000000025	1
39	7	4	1	11	1889	19	\N	\N	5	1	2020-01-07	4.8499999	2020-07-14	Спилена часть дерева, присутствуют повреждения и потеки.	\N	42.9700012	51.5213499999999982	46.0428179999999969	3
46	7	1	1	16	1889	12	\N	\N	5	1	2020-06-29	2	2020-07-14		\N	1.59000003	51.5243060000000028	46.0426050000000018	1
20	7	1	1	8	1889	25	\N	\N	4	2	2021-12-16	4.21999979	2020-07-14		\N	7.63899994	51.5243299999999991	46.043097000000003	1
23	7	1	1	17	1889	26	\N	\N	4	2	2021-12-16	1.85000002	2020-07-14	Часть дерева спилена, присутствуют молодые ростки.	\N	0	51.5243660000000006	46.0432419999999993	1
53	7	1	1	2	1889	2	\N	\N	5	1	2020-06-29	7.19999981	2020-07-14		\N	30.2390003	51.5240569999999991	46.0424599999999984	1
47	7	4	1	7	1889	11	\N	\N	20	1	2020-06-29	15.8999996	2020-07-14	Есть повреждения и потеки.	\N	139.419006	51.5240930000000006	46.0423240000000007	3
54	7	2	1	4	1889	4	404.jpg	404.jpg	24	3	2020-06-29	4.80000019	2020-07-14	Дерево частично спилено	1	30.5569992	51.5240999999999971	46.0428149999999974	1
45	7	3	1	45	1889	9	404.jpg	404.jpg	20	1	2020-06-29	11.9499998	2020-07-14	Часть дерева была спилена, одина из спиленых частей гниет	1	87.2099991	51.5242310000000003	46.0436260000000033	1
\.


--
-- Data for Name: treesAndShrubsPlantingTypes; Type: TABLE DATA; Schema: public; Owner: ddzpcgyx
--

COPY public."treesAndShrubsPlantingTypes" ("treesAndShrubsPlantingTypesId", name) FROM stdin;
1	одиночное
2	рядовая
3	групповая
4	массив
\.


--
-- Name: TreesAndShrubsLifeStatusCategory_lifeStatusCategoryId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."TreesAndShrubsLifeStatusCategory_lifeStatusCategoryId_seq"', 12, true);


--
-- Name: aboveSpecie_aboveSpecieId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."aboveSpecie_aboveSpecieId_seq"', 4, true);


--
-- Name: balanceHolders_balanceHolderId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."balanceHolders_balanceHolderId_seq"', 14, true);


--
-- Name: cutRecomend_recomendId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."cutRecomend_recomendId_seq"', 9, true);


--
-- Name: districts_districtId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."districts_districtId_seq"', 12, true);


--
-- Name: flowerGardenLifeStatusCategory_LifeStatusCategoryId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."flowerGardenLifeStatusCategory_LifeStatusCategoryId_seq"', 7, true);


--
-- Name: flowerGardensGrassingTypes_flowerGardensGrassingTypeId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."flowerGardensGrassingTypes_flowerGardensGrassingTypeId_seq"', 8, true);


--
-- Name: flowerGardensTypes_flowerGardensTypeId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."flowerGardensTypes_flowerGardensTypeId_seq"', 10, true);


--
-- Name: flowerGardens_flowerGardenId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."flowerGardens_flowerGardenId_seq"', 2, true);


--
-- Name: landscapingCategorys _landscapingCategoryId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."landscapingCategorys _landscapingCategoryId_seq"', 10, true);


--
-- Name: lifeForms_lifeFormId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."lifeForms_lifeFormId_seq"', 10, true);


--
-- Name: mainObjectTypes_mainObjectTypesId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."mainObjectTypes_mainObjectTypesId_seq"', 17, true);


--
-- Name: mainObjects_mainObjectId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."mainObjects_mainObjectId_seq"', 15, true);


--
-- Name: passportPlantationObjects_passportPlantationObjectId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."passportPlantationObjects_passportPlantationObjectId_seq"', 5, true);


--
-- Name: plantationTypes_plantationTypeId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."plantationTypes_plantationTypeId_seq"', 13, true);


--
-- Name: species_specieId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."species_specieId_seq"', 127, true);


--
-- Name: streets_street_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."streets_street_Id_seq"', 88, true);


--
-- Name: tilingsTypes_tilingsTypeId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."tilingsTypes_tilingsTypeId_seq"', 9, true);


--
-- Name: treesAndShrubsTypes_treesAndShrubsTypeId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."treesAndShrubsTypes_treesAndShrubsTypeId_seq"', 10, true);


--
-- Name: treesAndShrubs_treeOrShrubId_seq; Type: SEQUENCE SET; Schema: public; Owner: ddzpcgyx
--

SELECT pg_catalog.setval('public."treesAndShrubs_treeOrShrubId_seq"', 65, true);


--
-- Name: aboveSpecie abovespecie_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."aboveSpecie"
    ADD CONSTRAINT abovespecie_pk PRIMARY KEY ("aboveSpecieId");


--
-- Name: balanceHolders balanceholders_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."balanceHolders"
    ADD CONSTRAINT balanceholders_pk PRIMARY KEY ("balanceHoldersId");


--
-- Name: cutRecomend cutrecomend_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."cutRecomend"
    ADD CONSTRAINT cutrecomend_pk PRIMARY KEY ("cutRecomendId");


--
-- Name: districts districts_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pk PRIMARY KEY ("districtsId");


--
-- Name: flowerGardenLifeStatusCategory flowergardenlifestatuscategory_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."flowerGardenLifeStatusCategory"
    ADD CONSTRAINT flowergardenlifestatuscategory_pk PRIMARY KEY ("flowerGardenLifeStatusCategoryId");


--
-- Name: flowerGardens flowergardens_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."flowerGardens"
    ADD CONSTRAINT flowergardens_pk PRIMARY KEY ("flowerGardensId");


--
-- Name: flowerGardensGrassingTypes flowergardensgrassingtypes_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."flowerGardensGrassingTypes"
    ADD CONSTRAINT flowergardensgrassingtypes_pk PRIMARY KEY ("flowerGardensGrassingTypesId");


--
-- Name: flowerGardensTypes flowergardenstypes_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."flowerGardensTypes"
    ADD CONSTRAINT flowergardenstypes_pk PRIMARY KEY ("flowerGardensTypesId");


--
-- Name: landscapingCategorys landscapingcategorys _pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."landscapingCategorys"
    ADD CONSTRAINT "landscapingcategorys _pk" PRIMARY KEY ("landscapingCategorysId");


--
-- Name: lifeForms lifeforms_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."lifeForms"
    ADD CONSTRAINT lifeforms_pk PRIMARY KEY ("lifeFormsId");


--
-- Name: mainObjects mainobjects_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."mainObjects"
    ADD CONSTRAINT mainobjects_pk PRIMARY KEY ("mainObjectsId");


--
-- Name: mainObjectTypes mainobjecttypes_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."mainObjectTypes"
    ADD CONSTRAINT mainobjecttypes_pk PRIMARY KEY ("mainObjectTypesId");


--
-- Name: passportPlantationObjects passportplantationobjects_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."passportPlantationObjects"
    ADD CONSTRAINT passportplantationobjects_pk PRIMARY KEY ("passportPlantationObjectsId");


--
-- Name: plantationTypes plantationtypes_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."plantationTypes"
    ADD CONSTRAINT plantationtypes_pk PRIMARY KEY ("plantationTypesId");


--
-- Name: species species_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pk PRIMARY KEY ("speciesId");


--
-- Name: streets streets_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public.streets
    ADD CONSTRAINT streets_pk PRIMARY KEY ("streetsId");


--
-- Name: tilingsTypes tilingstypes_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."tilingsTypes"
    ADD CONSTRAINT tilingstypes_pk PRIMARY KEY ("tilingsTypesId");


--
-- Name: treesAndShrubs treesandshrubs_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."treesAndShrubs"
    ADD CONSTRAINT treesandshrubs_pk PRIMARY KEY ("treesAndShrubsId");


--
-- Name: TreesAndShrubsLifeStatusCategory treesandshrubslifestatuscategory_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."TreesAndShrubsLifeStatusCategory"
    ADD CONSTRAINT treesandshrubslifestatuscategory_pk PRIMARY KEY ("TreesAndShrubsLifeStatusCategoryId");


--
-- Name: treesAndShrubsPlantingTypes treesandshrubstypes_pk; Type: CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."treesAndShrubsPlantingTypes"
    ADD CONSTRAINT treesandshrubstypes_pk PRIMARY KEY ("treesAndShrubsPlantingTypesId");


--
-- Name: passportplantationobjects_ cadastralnumber_uindex; Type: INDEX; Schema: public; Owner: ddzpcgyx
--

CREATE UNIQUE INDEX "passportplantationobjects_ cadastralnumber_uindex" ON public."passportPlantationObjects" USING btree (" cadastralNumber");


--
-- Name: passportplantationobjects_id_object_uindex; Type: INDEX; Schema: public; Owner: ddzpcgyx
--

CREATE UNIQUE INDEX passportplantationobjects_id_object_uindex ON public."passportPlantationObjects" USING btree ("ID_Object");


--
-- Name: streets_name_uindex; Type: INDEX; Schema: public; Owner: ddzpcgyx
--

CREATE UNIQUE INDEX streets_name_uindex ON public.streets USING btree (name);


--
-- Name: treesAndShrubs matchtreeorshrub; Type: TRIGGER; Schema: public; Owner: ddzpcgyx
--

CREATE TRIGGER matchtreeorshrub AFTER INSERT OR DELETE ON public."treesAndShrubs" FOR EACH ROW EXECUTE PROCEDURE public.matchtreeorshrubstump();


--
-- Name: treesAndShrubs updateplantnumber; Type: TRIGGER; Schema: public; Owner: ddzpcgyx
--

CREATE TRIGGER updateplantnumber BEFORE INSERT ON public."treesAndShrubs" FOR EACH ROW EXECUTE PROCEDURE public.updateplantnumber();


--
-- Name: passportPlantationObjects ID_Object; Type: FK CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."passportPlantationObjects"
    ADD CONSTRAINT "ID_Object" FOREIGN KEY ("ID_Object") REFERENCES public."mainObjects"("mainObjectsId") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: species aboveSpecieId; Type: FK CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT "aboveSpecieId" FOREIGN KEY ("aboveSpecieId") REFERENCES public."aboveSpecie"("aboveSpecieId") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: mainObjects balanceHolderId; Type: FK CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."mainObjects"
    ADD CONSTRAINT "balanceHolderId" FOREIGN KEY ("balanceHolderId") REFERENCES public."balanceHolders"("balanceHoldersId") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: flowerGardens flowerGardenGrassingTypeId; Type: FK CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."flowerGardens"
    ADD CONSTRAINT "flowerGardenGrassingTypeId" FOREIGN KEY ("flowerGardenGrassingTypeId") REFERENCES public."flowerGardensGrassingTypes"("flowerGardensGrassingTypesId") ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: flowerGardens flowerGardenLifeStatusCategoryId; Type: FK CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."flowerGardens"
    ADD CONSTRAINT "flowerGardenLifeStatusCategoryId" FOREIGN KEY ("flowerGardenLifeStatusCategoryId") REFERENCES public."flowerGardenLifeStatusCategory"("flowerGardenLifeStatusCategoryId") ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: flowerGardens flowerGardenTypeId; Type: FK CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."flowerGardens"
    ADD CONSTRAINT "flowerGardenTypeId" FOREIGN KEY ("flowerGardenTypeId") REFERENCES public."flowerGardensTypes"("flowerGardensTypesId") ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: passportPlantationObjects landscapingCategoryId; Type: FK CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."passportPlantationObjects"
    ADD CONSTRAINT "landscapingCategoryId" FOREIGN KEY ("landscapingCategoryId") REFERENCES public."landscapingCategorys"("landscapingCategorysId") ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: treesAndShrubs lifeFormId; Type: FK CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."treesAndShrubs"
    ADD CONSTRAINT "lifeFormId" FOREIGN KEY ("lifeFormId") REFERENCES public."lifeForms"("lifeFormsId") ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: treesAndShrubs mainObjectId; Type: FK CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."treesAndShrubs"
    ADD CONSTRAINT "mainObjectId" FOREIGN KEY ("mainObjectId") REFERENCES public."mainObjects"("mainObjectsId") ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: mainObjects mainObjectTypeId; Type: FK CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."mainObjects"
    ADD CONSTRAINT "mainObjectTypeId" FOREIGN KEY ("mainObjectTypeId") REFERENCES public."mainObjectTypes"("mainObjectTypesId") ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: treesAndShrubs plantingType; Type: FK CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."treesAndShrubs"
    ADD CONSTRAINT "plantingType" FOREIGN KEY ("plantingType") REFERENCES public."treesAndShrubsPlantingTypes"("treesAndShrubsPlantingTypesId") ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: treesAndShrubs recommendationId; Type: FK CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."treesAndShrubs"
    ADD CONSTRAINT "recommendationId" FOREIGN KEY ("recommendationId") REFERENCES public."cutRecomend"("cutRecomendId") ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: treesAndShrubs specieId; Type: FK CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."treesAndShrubs"
    ADD CONSTRAINT "specieId" FOREIGN KEY ("specieId") REFERENCES public.species("speciesId") ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: treesAndShrubs treeOrShrubLifeStatusCategoryId; Type: FK CONSTRAINT; Schema: public; Owner: ddzpcgyx
--

ALTER TABLE ONLY public."treesAndShrubs"
    ADD CONSTRAINT "treeOrShrubLifeStatusCategoryId" FOREIGN KEY ("treeOrShrubLifeStatusCategoryId") REFERENCES public."TreesAndShrubsLifeStatusCategory"("TreesAndShrubsLifeStatusCategoryId") ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

