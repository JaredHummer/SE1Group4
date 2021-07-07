--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-07-06 21:53:33

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
-- TOC entry 200 (class 1259 OID 17696)
-- Name: book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book (
    isbn character varying(13) NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    price money NOT NULL,
    genre text NOT NULL,
    author text NOT NULL,
    publisher text NOT NULL,
    year_published smallint NOT NULL,
    number_sold bigint DEFAULT 0,
    rating numeric DEFAULT 0
);


ALTER TABLE public.book OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 17827)
-- Name: credit_card; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.credit_card (
    cc_id integer NOT NULL,
    username text NOT NULL,
    card_number text NOT NULL,
    exp_date date NOT NULL,
    cvv smallint NOT NULL
);


ALTER TABLE public.credit_card OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17825)
-- Name: credit_card_cc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.credit_card_cc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.credit_card_cc_id_seq OWNER TO postgres;

--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 204
-- Name: credit_card_cc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.credit_card_cc_id_seq OWNED BY public.credit_card.cc_id;


--
-- TOC entry 203 (class 1259 OID 17803)
-- Name: shopping_cart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shopping_cart (
    item_id integer NOT NULL,
    username text,
    isbn character varying(13)
);


ALTER TABLE public.shopping_cart OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17801)
-- Name: shopping_cart_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shopping_cart_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shopping_cart_item_id_seq OWNER TO postgres;

--
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 202
-- Name: shopping_cart_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shopping_cart_item_id_seq OWNED BY public.shopping_cart.item_id;


--
-- TOC entry 201 (class 1259 OID 17740)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    username text NOT NULL,
    password character varying(50) NOT NULL,
    name text,
    email text,
    address text
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 2871 (class 2604 OID 17830)
-- Name: credit_card cc_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.credit_card ALTER COLUMN cc_id SET DEFAULT nextval('public.credit_card_cc_id_seq'::regclass);


--
-- TOC entry 2870 (class 2604 OID 17806)
-- Name: shopping_cart item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping_cart ALTER COLUMN item_id SET DEFAULT nextval('public.shopping_cart_item_id_seq'::regclass);


--
-- TOC entry 3013 (class 0 OID 17696)
-- Dependencies: 200
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('565501303-7', 'A Chinese in a Coma', 'Implant CCM pulse genrtr', '$26.47', 'Drama', 'Ethan Brand-Hardy', 'Frami, Rosenbaum and Marvin', 1990, 1170514, 1.25);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('745726166-4', 'The Devil Thumbs a Ride', 'Detach ret photocoag NOS', '$82.28', 'Young adult', 'Melessa Studd', 'Weissnat-Breitenberg', 2010, 5779270, 1.06);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('141143158-8', 'Nick of Time', 'Percut semin ves aspirat', '$2.90', 'Diary', 'Ferdy Wesgate', 'Rutherford-Braun', 2002, 7029098, 2.68);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('721486502-5', 'White Noise 2: The Light', 'Abdominal tomography NEC', '$17.19', 'Paranormal romance', 'Duane Gyngyll', 'Schoen Group', 1995, 3338966, 3.22);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('905399284-7', 'Pleasures of the Flesh (Etsuraku)', 'Replace dental packing', '$94.98', 'Romance', 'Selia Ladbrooke', 'Kassulke-Fahey', 2007, 4768679, 1.92);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('163578512-X', 'Enter Nowhere', 'Lower limb lymphangiogrm', '$2.86', 'Crime', 'Saree Swannick', 'Sanford and Sons', 2005, 9063998, 4.93);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('625773853-9', 'Kimjongilia', 'Peritoneal suture', '$86.40', 'Guide', 'Justen Goggin', 'Lakin Inc', 2011, 9752415, 2.17);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('528063907-9', 'In Vogue: The Editor?s Eye', 'Tympanosympathectomy', '$76.27', 'Cookbook', 'Glenn Kunkler', 'Stamm-Johnson', 2003, 541023, 1.84);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('837725458-1', 'Charly', 'Oth arthrotomy-wrist', '$64.94', 'Comic book', 'Romain Ugoni', 'Schuppe-Legros', 2002, 6889000, 2.33);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('962852031-8', 'Avengers, The', 'Thermocaut/entropion rep', '$28.41', 'Guide', 'Mayer Sancias', 'Hickle Inc', 2006, 2202347, 2.65);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('479204029-9', '1939: Hollywood''s Greatest Year', 'Other suture of tendon', '$1.02', 'Picture book', 'Haleigh Hainsworth', 'Runolfsson Inc', 2003, 2783888, 1.05);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('935595550-2', 'Bird People in China, The (Chûgoku no chôjin)', 'Other heart/pericard ops', '$94.15', 'Graphic novel', 'Babb Grigson', 'Sipes Inc', 2006, 6787124, 2.13);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('289150352-X', 'Harper', 'Pressure dressing applic', '$74.48', 'Prayer', 'Dirk Windas', 'Schinner, Casper and Gutkowski', 2012, 8911169, 1.57);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('797991817-7', 'Vacancy', 'Nonmag remov post seg FB', '$72.53', 'Coming-of-age', 'Clarissa Huxter', 'Lind-Emard', 2008, 4522197, 1.35);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('663355652-7', 'Conrack', 'Osteoclasis NEC', '$99.48', 'Travel', 'Lucho Hiner', 'Padberg Group', 1985, 8088713, 2.78);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('175273118-2', 'Disclosure', 'Angiocardiography NOS', '$26.37', 'True crime', 'Tobye Fewless', 'Boehm-Gerlach', 1998, 5660912, 3.32);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('779017789-3', 'Hell House', 'Eswl gb/bile duct', '$16.52', 'Comic book', 'Early Gledhall', 'Wolf and Sons', 1992, 5582098, 2.6);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('244495322-3', 'You''re Next', 'Speech defect training', '$39.05', 'Math', 'Corby Lethbrig', 'Sporer, Bins and Kessler', 1994, 4463570, 2.82);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('521735461-5', 'Wrong Cops', 'Epistaxis control NEC', '$89.78', 'Cookbook', 'Brewer Pearsall', 'Schmeler-Bins', 1999, 577884, 2.72);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('231820653-8', 'Flood', 'Wide exc bony palate les', '$3.91', 'Health/fitness', 'Jobyna Lowin', 'Quitzon-Kris', 1984, 8437595, 4.25);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('858194346-2', 'Cherry Tree Lane', 'Nephrocystanastomosi NOS', '$82.05', 'Suspense', 'Modestia Stanley', 'Cole and Sons', 2002, 1512946, 1.7);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('368063051-4', 'My Wife Is a Gangster 2 (Jopog manura 2: Dolaon jeonseol)', 'Joint biopsy NEC', '$41.55', 'Memoir', 'Rosabella Haggerwood', 'Buckridge Group', 2006, 9243230, 2.25);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('169291605-X', 'Confidence', 'Simple mastoidectomy', '$89.30', 'Textbook', 'Minerva Pardy', 'Treutel, King and Muller', 1984, 3874117, 1.92);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('600909947-1', 'Twilight', 'Remove bile duct prosth', '$48.96', 'Graphic novel', 'Arielle Bloomfield', 'Hartmann, Green and Bogisich', 1992, 3822136, 4.04);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('651466403-2', 'Lorenzo''s Oil', 'Oth part cholecystectomy', '$5.83', 'Home and garden', 'Vally Ander', 'Gaylord-Swift', 1998, 4894541, 1.62);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('823957154-9', 'Harvest Month, The (Elokuu)', 'Part ostectomy-femur', '$18.44', 'Horror', 'Don Stitwell', 'Lockman-Gulgowski', 2012, 3465209, 4.17);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('567049390-7', 'Violet Tendencies', 'Cervical spine x-ray NEC', '$74.87', 'Historical fiction', 'Shea Jarvis', 'Predovic, Buckridge and Leannon', 2001, 9250857, 4.44);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('349330131-6', 'Bride with White Hair, The (Bai fa mo nu zhuan)', 'Autoimmune dis immunizat', '$12.74', 'Religion, spirituality, and new age', 'Zollie Duly', 'Goldner-Farrell', 2005, 194146, 1.58);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('270712836-8', 'At Home by Myself... with You', 'Ovarian biopsy NEC', '$37.74', 'Sports and leisure', 'Adah MacNeil', 'Hermann, Bernhard and Purdy', 2006, 5247292, 3.96);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('155749938-1', 'Fat Girl (À ma soeur!)', 'Alcoholism counselling', '$80.06', 'Paranormal romance', 'Brade Divill', 'Sanford, Beatty and Muller', 2011, 7388757, 3.3);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('911999032-4', 'Murder at 1600', 'Oth arthrotomy-ankle', '$35.76', 'Textbook', 'Antonius Dickenson', 'Jacobson-Kuhic', 1994, 3705242, 3.95);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('062109822-1', 'Cloudy with a Chance of Meatballs', 'Skull transilluminat', '$30.52', 'Fantasy', 'Junette Izkoveski', 'Terry, Fritsch and Parker', 1991, 742705, 1.7);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('841058014-4', 'Ilsa, She Wolf of the SS', 'AICD check', '$23.98', 'Textbook', 'Patti Durnford', 'Schroeder, Dickens and McKenzie', 1966, 9477633, 2.93);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('914875553-2', 'Theory of Everything, The', 'Closed testicular biopsy', '$51.44', 'Diary', 'Monica Kee', 'Johnston-Armstrong', 1994, 5843083, 3.05);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('764014865-0', 'Gore Gore Girls, The', 'Individ psychotherap NEC', '$90.84', 'Chick lit', 'Lorinda Perrelle', 'Boyer Group', 1994, 907551, 1.41);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('503237818-6', 'Like Crazy', 'Other suture of tendon', '$10.64', 'Paranormal romance', 'Neila Fogt', 'Hagenes LLC', 2006, 6636843, 2.37);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('845282192-1', 'Amos & Andrew', 'Endocar cushion rep NEC', '$96.95', 'Fantasy', 'Corinna Jancso', 'Douglas Inc', 1989, 8142554, 1.8);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('359217434-7', 'Big City, The (Mahanagar)', 'Injct/infus glucarpidase', '$65.33', 'True crime', 'Maisie Campana', 'Halvorson, Schaden and Towne', 2005, 2547357, 1.52);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('476528037-3', 'Viva Villa!', 'Diaphragmatic plication', '$35.56', 'Review', 'Kerby Bassingham', 'Hudson, Murray and Williamson', 2011, 3165082, 1.47);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('711371002-6', 'America Before Columbus', 'Pros rep endocar cushion', '$59.40', 'Guide', 'Seamus Gullberg', 'Little Group', 1986, 3881695, 2.77);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('637657825-X', 'Mr. Nice Guy (Yat goh ho yan)', 'Other eyelid incision', '$89.96', 'Journal', 'Laurie Schoffel', 'Wuckert-Schamberger', 1997, 1097019, 4.6);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('037146821-3', 'Texas Terror', 'Radical orbitomaxillect', '$30.71', 'Political thriller', 'Sigismondo Buckston', 'Koch-Homenick', 1969, 810625, 1.29);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('796580315-1', 'Eye for an Eye, An (Silmä silmästä)', 'Thor rep-diaph hern NOS', '$58.34', 'Science', 'Jeannine Forster', 'Dach-Marquardt', 2009, 5680111, 1.1);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('068919983-X', 'Just the Ticket', 'Injection of larynx', '$45.48', 'Classic', 'Hewe Benoit', 'Schmeler, Gislason and Jones', 1997, 1983800, 3.38);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('012741986-1', 'Tough Ones, The (Häjyt)', 'Inject tranquilizer', '$78.22', 'Coming-of-age', 'Paddy Syversen', 'Gorczany, Nader and Corkery', 2010, 9383324, 2.42);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('007521393-1', 'Puppet Master vs. Demonic Toys (Puppet Master 9)', 'Aspiration of ovary', '$62.75', 'Romance', 'Rochell Larroway', 'Lind Inc', 2001, 8526566, 3.27);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('358245000-7', 'Ghost and Mr. Chicken, The', 'Hepatotomy', '$2.70', 'Memoir', 'Griz Warlawe', 'Collins-Labadie', 2004, 3914091, 4.69);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('725598712-5', 'Extreme Ops', 'Destruct larynx les NEC', '$79.59', 'Crafts/hobbies', 'Rip Bednell', 'Jacobs, Bradtke and Bosco', 2009, 6141838, 3.64);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('587258898-4', 'Here Comes Peter Cottontail ', 'Open bronchial biopsy', '$84.92', 'Political thriller', 'Marika Fotherby', 'Koelpin, Waelchi and Waters', 2004, 5277996, 2.68);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('256035178-1', 'My Gun is Quick', 'Tendon trnsfr/transplant', '$58.64', 'Western', 'Portie Weiner', 'Donnelly, Blanda and Hand', 2001, 8786375, 2.01);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('357279663-6', 'We Are from the Future (My iz budushchego)', 'Closed thyroid gland bx', '$46.10', 'Western', 'Salomi Coveley', 'Kuhic Inc', 1989, 1126396, 2.28);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('012467595-6', 'The Magnet', 'Hip structure division', '$67.90', 'Crafts/hobbies', 'Lloyd Orringe', 'Gerhold and Sons', 1995, 5647815, 3.38);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('399282166-8', 'Frankenhooker', 'Ventr septa def rep NEC', '$57.94', 'Encyclopedia', 'Codi Josefsen', 'Schinner Inc', 2003, 9989466, 1.23);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('496223091-3', 'Key Largo', 'Pelvic evisceration', '$38.86', 'Encyclopedia', 'Hughie Leggate', 'Baumbach, Altenwerth and McGlynn', 2012, 3805837, 4.31);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('758283987-0', 'Son of the Bride (Hijo de la novia, El)', 'Imp/rep CRT defib genat', '$25.92', 'Cookbook', 'Ronny Perroni', 'Gislason-Auer', 2012, 9488348, 1.7);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('779546661-3', 'Pekka ja Pätkä puistotäteinä', 'Dental operation NEC', '$60.73', 'Encyclopedia', 'Sunny Pahl', 'Hilll-Gutkowski', 1992, 6928851, 2.92);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('210021148-X', 'Bubble Boy', 'Left heart cardiac cath', '$80.54', 'True crime', 'Lancelot Scathard', 'Cole, Orn and Schmitt', 2011, 6970508, 1.21);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('020197894-6', 'Apollo 18', 'Other transanal enema', '$17.49', 'Philosophy', 'Elana Shires', 'Paucek-Ankunding', 2000, 559148, 2.62);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('705291331-3', 'Nanny Diaries, The', 'Bil fem hern repair NEC', '$29.74', 'History', 'Jaclin Allabush', 'Kunde Group', 1990, 2111862, 4.8);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('689276258-1', 'Long Ride Home, The', 'Other bone dx proc NEC', '$72.78', 'Math', 'Sylvester Mayer', 'Reichel, Powlowski and Aufderhar', 2005, 6586408, 4.04);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('859727177-9', 'Halloween is Grinch Night', 'Auto bone mt w/o purg', '$55.76', 'Romance', 'Robinet Smee', 'McDermott-Pagac', 2012, 3503289, 3.54);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('714841295-1', 'Moolaadé', 'Conduit artium-pulm art', '$42.56', 'Coming-of-age', 'Tildie Lopes', 'Bauch-Frami', 1996, 7976522, 1.95);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('915194193-7', 'C.H.O.M.P.S.', 'Destruc-ankle lesion NEC', '$97.13', 'Philosophy', 'Dina Pressman', 'Schmidt, Kshlerin and Nicolas', 2010, 9111272, 3.05);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('772346633-1', 'Pride and Prejudice', 'Aspir curett uterus NEC', '$54.33', 'Classic', 'Manfred Clemitt', 'Ritchie, Swift and Toy', 2001, 9531322, 4.99);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('680805713-3', 'United States of Secrets (Part One): The Program', 'Eustachian tube ops', '$58.56', 'Religion, spirituality, and new age', 'Ambur Coster', 'Stehr-Jakubowski', 2003, 1446812, 1.35);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('179787434-9', 'Perfect World, A', 'Esophageal manometry', '$8.46', 'History', 'Mill Sowte', 'Hickle LLC', 2003, 7001170, 1.81);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('979066769-8', 'In the Navy', 'Replace cystostomy tube', '$45.37', 'Chick lit', 'Alida Castard', 'Davis Inc', 2008, 1039244, 4.57);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('089913188-3', 'Arena', 'Mid & inner ear biopsy', '$69.71', 'Review', 'Paloma Scorey', 'O''Hara, Lockman and Rosenbaum', 1994, 2350647, 3.1);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('349173947-0', 'Mac and Me', 'Micro exam-blood NEC', '$27.05', 'Art/architecture', 'Klemens Dacres', 'Weber, Bednar and Bechtelar', 2010, 1027550, 4.27);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('585564762-5', 'Under Fire', 'Splenic cyst marsupial', '$67.31', 'Dictionary', 'Oriana Hellings', 'Hintz Group', 2012, 6835987, 3.33);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('204725391-8', 'Love''s Deadly Triangle: The Texas Cadet Murder', 'Local excis rectal les', '$82.19', 'Picture book', 'Petey Llopis', 'Doyle and Sons', 1996, 6819929, 4.43);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('056302205-1', 'Beverly Hills Ninja', 'Ileostomy NOS', '$49.74', 'Prayer', 'Ellswerth Moralee', 'Halvorson Group', 2011, 3315631, 1.55);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('956132571-3', 'Vessel of Wrath', 'Closure of proctostomy', '$32.33', 'Anthology', 'Glenda Joselevitz', 'Kertzmann, Maggio and Roberts', 2008, 199430, 1.51);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('452263482-X', 'Children of the Corn', 'Repair retina detach NEC', '$19.25', 'Fantasy', 'Broddie Tokley', 'Maggio Inc', 2009, 3824839, 4.06);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('795267525-7', 'Zookeeper', 'Music therapy', '$69.38', 'Review', 'Shae Simone', 'Lindgren and Sons', 2012, 6922256, 3.13);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('798754430-2', 'Gentlemen Broncos', 'Thoracoscopc lung biopsy', '$65.85', 'Guide', 'Constancy Worgen', 'Bergnaum-Rowe', 2010, 4910997, 1.86);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('661467673-3', 'Olympia Part Two: Festival of Beauty (Olympia 2. Teil - Fest der Schönheit)', 'Bone marrow ops NEC', '$46.91', 'Biography', 'Jacqueline Trollope', 'O''Conner, Predovic and Cummings', 2009, 3972804, 4.78);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('831627765-4', 'Very Bad Things', 'Ins inflate penis prosth', '$80.06', 'Prayer', 'Jay Knibbs', 'Blanda-Morissette', 2007, 9965566, 1.07);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('916412825-3', 'Journey to the West: Conquering the Demons (Daai wa sai you chi Chui mo chun kei)', 'Lac punctum incision', '$15.76', 'Romance', 'Brita Jodrelle', 'Bosco Group', 2002, 597188, 4.21);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('306075133-1', '8 Diagram Pole Fighter, The (a.k.a. Invincible Pole Fighter) (Wu Lang ba gua gun)', 'Alveoloplasty', '$20.73', 'Cookbook', 'Davie Nevins', 'Purdy-Bechtelar', 2003, 8016553, 4.18);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('420224614-4', 'The Tattooist', 'Hypogloss-facial anastom', '$67.26', 'True crime', 'Idelle Gilding', 'Stark-Lehner', 1992, 3071014, 4.29);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('532243709-6', 'Fantastic Fear of Everything, A', 'Dx procedure thorax NEC', '$10.07', 'Political thriller', 'Michail Petruk', 'Hilll, Weimann and Kuhlman', 2011, 405896, 1.03);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('387008359-X', 'I Start Counting', 'Periren/vesicle excision', '$45.93', 'Home and garden', 'Jada Kettow', 'Crist and Sons', 2011, 5878639, 3.69);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('182599326-2', 'Honeymoon', 'Open uterine biopsy', '$40.61', 'Satire', 'Jeno Huygen', 'Vandervort Inc', 2002, 7351142, 3.4);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('094081671-7', 'Frank', 'Extraoc musc inj repair', '$32.59', 'Crime', 'Rowe Pimlock', 'Bechtelar-Crist', 1954, 7062335, 1.69);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('490888836-1', 'La Bande du drugstore', 'Cnt intraart bld gas mon', '$9.60', 'Self help', 'Ranique Greenway', 'Funk LLC', 1999, 7755405, 2.44);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('681048275-X', 'Attack from Space', 'Ovarian denervation', '$23.89', 'Paranormal romance', 'Bobbi Dumingo', 'Brekke and Sons', 2010, 9427336, 1.67);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('863967300-4', 'Breath, The (Nefes: Vatan sagolsun)', 'Endolymphatic shunt', '$54.27', 'Autobiography', 'Kerstin Plowes', 'Runte, Kuhn and Schinner', 1991, 6502215, 3.42);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('953469093-7', 'By the Bluest of Seas (U samogo sinego morya)', 'Open reduc-metac/car fx', '$92.40', 'Satire', 'Sunny Duffett', 'Lemke, Denesik and Christiansen', 1973, 1181082, 1.66);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('129400156-6', 'Constant Gardener, The', 'Perianal excision NEC', '$89.65', 'Humor', 'April Ivanchin', 'Tremblay-Rohan', 1995, 2871874, 1.53);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('216824768-4', 'Hard Day''s Night, A', 'Abdominal wall sinogram', '$83.57', 'Home and garden', 'Shirley Tebbett', 'Auer and Sons', 2003, 4570114, 3.54);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('869446853-0', 'Dr. Mabuse: The Gambler (Dr. Mabuse, der Spieler)', 'Limb length-metacar/car', '$75.63', 'True crime', 'Tirrell O''Looney', 'Doyle, Cormier and Padberg', 1998, 2710086, 2.77);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('048275792-2', 'Bomber', 'Occlude leg artery NEC', '$88.36', 'Science', 'Sansone Hulcoop', 'Kihn, Ebert and Pagac', 1998, 6409182, 3.98);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('197360679-8', 'Omagh', 'Subtalr jt arthroereisis', '$28.18', 'Suspense', 'Reggie Keeping', 'Senger LLC', 1987, 1657156, 4.91);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('616739403-2', 'Charleston', 'Gastric tube irrigat NEC', '$16.85', 'Prayer', 'Berte Breadmore', 'Dach, Casper and Reynolds', 2000, 3083261, 1.15);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('784155968-2', 'Ip Man', 'Lap total abdominal hyst', '$84.46', 'Graphic novel', 'Mose Purkis', 'Mohr-Kreiger', 1998, 758716, 1.1);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('752472954-5', 'Bishop Murder Case, The', 'Amputation stump revis', '$99.79', 'Young adult', 'Andie Dyment', 'Ruecker, Gleichner and Turcotte', 2008, 6497595, 1.45);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('634444131-3', 'Balance, La', 'Nasophary contrast x-ray', '$83.89', 'Alternate history', 'Raymund Elloy', 'Roberts-Ledner', 2008, 9354363, 4.27);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('012573390-9', 'Bully', 'Hand fasciectomy NEC', '$80.23', 'Paranormal romance', 'Mickey Monier', 'Upton Group', 2000, 673733, 2.01);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('996146139-8', 'Heart in Winter, A (Un coeur en hiver)', 'Pneumoencephalogram', '$5.57', 'Horror', 'Adelind Slorance', 'Rice-Dicki', 2008, 1381496, 4.78);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('373833352-5', 'Bounce: Behind the Velvet Rope', 'Autopsy', '$26.29', 'Historical fiction', 'Aurea Christofe', 'Jerde, Jones and Swift', 2004, 7414420, 1.67);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('529804966-4', 'Death Ship', 'Subarach-ureteral shunt', '$64.11', 'Science', 'Vickie Dmtrovic', 'Reichert, Lynch and Barton', 2007, 3535732, 1.3);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('817072394-9', 'Pyx, The', 'Emphysema bleb plication', '$37.67', 'Crime', 'Tera Mapholm', 'McKenzie Inc', 1993, 4615424, 2.15);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('391768959-6', 'Men with Guns', 'Insert/repl oth neurost', '$21.99', 'Prayer', 'Felicity Marshland', 'Marks LLC', 1984, 9726432, 2.05);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('063888040-8', 'My Little Pony: Equestria Girls', 'Scleral buckle w implant', '$13.44', 'Philosophy', 'Faun Labbet', 'Lesch-Leuschke', 2010, 6692704, 2.04);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('629550450-7', 'Are You Scared?', 'Remove head/neck dev NEC', '$91.61', 'Graphic novel', 'Willie Mattin', 'Hettinger, Conn and Kassulke', 2003, 3901047, 3.68);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('235868244-6', 'Mothra (Mosura)', 'Fat grft skin/subq tiss', '$4.69', 'Poetry', 'Cherida Luggar', 'Kautzer Inc', 2010, 2138214, 4.03);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('245838298-3', 'Heist', 'Orbitotomy NEC', '$22.49', 'Journal', 'Claudian Denk', 'Hegmann-Cartwright', 1998, 4272840, 4.23);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('253819714-7', 'Adopted', 'Thyroid suture', '$33.54', 'Travel', 'Jewel Watson', 'Lemke Inc', 1986, 9711467, 1.53);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('933376029-6', 'Terminator 2: Judgment Day', 'Hearing examination NOS', '$51.20', 'Fairytale', 'Orrin Dell Casa', 'Hoeger-Kuhic', 2012, 7899865, 4.4);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('765870162-9', 'Kwik Stop', 'Clos large bowel biopsy', '$8.13', 'Memoir', 'Josi Evitt', 'Conroy-Gislason', 2010, 4626735, 1.38);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('448584918-X', 'Left-Hand Side of the Fridge, The (Moitié gauche du frigo, La)', 'Hepatic injection NEC', '$87.72', 'Self help', 'Adeline Haborn', 'Rice LLC', 2009, 1514125, 1.95);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('002519595-6', 'Winter Soldier', 'Micro exam-nervous NEC', '$79.99', 'Classic', 'Cynthie Hedde', 'Olson Inc', 1996, 849939, 4.68);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('489988033-2', 'Inseparable', 'Destruc-shoulder les NEC', '$74.86', 'Review', 'Arlee Brick', 'Glover, Marquardt and Rohan', 2012, 8961129, 3.99);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('494723217-X', 'Poor Us: An Animated History of Poverty', 'Plaster jacket applicat', '$21.94', 'Romance', 'Rosanna Arrowsmith', 'Schinner, Mertz and Lesch', 1994, 9787654, 1.63);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('759953884-4', 'Rififi (Du rififi chez les hommes)', 'Opn rt hemicolectomy NEC', '$97.70', 'Romance', 'Roxi Scole', 'Schaden Group', 1997, 5676634, 4.07);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('592518419-X', 'Fast Life', 'Oth arthrotomy-hip', '$29.56', 'Comic book', 'Irvine Pash', 'Thompson-Boyer', 2012, 8297646, 4.88);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('808741882-4', 'Diary of a Mad Housewife', 'Injection into pericard', '$48.11', 'Business/economics', 'Kirby Sparry', 'Keebler Group', 2003, 2175801, 2.26);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('195062912-0', 'Storm Warriors, The (Fung wan II)', 'Hysterotomy', '$87.75', 'Fairytale', 'Colas Benduhn', 'Stoltenberg, Nitzsche and Leuschke', 2012, 4141320, 2.3);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('683442384-2', 'Up in Arms', 'Elecmag hear dev implant', '$61.84', 'Suspense', 'Gracie Widocks', 'Lind Inc', 2011, 176472, 4.49);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('112411821-7', 'Stitches', 'Sutur capsul/ligamen arm', '$54.40', 'Health/fitness', 'Emmott Master', 'McClure and Sons', 1990, 7900068, 2.6);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('847776827-7', 'Emperor''s New Groove 2: Kronk''s New Groove, The', 'Revise disc prost thora', '$42.77', 'Journal', 'Putnem Coche', 'Harris and Sons', 1988, 1288345, 2.03);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('266695649-0', 'Nurse 3D', 'Papillary muscle ops', '$4.19', 'Young adult', 'Cris Camacke', 'Grimes-Kshlerin', 2005, 9017776, 4.89);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('663080344-2', 'Andy Hardy''s Double Life', 'Lap radical vaginal hyst', '$5.89', 'Math', 'Cindra Ghelardoni', 'Schneider LLC', 1993, 5447697, 1.24);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('255189015-2', 'Ballad of Little Jo, The', 'Cervical canal dilation', '$97.16', 'Drama', 'Lester Martineau', 'Kihn-Moore', 2011, 448466, 5.0);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('634774350-7', 'Cheech & Chong: Still Smokin''', 'Pharyngeal dilation', '$23.48', 'Drama', 'Levi Rash', 'White, Reinger and Casper', 2007, 8007617, 4.56);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('241701753-9', 'Naughty Room, The', 'Other pleural excision', '$38.64', 'Thriller', 'Margie Mityukov', 'Roob, Koelpin and Carter', 2011, 2992280, 2.61);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('935962845-X', 'The Wonders', 'Micro exam-lower GI NEC', '$95.56', 'Romance', 'Cristen Ghiotto', 'Bashirian-Gerhold', 2001, 2669179, 1.67);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('779002953-3', 'Russell Peters: Outsourced', 'Abd vein resect & anast', '$75.26', 'Travel', 'Doyle felip', 'Fay, Kihn and Rogahn', 1986, 9140340, 2.71);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('484440151-3', 'Hollywood Between Paranoia and Sci-Fi. The Power of Myth', 'Pass musculosk exer NEC', '$82.11', 'Western', 'Hendrick Abrahamsson', 'Olson Group', 2008, 9001096, 2.59);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('410190780-3', 'White Cliffs of Dover, The', 'Carporadial fusion', '$88.81', 'Home and garden', 'Tades Nertney', 'Lindgren, Simonis and Mante', 2000, 1596316, 3.29);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('260314263-1', 'Apartment Zero', 'Pros rep atrial def-opn', '$85.72', 'Memoir', 'Maryjane Bottjer', 'Pacocha-Nolan', 1999, 5442231, 4.79);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('826383883-5', 'Star Wars: Episode I - The Phantom Menace', 'Urethral repair NEC', '$12.76', 'Comic book', 'Onfroi Vayne', 'Gulgowski and Sons', 2008, 3550361, 4.17);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('579325145-6', 'K-11', 'Insert nasopharyn airway', '$16.72', 'Crafts/hobbies', 'Deeanne Colquete', 'Harris, Hills and Satterfield', 1998, 8437892, 1.22);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('891119616-9', 'Thunder Bay', 'Portal contr phlebogram', '$14.63', 'Prayer', 'Paulie Lyvon', 'Wintheiser, Walsh and Kilback', 1996, 5664815, 3.04);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('304881958-4', 'Freedom Downtime', 'Mastoid incision', '$28.09', 'Fairytale', 'Rosalynd Abrahamowitcz', 'Ferry, Altenwerth and Frami', 1993, 8102030, 2.25);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('288228019-X', 'The Second Best Exotic Marigold Hotel', 'C & s-op wound', '$83.86', 'Action and adventure', 'Roldan Rockwell', 'Macejkovic LLC', 2011, 801781, 3.95);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('439372847-5', 'Cuban Fury', 'Therapeutc leukopheresis', '$10.89', 'Western', 'Thalia Skouling', 'Jenkins-Thiel', 1993, 6139759, 3.71);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('388476736-4', 'Double Whammy', 'Oth arthrotomy-hip', '$19.29', 'Biography', 'Avram Gotcliffe', 'Windler-Kihn', 2003, 198176, 4.08);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('789193562-9', 'Envy (Kiskanmak)', 'Pulmonary scan', '$73.71', 'Satire', 'Alvan Davies', 'Tromp-Senger', 2001, 8957377, 4.08);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('546357952-0', 'Seventh Cross, The', 'Suture scrotal lacerat', '$36.31', 'Biography', 'Nata Fowlestone', 'Kshlerin-Tillman', 1999, 3751459, 4.74);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('936482083-5', 'Sorrow and the Pity, The (Le chagrin et la pitié)', 'Cls reduc-sep epiphy NEC', '$35.96', 'Short story', 'Lanie Petr', 'Wehner-Wiza', 2001, 3111282, 2.52);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('298252107-5', 'Astro Boy', 'Remov vas deferens valve', '$18.34', 'Suspense', 'Kyle Lafuente', 'Von-Schaden', 1994, 8278796, 2.68);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('984797181-1', 'Julian Po', 'Repair rectovag fistula', '$52.75', 'Alternate history', 'Baryram Upstone', 'Bailey LLC', 2012, 8550753, 1.14);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('135822340-8', 'Barbary Coast Gent (Gold Town) (Honest Thief, The)', 'Temp endovsc occls vessl', '$42.97', 'Fantasy', 'Duane Vasyunichev', 'Orn-West', 2006, 8133539, 1.22);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('055458067-5', 'Class Action', 'Applic ext fix dev NOS', '$71.83', 'Short story', 'Ginnifer Piddlehinton', 'Hauck Inc', 2000, 5078897, 3.95);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('255096780-1', 'Two English Girls (Les deux anglaises et le continent)', 'Open incis hern-grft NEC', '$32.39', 'Mystery', 'Dorey Kiffe', 'Rohan LLC', 1995, 5283085, 1.06);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('110551282-7', 'Mortadelo & Filemon: The Big Adventure (La gran aventura de Mortadelo y Filemón)', 'Thyr/parathy dx proc NEC', '$43.24', 'Picture book', 'Irita O''Dyvoie', 'Batz-Boyle', 1997, 1317520, 2.6);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('049149534-X', 'Under the North Star (Täällä Pohjantähden alla)', 'Upper GI series', '$72.62', 'Comic book', 'Freddi Bradburne', 'Paucek LLC', 2004, 8683035, 1.49);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('912235265-1', 'Certified Copy (Copie conforme)', 'Unil femor hrn rep-grft', '$52.94', 'History', 'Karlie Shuttle', 'Gutkowski Group', 2006, 7698326, 3.88);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('415928600-3', 'Tokyo Sonata', 'Repl cardiodefib genratr', '$75.53', 'Short story', 'Minerva Farrance', 'Gutmann, Kihn and Halvorson', 2000, 4927833, 2.77);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('225786832-3', 'Up in Arms', 'Remov vaginal diaphragm', '$64.06', 'Crafts/hobbies', 'Fidel Balmadier', 'Bayer Group', 1996, 4648680, 4.31);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('551029289-X', 'I''m Crazy About Iris Blond', 'Other fasciectomy', '$56.42', 'Chick lit', 'Mahmoud Rubra', 'Schiller Group', 1994, 7868545, 3.94);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('804430979-9', 'Nanny, The', 'Leg vein resect/anastom', '$83.42', 'Horror', 'Valentin Earley', 'Welch-Gottlieb', 1995, 3370247, 1.72);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('392919280-2', 'Maria Bamford: The Special Special Special!', 'Perc ather intracran vsl', '$96.77', 'Science', 'Mathilde Samsworth', 'Shanahan LLC', 1990, 5014922, 3.61);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('269045513-7', 'Mob, The', 'Tibia & fibula biopsy', '$54.63', 'Religion, spirituality, and new age', 'Sadella Boswell', 'Jakubowski-Mraz', 1987, 8649568, 1.91);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('610775534-9', '1911 (Xinhai geming)', 'Other transanal enema', '$54.30', 'Action and adventure', 'Nari Shann', 'Roberts and Sons', 2007, 7983871, 4.55);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('057844142-X', 'Identity', 'Open coronry angioplasty', '$72.43', 'Prayer', 'Sephira Fourmy', 'Abshire Inc', 2005, 1008255, 2.94);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('756692961-5', 'Shape of Things, The', 'Percu gastrojejunostomy', '$69.28', 'Western', 'Jackqueline Dy', 'Daugherty-Volkman', 1999, 7447251, 4.82);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('232333651-7', 'Son of the Bride (Hijo de la novia, El)', 'Disarticulation of ankle', '$8.88', 'Dictionary', 'Cord Belitz', 'Brown, Gaylord and Jast', 2012, 9086283, 3.87);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('700767437-2', 'Distant (Uzak)', 'Upper arm reattachment', '$27.94', 'Suspense', 'Marthena Clark', 'Deckow-Towne', 2000, 2465064, 3.35);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('637158448-0', 'Knockout', 'Drug addict counselling', '$45.45', 'Drama', 'Errol Cadney', 'Bailey and Sons', 2002, 8694173, 3.7);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('468303695-9', 'Final, The', 'Partial sialoadenectomy', '$20.14', 'Picture book', 'Ranice Beagley', 'Olson, Blick and Dibbert', 1996, 945231, 4.57);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('581955340-3', 'Holy Man', 'Remove int fix face bone', '$31.87', 'Textbook', 'Nonna Stolting', 'Maggio LLC', 2007, 2798872, 2.71);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('637705024-0', 'Wolfman, The', 'Corneal incision', '$21.58', 'Suspense', 'Rorke Measor', 'Quitzon Inc', 1992, 4236782, 4.84);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('059906440-4', '127 Hours', 'Osteoclasis-chest cage', '$92.32', 'Guide', 'Prentice Iannetti', 'Crooks-Boyle', 2005, 9258517, 2.06);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('299089474-8', 'Brain Dead', 'Gas hysterosalpingogram', '$44.34', 'Art/architecture', 'Vincenz Chardin', 'Shanahan LLC', 2008, 3053235, 3.35);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('985687655-9', 'Eros (Men and Women) (Noite Vazia)', 'Plethysmogram', '$36.02', 'Drama', 'Eli Ohanessian', 'Gottlieb-Koss', 2011, 1856277, 2.37);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('611895414-3', 'I Am Bruce Lee', 'Stern esophagocolos NEC', '$80.27', 'Art/architecture', 'Milicent Ruppeli', 'Greenfelder and Sons', 1997, 971856, 1.62);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('618186888-7', 'In the Shadow of Doubt (Epäilyksen varjossa)', 'Arthrocentesis', '$20.14', 'Prayer', 'Joby Jakubovitch', 'Mayert-Beer', 1995, 8540875, 3.07);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('749487553-0', 'Overlord', 'Int/comb version w extr', '$89.46', 'Suspense', 'Josh Bashford', 'Ward-Kohler', 2001, 3637798, 3.51);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('450576210-6', 'Vampyr', 'Pacemaker impedance chck', '$27.13', 'Young adult', 'Dorian Gorry', 'Kuhn, Cruickshank and Boyer', 1986, 5402121, 3.76);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('095825458-3', '17 Again', 'Hemodialysis', '$59.06', 'Children''s', 'Haslett Jarrel', 'Rodriguez and Sons', 1984, 7353824, 1.98);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('708925873-4', 'Panic in the Streets', 'Spleen operation NEC', '$11.97', 'Young adult', 'Kittie Lyal', 'Reinger and Sons', 1997, 2757736, 3.04);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('560781563-3', 'Gurren Lagann: The Lights in the Sky are Stars (Gekijô ban Tengen toppa guren ragan: Ragan hen)', 'Repair conjunct lacerat', '$38.80', 'Romance', 'Carlin Burnsyde', 'Crooks Inc', 1993, 7339924, 1.16);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('924502256-0', 'Human Lanterns (Ren pi deng long)', 'Neurologic examination', '$80.01', 'Autobiography', 'Lorri Swale', 'Huel, Stoltenberg and Douglas', 2001, 8443786, 4.68);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('891764604-2', 'Sugar Town', 'Urethroves junct plicat', '$18.92', 'Fantasy', 'Grady Dixey', 'Schiller and Sons', 2010, 4283885, 1.19);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('741644622-8', 'Man on the Train (Homme du train, L'')', 'Lid lacer rx-prt th NEC', '$40.75', 'Encyclopedia', 'Dulcinea Shillum', 'O''Kon, Dicki and Denesik', 2005, 2814398, 4.51);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('987313498-0', 'Black Orchid, The', 'Ureteral operation NEC', '$97.01', 'Classic', 'Jeannette McConaghy', 'Weber, Cormier and Aufderhar', 2004, 7263696, 1.37);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('130987216-3', 'MacGyver: Lost Treasure of Atlantis', 'Male genital op NEC', '$83.32', 'Fantasy', 'Gusty Klainman', 'Berge, Turner and Pouros', 2006, 7470209, 4.13);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('295525808-3', 'Our Man in Havana', 'Other brain dx procedure', '$88.49', 'Religion, spirituality, and new age', 'Rubin Nassey', 'Carroll, Skiles and Leffler', 2001, 9136720, 1.11);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('825307248-1', 'Children of the Corn III', 'Total esophagectomy', '$64.98', 'Coming-of-age', 'Rice Simoni', 'Ritchie-Mosciski', 1994, 3016644, 3.28);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('603718711-8', 'Life 2.0', 'Incision uterine septum', '$32.28', 'Home and garden', 'Laughton Magister', 'Feest-Jacobson', 1988, 1490769, 3.13);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('472596990-7', 'Viola', 'Skin excision for graft', '$81.17', 'Western', 'Joeann Bengefield', 'Ankunding LLC', 1995, 6655555, 2.03);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('190938711-8', 'Persona', 'Esophagoscopy thru stoma', '$84.17', 'Science fiction', 'Charlton De Brett', 'Volkman LLC', 1997, 2887578, 1.02);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('394598519-6', 'Secret Garden, The', 'Excis metatar/tar-graft', '$16.82', 'Satire', 'Rowen Myott', 'Runte, Dach and Armstrong', 1996, 2735215, 1.06);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('264072693-5', 'Laws of Attraction', 'Incis larynx trachea NEC', '$18.20', 'Suspense', 'Jacquette Gaunson', 'Purdy-Treutel', 2000, 9372442, 1.67);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('987599799-4', 'Devil''s Eye, The (Djävulens öga)', 'Adrenal incision', '$72.27', 'Autobiography', 'Carlene Gambles', 'Schowalter-Durgan', 2012, 2487166, 1.28);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('273177602-1', 'Four Feathers, The', 'Nonexc destr cil bod les', '$58.25', 'Paranormal romance', 'Marsha Pymer', 'Feeney and Sons', 1997, 7270840, 4.66);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('933661665-X', 'Friend Zone (Pagafantas)', 'Open lung biopsy', '$69.67', 'Prayer', 'Kimbra Hugenin', 'Olson, Hilpert and Hettinger', 1991, 6520109, 4.03);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('466677357-6', 'These Final Hours', 'Remove imp dev-metat/tar', '$97.21', 'Paranormal romance', 'Doll Weymont', 'Hettinger, Rolfson and Murphy', 2002, 7818776, 4.53);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('797823140-2', 'The Apocalypse', 'Thorac esophag anast NEC', '$78.01', 'Travel', 'Angelia Inch', 'Wyman-Rosenbaum', 1996, 9549019, 4.72);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('864197998-0', 'GasLand', 'Skel xray-upper limb NOS', '$5.48', 'Short story', 'Jerry Parman', 'Walter, Paucek and Gleichner', 2010, 7320384, 3.15);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('114584286-0', 'Lot Like Love, A', 'Pericardiocentesis', '$97.15', 'Fairytale', 'Tybalt Vuitton', 'Kozey, Jerde and Gusikowski', 1987, 4972831, 2.66);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('452522709-5', 'Saints and Soldiers', 'Partial ostectomy NEC', '$47.47', 'Journal', 'Odelia Simmank', 'Stoltenberg-Hartmann', 2009, 9703397, 3.86);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('621854255-6', 'Curious George', 'Head/neck ves incis NEC', '$58.99', 'Art/architecture', 'Dannie Tebbit', 'Kerluke-Halvorson', 2009, 5672373, 2.01);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('901153852-8', 'Vincent & Theo', 'Endo ins/re brnc val,mul', '$24.35', 'Cookbook', 'Marj Semered', 'Hamill and Sons', 1990, 4547506, 4.65);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('785513696-7', 'Hypocrites', 'Evac ob hemat vulva/vag', '$57.20', 'Encyclopedia', 'Wendall Frier', 'Jacobi Group', 2006, 100578, 1.02);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('983589321-7', 'iSteve', 'Ventr septa def rep NEC', '$34.26', 'Action and adventure', 'Arri Hawkswell', 'Hickle Group', 1984, 4320328, 4.14);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('462228616-5', 'Hickey and Boggs', 'Breast xerography', '$8.14', 'Diary', 'Darelle Tousy', 'Fritsch LLC', 2004, 5769464, 1.89);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('755686002-7', 'Interrupters, The', 'Rubella vaccination', '$35.08', 'Fantasy', 'Dolf Ferrier', 'Weber-Rosenbaum', 2009, 336795, 3.67);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('162357283-5', 'Alone (Issiz adam)', 'Dental x-ray NEC', '$66.73', 'True crime', 'Wilburt Padbury', 'Sipes Inc', 2006, 530707, 1.32);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('660703244-3', 'Birth', 'Bile duct incision NEC', '$49.98', 'Drama', 'Gertrude Tew', 'Conroy, Yundt and Aufderhar', 1999, 6340730, 4.87);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('125704596-2', '"Great Performances" Cats', 'Aortocor bypas-3 cor art', '$30.90', 'Travel', 'Mathilda Charrington', 'Reichert Inc', 1993, 5071859, 2.5);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('970772357-2', 'Longest Yard, The', 'Peritoneal lavage', '$31.31', 'Encyclopedia', 'Pammie Ridesdale', 'Abbott, Kohler and Klein', 1988, 2338452, 1.36);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('587553305-6', 'Summer Place, A', 'Lap gastric restric proc', '$61.02', 'Science', 'Johny Sizland', 'Powlowski, Witting and Flatley', 1998, 5603494, 3.27);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('442512297-6', 'Class of 1999', 'Destruct peritoneal tiss', '$53.90', 'Paranormal romance', 'Billie Emberton', 'Prosacco, Schuppe and Stokes', 2005, 6207782, 3.46);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('813672755-4', 'Possession of Joel Delaney, The', 'Ins intra-ansm pres mntr', '$97.94', 'Chick lit', 'Donetta Waterdrinker', 'Dicki-Torp', 2011, 6955086, 1.59);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('496476054-5', 'Hideous Sun Demon, The', 'Bilateral vulvectomy', '$1.97', 'Home and garden', 'Gustav Lovejoy', 'Fisher Inc', 1985, 7095775, 4.62);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('257089292-0', 'Five Children and It', 'Totl reconstc breast NOS', '$21.18', 'Paranormal romance', 'Corey Orneles', 'Nicolas, Heaney and McClure', 1986, 8345688, 3.44);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('545395722-0', 'The Hire: Hostage', 'Cardiac mapping', '$18.91', 'Crime', 'Shannon Rilston', 'Schamberger-Sporer', 1999, 1932471, 1.36);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('945918848-6', 'Tokyo Decadence (Topâzu)', 'Repl cardiodefib leads', '$75.47', 'Short story', 'Winnie Desseine', 'Pfeffer Inc', 1998, 2270410, 2.13);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('493111511-X', 'Saints and Soldiers', 'Choledochohepat intubat', '$12.10', 'Diary', 'Feliks Buggy', 'Upton, Effertz and Hahn', 1996, 1287224, 2.77);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('900954159-2', 'Final Approach', 'Sphenoidotomy', '$1.68', 'Journal', 'Sosanna Korneichik', 'Will LLC', 2005, 2097175, 3.96);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('033191203-1', 'Armadillo', 'Tm manipulation NEC', '$55.60', 'Travel', 'Nada Blethin', 'Goldner and Sons', 2010, 4046578, 4.57);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('779523141-1', 'Superman III', 'Tm contrast arthrogram', '$4.45', 'Political thriller', 'Shalna Shewon', 'Kohler LLC', 2008, 8346611, 3.71);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('714974033-2', 'Tall Guy, The', 'Op red-int fix tib/fibul', '$33.41', 'Diary', 'Bern Sandall', 'Herzog-Schoen', 2007, 2081048, 4.5);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('326731155-1', 'Skeleton Crew', 'Other chest cage incis', '$66.76', 'True crime', 'Humfrid Destouche', 'Reichert Inc', 1990, 514552, 2.04);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('685289132-1', 'Ju-on: The Curse 2', 'Esophagomyotomy', '$62.65', 'Drama', 'Kayle Loachhead', 'Jaskolski-Lehner', 2009, 3748675, 3.28);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('761627436-6', 'Peppermint Candy (Bakha satang)', 'Limb lengthen proc NEC', '$32.43', 'Alternate history', 'Mariel Zamorrano', 'Lockman-Hansen', 2002, 3428507, 2.29);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('670638047-4', 'Skins', 'Homograft to skin', '$42.52', 'Cookbook', 'Dorita Corkett', 'Moen-Sawayn', 2011, 9566108, 3.51);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('850553356-9', 'Order, The', 'Ins/rep mul pul gn,rechg', '$60.63', 'Short story', 'Helene O''Cahsedy', 'Morissette-Ritchie', 2012, 9698397, 4.86);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('984908053-1', 'Blue Sunshine', 'Vent shunt extracran NEC', '$31.32', 'Math', 'Jeralee Ewols', 'Altenwerth, Crist and Mann', 2003, 1149668, 1.58);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('248605712-9', 'Caravaggio', 'Inject implant urethra', '$64.11', 'True crime', 'Idette Minear', 'Zulauf, Ledner and Donnelly', 2001, 2594192, 3.56);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('171513250-5', 'East is East', 'Low forceps operation', '$36.59', 'Dictionary', 'Bridget Larrington', 'O''Conner Group', 1992, 8401143, 1.89);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('559666805-2', 'Bones Brigade: An Autobiography', 'Sympath nerve inject NEC', '$27.07', 'Graphic novel', 'Caty Larderot', 'Koepp LLC', 2007, 7325658, 4.52);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('784837272-3', 'Hannie Caulder', 'Other tenonectomy', '$45.12', 'Children''s', 'Alika Blinde', 'Johns-White', 1993, 4053753, 3.99);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('897587618-7', 'Allan Quatermain and the Temple of Skulls', 'Brain meninge repair NEC', '$76.12', 'Fairytale', 'Gannie Endicott', 'Predovic Inc', 1999, 1726692, 3.33);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('886828123-6', 'Commandos Strike at Dawn', 'Insert perm tube esophag', '$81.01', 'Science fiction', 'Correy Handmore', 'Hahn Group', 2000, 8815387, 4.7);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('333868171-2', 'Jungo Goes Bananas: Jungo III (Jungledyret Hugo: Fræk, flabet og fri)', 'Arth/pros rem wo re-wrst', '$24.68', 'Classic', 'Mackenzie Lenden', 'Hoeger, Kautzer and Sawayn', 1997, 8538240, 4.02);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('578416852-5', 'Dogwalker, The', 'Subtalr jt arthroereisis', '$76.03', 'Religion, spirituality, and new age', 'Dell Plan', 'Hyatt, Towne and McGlynn', 2009, 5461145, 2.7);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('568276930-9', 'Ainoat Oikeat', 'Rad subtot pancreatectom', '$6.50', 'Historical fiction', 'Nickey Shrubshall', 'McKenzie and Sons', 2000, 1566496, 4.51);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('329738049-7', 'Hogfather (Terry Pratchett''s Hogfather)', 'Multiple sinus incision', '$52.32', 'True crime', 'Grete Kliemann', 'Konopelski Group', 2007, 6288246, 3.73);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('379568142-1', 'Lady in Cement', 'Chorioret les rad implan', '$21.60', 'Religion, spirituality, and new age', 'Bev Melan', 'Smith, West and Boehm', 2012, 1564503, 2.39);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('065382914-0', 'Rahtree: Flower of the Night (Buppha Rahtree)', 'Skin & subq dx proc NEC', '$39.82', 'Chick lit', 'Wrennie Oliphant', 'Fisher-Russel', 1964, 4856107, 1.1);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('682257814-5', 'Rendez-vous d''Anna, Les (Meetings of Anna, The)', 'Adjust lid position NEC', '$90.03', 'Autobiography', 'Tiffanie Tyrone', 'Connelly-Graham', 2000, 1709938, 1.91);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('514395606-4', 'Rustlers'' Rhapsody', 'Stretching of foreskin', '$31.07', 'Prayer', 'Marci Pharoah', 'Larson-Quigley', 1995, 5065782, 2.69);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('527756877-8', 'Innocent Blood', 'Other tracheal repair', '$35.57', 'Biography', 'Blinnie Whitehead', 'Emmerich LLC', 2008, 9225405, 1.04);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('883379866-6', 'Reel Injun', 'Ther ultrasound of heart', '$14.88', 'Encyclopedia', 'Filmore Molyneaux', 'Ryan Inc', 2003, 7980711, 4.69);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('446515304-X', 'Pool Without Water, A (Mizu no nai puuru)', 'Remov post segmnt FB NOS', '$29.14', 'Math', 'Pattie Pulhoster', 'Gaylord-Christiansen', 1993, 3094208, 3.39);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('296602147-0', 'Night to Remember, A', 'Gingivoplasty', '$67.76', 'Chick lit', 'Vassily Cockerell', 'Windler, Balistreri and Hermiston', 2007, 7023065, 1.3);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('766000120-5', 'Salt of the Earth', 'Cervical biopsy NEC', '$10.51', 'Journal', 'Florence Spiller', 'Christiansen-Kiehn', 2011, 6894287, 1.42);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('280240332-X', 'ChromeSkull: Laid to Rest 2', 'Pelvic dye contrast xray', '$13.45', 'Picture book', 'Kaleb Braunroth', 'Goyette-Kling', 2003, 2559444, 4.98);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('208851355-8', 'Saw III', 'Impl fallop tube prosth', '$32.88', 'Crime', 'Pammy Gaggen', 'Herzog and Sons', 2010, 3617516, 3.87);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('892803338-1', 'Pool of London', 'Saliv lesion excis NEC', '$15.53', 'Chick lit', 'Arlina Stegell', 'MacGyver Group', 2008, 8770182, 2.79);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('902926331-8', 'August (Elokuu) ', 'Ovarian wedge resection', '$33.30', 'True crime', 'Alexandra Grgic', 'Klein and Sons', 2010, 3299207, 1.92);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('567122343-1', 'Looking for Eric', 'Root canal w apicoectomy', '$52.73', 'Memoir', 'Mercedes Belitz', 'Donnelly, Powlowski and Graham', 1984, 9057424, 4.47);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('375459457-5', 'Glory Daze', 'Pelvic gas contrast xray', '$1.98', 'Thriller', 'Jenilee Ringham', 'Thiel, Halvorson and Hilll', 2008, 2118802, 4.63);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('788626786-9', 'Summer Wishes, Winter Dreams', 'Sm bowel segment isolat', '$19.35', 'Travel', 'Garret Capstack', 'Gibson, Farrell and Emard', 2006, 6158379, 2.98);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('133235316-9', 'Grand Canyon', 'Meninge vessel ligation', '$6.26', 'Science fiction', 'Tessy Pitway', 'Trantow LLC', 1986, 5315109, 3.88);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('329764334-X', 'Mr. Moto''s Gamble', 'Remov intrauterine pack', '$56.67', 'Classic', 'Lurlene Seary', 'Kris, Bahringer and Schowalter', 1987, 565716, 4.08);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('841931901-5', 'Grass', 'Mastoid incision', '$63.02', 'Science', 'Paolo Aird', 'Parker, Schamberger and Conroy', 2001, 9239904, 1.34);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('809226378-7', 'Lost Boys: The Tribe', 'Lap radical vaginal hyst', '$23.52', 'Dictionary', 'Paola Sidwick', 'Carter-Hegmann', 2009, 6643117, 3.78);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('445239445-0', 'Great Silence, The (Grande silenzio, Il)', 'Diagnostic imaging NOS', '$85.87', 'Humor', 'Meggy Wallbridge', 'Runte-Blanda', 2007, 2027630, 1.54);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('493935519-5', 'King Lear (Korol Lir)', 'Simple sut-common duct', '$71.19', 'Journal', 'Blayne Assiter', 'Kunze, Spinka and Hills', 2010, 2970720, 4.52);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('997493694-2', 'Panic Button', 'Sphinct of oddi measure', '$70.21', 'Picture book', 'Samaria Battye', 'Klein Group', 2002, 8368208, 4.66);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('016838251-2', 'Get on Up', 'Keratophakia', '$12.64', 'Horror', 'Torrance Tarn', 'Cassin Group', 2006, 5851643, 4.14);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('646377394-8', 'Dead & Buried', 'Stapedect w replac incus', '$50.19', 'Anthology', 'Christophe Chaize', 'Gleason-O''Reilly', 1963, 3623193, 4.37);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('056743658-6', 'West Is West', 'Inject tendon of hand', '$86.62', 'Short story', 'Erwin Powlesland', 'Fritsch-Bosco', 2008, 3680142, 3.59);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('817962099-9', 'Valachi Papers,The', 'Proctopexy NEC', '$58.21', 'History', 'Jude Huggard', 'Kilback Group', 2001, 9186353, 4.92);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('803889509-6', 'Wild Geese, The', 'Rvrs totl shldr replacmt', '$5.21', 'Anthology', 'Brier Arr', 'Bahringer LLC', 2011, 4098418, 1.16);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('903882619-2', 'Marriage Italian Style (Matrimonio all''italiana)', 'Revis bile tract anastom', '$67.78', 'Textbook', 'Debi Sergant', 'Kemmer, O''Conner and Carter', 1996, 2251305, 4.36);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('920661357-X', 'White Hunter, Black Heart', 'Endo rem bronch devc/sub', '$67.36', 'Diary', 'Holt Druce', 'Flatley-Cassin', 1989, 7532622, 3.78);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('595282637-7', 'Man from Down Under, The', 'Neuroleptic therapy', '$60.64', 'Classic', 'Chlo Comberbach', 'Grant and Sons', 1996, 4362204, 2.43);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('822800477-X', 'Stella Maris', 'Post nasal pac for epist', '$3.83', 'Crafts/hobbies', 'Corabella Umbers', 'Ledner, Dibbert and Schamberger', 1996, 2111202, 2.27);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('025428193-1', 'Brainstorm', 'Pulmon art wedge monitor', '$44.65', 'Textbook', 'Maire Oldcroft', 'Sporer-Aufderhar', 2003, 7224993, 3.49);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('267756349-5', 'Jesse Stone: Thin Ice', 'Open uterine ligament bx', '$28.81', 'Textbook', 'Elsa Stronough', 'Rath and Sons', 2011, 8742220, 2.67);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('986792926-8', 'Bomb It', 'Sphinct of oddi op NEC', '$74.84', 'Drama', 'Kimball Speare', 'Kling, Lemke and Bartell', 2000, 5531923, 2.63);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('419090537-2', 'Like Minds (Murderous Intent)', 'Rehab for the blind NEC', '$70.25', 'Philosophy', 'Barnard Blankau', 'Donnelly and Sons', 2010, 6284735, 4.0);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('168115051-4', 'You''re Missing the Point', 'Procedure-three vessels', '$21.00', 'Journal', 'Fawnia De Andisie', 'Morissette Inc', 2010, 2237758, 3.32);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('355962207-7', 'Gas, Food, Lodging', 'Leg vein resect/anastom', '$59.59', 'Diary', 'Joelie Kobes', 'Luettgen-Funk', 2009, 4136733, 4.41);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('965436958-3', 'Kabul Express', 'Hemorr contrl post T & A', '$67.04', 'Humor', 'Romy Markl', 'Lowe-Howell', 2011, 7273436, 3.3);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('329416658-3', 'Charlotte''s Web 2: Wilbur''s Great Adventure', 'Bone graft-metatar/tar', '$73.66', 'Philosophy', 'Shelia Hansel', 'Cassin, Larson and Gottlieb', 2002, 4950133, 4.34);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('416906563-8', 'Jesus'' Son', 'Contrast arthrogram', '$18.23', 'Fairytale', 'Aggie Harold', 'Wunsch LLC', 1992, 7610161, 2.72);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('377423422-1', 'Architecture of Doom, The (Undergångens arkitektur)', 'Urethral pressure profil', '$84.84', 'Art/architecture', 'Ema Kobera', 'Kautzer-Collier', 1989, 7888545, 1.52);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('161622304-9', 'Blast from the Past', 'Salivary repair NEC', '$66.64', 'Mystery', 'Harald Stoddart', 'Herzog-Bechtelar', 1984, 6623143, 1.17);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('953489508-3', 'Machine Gun Kelly', 'Abdominal artery excis', '$44.46', 'True crime', 'Lise Armitage', 'Hamill LLC', 1994, 3906621, 4.5);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('050555210-8', 'Relax... It''s Just Sex', 'Heart repair revision', '$76.89', 'Fantasy', 'Nap Irons', 'Johnston Group', 2007, 6172003, 4.67);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('614189703-7', 'Inside Daisy Clover', 'Per nerve adhesiolys NEC', '$55.35', 'Cookbook', 'Uri Stoite', 'Spinka, Corwin and Feil', 2008, 1516018, 1.57);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('027342942-6', 'Simple-Minded Murder, The (Enfaldige mördaren, Den)', 'Inject insulin', '$18.73', 'Cookbook', 'Ursola Stanbro', 'Hagenes-Rath', 2009, 4741241, 4.48);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('519454738-2', 'Promise Me This (Zavet)', 'Other nasal sinus ops', '$43.04', 'Memoir', 'Jackquelin Kupisz', 'Sauer-Morissette', 2007, 7224398, 4.23);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('860954062-6', 'Mass Transit', 'Oth arthrotomy-elbow', '$44.66', 'Short story', 'Ethelbert McCorkindale', 'Stokes, Ryan and Keeling', 2004, 3004684, 4.4);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('851608780-8', 'Knife in the Water (Nóz w wodzie)', 'Isotope inject/instill', '$58.77', 'Alternate history', 'Puff Bonus', 'Kerluke Group', 2003, 5019682, 1.52);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('527751168-7', 'Dylan Moran: Yeah, Yeah', 'Op bi dr/in ig hr-gr NEC', '$41.13', 'Suspense', 'Manfred Irvine', 'Dibbert Inc', 2007, 1210315, 4.35);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('301768357-5', 'Moving Violations', 'Femur injury op NOS', '$70.71', 'Horror', 'Kevin Casserley', 'Gislason, Breitenberg and Champlin', 2011, 851560, 3.92);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('694130412-X', 'Hippie Revolution, The', 'Delayed clos abd wound', '$4.27', 'Review', 'Dacie Geist', 'Marvin-Nicolas', 1987, 4992382, 4.32);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('743491433-5', 'Weird Woman', 'Intra-op electron rad rx', '$97.50', 'Autobiography', 'Dorian Dimelow', 'Bosco-Brown', 2008, 6569452, 2.16);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('101598473-8', 'Knowing', 'Arthrodesis of hip', '$75.52', 'Home and garden', 'Berky Dronsfield', 'Mertz and Sons', 1997, 5587655, 2.24);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('389792066-2', 'Skeletons', 'Other radius/ulna incis', '$58.97', 'Math', 'Gregg Brosenius', 'Rau, Okuneva and Spinka', 2007, 5846131, 3.19);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('675399726-1', 'Real McCoy, The', 'Oth op on >l extraoc mus', '$75.47', 'Thriller', 'Melamie Cordy', 'Kovacek Inc', 2011, 14833, 4.35);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('809250742-2', 'Before and After', 'Arterial puncture NEC', '$80.75', 'Action and adventure', 'Cass Colbert', 'Skiles LLC', 2008, 9657459, 3.11);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('574913292-7', 'Out to Sea', 'Repair of spleen', '$39.74', 'Journal', 'Vincenz Mandres', 'Kuhic-Hand', 1999, 168765, 3.53);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('113493206-5', 'Jeanne Dielman, 23 Quai du Commerce, 1080 Bruxelles', 'Dx proc fetus/amnion NEC', '$69.08', 'Encyclopedia', 'Thomasine Pollitt', 'Goldner, Schimmel and Williamson', 2006, 2387856, 3.63);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('889332835-6', 'Tales from the Hood', 'Mri spinal canal', '$44.61', 'Drama', 'Bernadina Dowderswell', 'Fahey Inc', 1992, 3510757, 4.31);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('283821856-5', 'Overlord', 'Educational therapy', '$65.17', 'Poetry', 'Jeanne Troth', 'Senger, Walker and Schowalter', 2007, 8447700, 3.27);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('096416549-X', 'Mr. Pip', 'Insert oropharyn airway', '$12.18', 'Crime', 'Benita Selbie', 'Hoeger-Koch', 2005, 746448, 2.39);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('249753744-5', 'Ski Party', 'Residual root removal', '$2.36', 'Encyclopedia', 'Sinclair Haslock', 'Collier Inc', 2003, 9685147, 5.0);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('433346207-X', 'My Childhood', 'Cystostomy closure', '$13.89', 'Crafts/hobbies', 'Goldie Gouldbourn', 'Walker-Rempel', 1993, 5554237, 1.42);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('449296180-1', 'At Midnight I''ll Take Your Soul (À Meia-Noite Levarei Sua Alma)', 'Chorioretin les cryother', '$47.95', 'History', 'Kelley Yashanov', 'Denesik-Gerhold', 2009, 963644, 4.72);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('934944123-3', 'Pillow of Death', 'Mediastinal pneumogram', '$41.22', 'Short story', 'Editha Embury', 'Bernier LLC', 1968, 4304291, 1.42);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('032261152-0', 'In the Mirror of Maya Deren (Im Spiegel der Maya Deren)', 'Replace vag/vulv packing', '$90.61', 'Classic', 'Amberly Dreini', 'Hahn-Shanahan', 2003, 9712626, 3.0);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('166827111-7', 'Vizontele Tuuba', 'Low cervical c-section', '$84.89', 'Humor', 'Berta Ofen', 'Kertzmann-Waters', 2011, 3487815, 1.51);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('866517390-0', 'Clone (Womb)', 'Radical excis skin les', '$60.88', 'Travel', 'Tedie Bortolomei', 'Schulist and Sons', 2007, 5206472, 2.27);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('720455977-0', 'Freeway', 'Suture urethral lacerat', '$25.33', 'Business/economics', 'Ebenezer Christoffersen', 'Metz and Sons', 2009, 2924198, 1.7);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('019561007-5', 'Kill Theory', 'Enuc socket revis NEC', '$43.73', 'Biography', 'Elisa Klaffs', 'Franecki Inc', 2012, 1390638, 2.59);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('949200254-X', 'Sleeping with the Enemy', 'Closed red-int fix femur', '$23.58', 'Thriller', 'Tabbi Morena', 'Erdman-Lang', 2001, 6261991, 2.07);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('531182103-5', 'The Inspector', 'Excis cul-de-sac lesion', '$73.86', 'Horror', 'Artemis Lacoste', 'Ziemann, Okuneva and Mante', 2000, 9049872, 2.2);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('850205702-2', 'Kids in the Hall: Brain Candy', 'Ippb', '$14.58', 'Fairytale', 'Jobey Falks', 'Bednar-Smitham', 2009, 1614567, 4.98);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('967276006-X', 'It''s a Gift', 'Insert vasc access dev', '$31.55', 'Graphic novel', 'Dyna Tschiersch', 'Balistreri, Metz and Fay', 2002, 4728258, 3.63);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('586919215-3', 'Long Hello and Short Goodbye', 'Type 4 tympanoplasty', '$41.23', 'Fantasy', 'Rip Bruhke', 'Beatty Inc', 1968, 4744506, 2.33);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('928791370-6', 'Osmosis Jones', 'Replantation of scalp', '$23.55', 'Suspense', 'Corbin Siggens', 'Lind Group', 2009, 8045357, 4.9);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('913616867-X', 'Something Wild', 'Pyeloscopy', '$60.29', 'Math', 'Clarie Ragge', 'Schamberger, Thiel and Tremblay', 2005, 9840959, 3.84);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('143487435-4', 'Search, The', 'Insertion of iud', '$36.03', 'Suspense', 'Dunc Noah', 'Quitzon Group', 2004, 2494616, 2.48);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('649299294-6', 'Inbetweeners Movie, The', 'Pectus deformity repair', '$62.85', 'Textbook', 'Devonna Bann', 'Leuschke Inc', 1992, 1893806, 3.36);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('727406782-6', 'Pandemonium', 'Lap sigmoidectomy', '$50.14', 'Anthology', 'Merola Wattisham', 'Bailey, Hyatt and Carter', 1998, 1466799, 3.39);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('889207288-9', 'Power and Terror: Noam Chomsky in Our Times', 'Polio vaccine administra', '$74.98', 'Cookbook', 'Isak Goodwyn', 'Conroy-Jacobson', 2007, 6551505, 2.72);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('051984010-0', 'Sugar Town', 'Other glossotomy', '$86.44', 'Religion, spirituality, and new age', 'Tabbatha Brunsdon', 'Bosco-Spencer', 2011, 671428, 3.02);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('271036017-9', 'Loser Takes All! (Qui perd gagne !)', 'Tooth implantation', '$68.85', 'Home and garden', 'Rosanne Disbrey', 'Watsica, Bosco and Schaefer', 2012, 1740103, 2.85);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('435361424-X', 'Heima', 'Oth spinal thecal shunt', '$94.14', 'Home and garden', 'Rees Beardon', 'Jones, O''Hara and Auer', 2003, 7526240, 2.18);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('317318204-9', 'Scooby-Doo! The Mystery Begins', 'Manual reduc rect prolap', '$79.38', 'Humor', 'Inez Tommen', 'Bauch, Collier and D''Amore', 2006, 1466539, 4.38);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('692043203-X', 'Anarchist Cookbook, The', 'Endosc lg bowel thru st', '$35.17', 'Science fiction', 'Free Antonietti', 'Gorczany-Schulist', 2006, 5911476, 2.52);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('929121382-9', 'Purgatory', 'Pack ext auditory canal', '$28.41', 'Mystery', 'Betteann Bache', 'Walter Inc', 2007, 2368944, 2.85);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('624585427-X', 'Sita Sings the Blues', 'Pharyngoscopy', '$81.40', 'Math', 'Wash Gibben', 'Kihn-Kovacek', 1986, 269360, 5.0);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('853868979-7', 'How I Live Now', 'Oth transmyo revascular', '$62.35', 'Review', 'Britta Knightsbridge', 'Kerluke and Sons', 2004, 4010882, 2.0);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('080664477-X', 'Return of the Vampire, The', 'Cystostomy closure', '$43.06', 'Diary', 'Melamie Andryushin', 'Stamm, Rowe and Armstrong', 1989, 8830493, 4.73);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('236861800-7', 'Pelle Svanslös', 'Atrial cardioversion', '$32.70', 'Business/economics', 'Giffy Baudesson', 'Sauer and Sons', 1993, 840373, 2.8);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('717006571-1', 'Black and White', 'Eye enuc/implan/musc att', '$79.19', 'Western', 'Leta Ballinger', 'Rutherford-Hermiston', 1962, 5356681, 2.52);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('004222471-3', 'Seven Swords (Chat gim)', 'Rejected kidney nephrect', '$51.50', 'Textbook', 'Trever Bollins', 'Marks, Erdman and Cruickshank', 1996, 6270369, 1.82);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('253421158-7', 'Jessabelle', 'Inject/infuse electrolyt', '$52.94', 'Business/economics', 'Jasun Matkin', 'White Group', 2008, 9075176, 3.7);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('119493863-9', 'Elite Squad: The Enemy Within (Tropa de Elite 2 - O Inimigo Agora É Outro)', 'Interview & evaluat NEC', '$27.17', 'Action and adventure', 'Godfree Flannigan', 'Yost and Sons', 1986, 4374698, 4.56);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('936326617-6', 'Four Feathers, The', 'Anal anastomosis', '$33.53', 'Anthology', 'Stafford Sibille', 'Veum-Kunde', 2005, 2784904, 4.53);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('571594735-9', 'Rough Magic', 'Clos bx saliv gland/duct', '$80.55', 'Textbook', 'Georgianna Andriolli', 'Block LLC', 2010, 6587507, 2.19);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('422031947-6', 'Ill-Fated Love (Doomed Love) (Amor de Perdição)', 'Tu adhesiolysis bladder', '$73.97', 'True crime', 'Richardo Colborn', 'Cruickshank Group', 2008, 9352058, 1.48);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('359496499-X', 'Class Act', 'Open reduct mandible fx', '$19.81', 'Alternate history', 'Archambault Lilywhite', 'Weissnat, Nicolas and O''Conner', 2008, 4268982, 2.75);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('131242321-8', 'Once Around', 'Delayed clos abd wound', '$86.60', 'Classic', 'Estele Hambelton', 'Adams, Botsford and Daniel', 2008, 4809414, 4.37);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('620402036-6', '2019: After the Fall of New York', 'Cervical spine x-ray NEC', '$27.93', 'Picture book', 'Tiffani Layson', 'Maggio Inc', 2012, 4370877, 2.68);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('814063892-7', 'Phase IV', 'Opn rep umb hrn-grft NEC', '$31.74', 'Travel', 'Rosemarie Gyde', 'Casper-Ruecker', 1994, 1719430, 2.93);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('586709303-4', 'Stag Night', 'Free skin graft NEC', '$74.77', 'Memoir', 'Faulkner Schuck', 'Koelpin and Sons', 2006, 3895329, 3.14);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('315028214-4', 'Big Bad Wolf', 'Bladder neck dilation', '$13.86', 'History', 'Josie Jobson', 'Bartoletti-Buckridge', 2002, 4774504, 3.2);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('017376297-2', 'El tren de la memoria', 'Endarterectomy of aorta', '$37.43', 'Memoir', 'Pepe Mallindine', 'Satterfield and Sons', 2002, 2031949, 4.08);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('085809405-3', 'Feed', 'Pros repair atria def-cl', '$34.04', 'Political thriller', 'Jobyna Tuckerman', 'Heller, Stroman and Kertzmann', 1996, 4292681, 1.28);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('273736069-2', 'Three Wise Men (Kolme viisasta miestä)', 'Dermabrasion', '$75.62', 'Western', 'Elianore Nendick', 'Reynolds-Ferry', 2006, 6371022, 2.34);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('922743000-8', 'Frontrunners', 'Construction of penis', '$62.57', 'Classic', 'Ardelle Donson', 'Terry LLC', 2000, 6536694, 4.04);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('163739070-X', 'Old Man and the Sea, The', 'Part gast w jej transpos', '$84.03', 'Suspense', 'Saunderson Bodill', 'Renner LLC', 1985, 4686000, 3.81);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('323991176-0', 'What Ever Happened to Baby Jane?', 'Closure of mouth fistula', '$36.59', 'Humor', 'Alvinia Gerritsma', 'Auer LLC', 2012, 1291832, 3.24);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('661562407-9', 'Soldier, The', 'Endo emb hd/nk,bare coil', '$6.86', 'Memoir', 'David Brady', 'Watsica-Osinski', 2000, 6182072, 3.76);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('181954119-3', 'Librarian: Return to King Solomon''s Mines, The', 'Hrt revas byps anas NEC', '$43.27', 'Guide', 'Corbet Normanvell', 'Hagenes-Boyle', 1987, 2680349, 4.31);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('167836346-4', 'Repast (Meshi)', 'Nephrotomogram NEC', '$66.60', 'Classic', 'Annmaria Roby', 'Dickinson-Shields', 2004, 9100267, 1.17);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('117141265-7', 'Diamonds', 'Suture chest wall lacer', '$94.67', 'Suspense', 'Hasheem Hurkett', 'King, Borer and Green', 1988, 3686146, 2.15);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('566564397-1', 'Code Conspiracy, The', 'Scleral fistula repair', '$86.46', 'Math', 'Ariana MacCallion', 'Reichel-Hills', 2008, 9758341, 3.29);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('349845049-2', 'Dive! (Dive!: Living off America''s Waste)', 'Cryotherap cornea lesion', '$24.82', 'Math', 'Nady Salmon', 'Kuvalis-Hoppe', 1984, 4189519, 2.28);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('070087873-4', 'Joshua', 'Choledochoplasty', '$14.16', 'Science', 'Jaquenetta Durning', 'Stroman, Beier and Gaylord', 2002, 1671895, 2.07);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('402156218-4', 'Quatermass 2 (Enemy from Space)', 'Sutur capsul/ligamen arm', '$18.08', 'Travel', 'Aleece Dowey', 'Champlin-Gaylord', 1997, 904131, 2.25);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('738391648-4', 'Nobody Loves Me (Keiner liebt mich)', 'Opn rep ind ing hern NEC', '$89.74', 'Self help', 'Carly Thackeray', 'Bartoletti, Gusikowski and McClure', 1997, 8458979, 3.21);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('310645434-2', 'Blood and Roses (Et mourir de plaisir) (To Die with Pleasure)', 'C-vasc scan/isotop funct', '$86.54', 'Health/fitness', 'Collie Gatland', 'Davis Group', 1993, 5758756, 2.33);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('332485487-3', 'Rocks in my Pockets', 'Replace vaginal pessary', '$48.53', 'Political thriller', 'Julie Dillingham', 'Schoen Group', 2012, 3086701, 4.64);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('416755800-9', 'Operation ''Y'' & Other Shurik''s Adventures', 'Removal superfic FB eye', '$33.90', 'Health/fitness', 'Annalee Flux', 'Quigley-Donnelly', 2007, 9103269, 1.07);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('249529400-6', 'Cactus Flower', 'Sm bowel segment isolat', '$94.50', 'Home and garden', 'Anselm Catlin', 'West, Christiansen and Heller', 1992, 5517298, 2.17);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('799712104-8', 'Not Fade Away', 'Fit below knee prosthes', '$41.11', 'Art/architecture', 'Petronia Yeldham', 'McDermott-Feest', 2009, 8692286, 2.66);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('501147207-8', 'Dragon Inn (Sun lung moon hak chan)', 'Other chordotomy', '$28.39', 'Romance', 'Neysa Trorey', 'Abbott-Lind', 2004, 3094656, 2.97);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('364579669-X', 'Bedroom Window, The', 'Uterine repair NEC', '$17.49', 'Anthology', 'Wilburt Attwool', 'McClure, Schaefer and Pfeffer', 2002, 517281, 2.27);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('595526640-2', 'House of Wax', 'Hemorrhoid injection', '$39.92', 'Sports and leisure', 'Courtney Cona', 'Hessel-Klocko', 1998, 6200970, 1.78);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('717860103-5', 'Whirlygirl', 'Excision of hydrocele', '$54.44', 'Mystery', 'Thelma Ridges', 'Feeney Group', 2008, 806085, 1.05);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('347254513-5', 'Dark Blue World (Tmavomodrý svet)', 'Upper limb lymphangiogrm', '$76.41', 'Chick lit', 'Jinny Vile', 'Rath, Pagac and Jones', 1998, 9039761, 4.6);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('029434417-9', 'Time to Kill (Tempo di uccidere)', 'Sutur capsul/lig leg NEC', '$10.84', 'Comic book', 'Addie Mayman', 'Wehner-Krajcik', 2004, 4339760, 1.93);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('115855096-0', 'Allan Quatermain and the Temple of Skulls', 'Pancreatic tube irrigat', '$10.50', 'Autobiography', 'Gusty Tracy', 'Crona-Lehner', 2008, 1908299, 4.66);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('220291156-1', 'Powder', 'Opn bx larynx or trachea', '$86.20', 'Review', 'Bruis Buffery', 'Zemlak, Rippin and Prohaska', 2008, 7349299, 4.14);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('363719677-8', 'The Golden Voyage of Sinbad', 'Other acupuncture', '$48.65', 'Art/architecture', 'Stafani Fone', 'Hettinger LLC', 1999, 4337972, 4.21);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('296535889-7', 'Autómata (Automata)', 'Endoscopic ileal conduit', '$22.43', 'Western', 'Annamaria Robecon', 'Casper-Reichert', 2006, 8787805, 1.64);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('105556924-3', 'City Below, The (Unter dir die Stadt)', 'Pelvic evisceration', '$1.77', 'Horror', 'Orion Dragon', 'Beatty, Tromp and Reinger', 2005, 1457461, 2.89);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('267460045-4', 'The Raid', 'Lacrimal gland biopsy', '$28.75', 'Coming-of-age', 'Isaiah Fronek', 'Adams-Treutel', 1986, 8811050, 4.25);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('167647977-5', 'Three Smart Girls Grow Up', 'Destruct abd wall lesion', '$14.15', 'Biography', 'Hedi Derricoat', 'Johnston and Sons', 1996, 6021430, 4.28);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('582356881-9', 'Baghban', 'Int fix w/o fx reduc NOS', '$24.39', 'Mystery', 'Roley Streetfield', 'Corwin, Rath and Hahn', 1998, 8226121, 2.99);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('973016551-3', 'Chopping Mall (a.k.a. Killbots)', 'Visual field study', '$42.04', 'Health/fitness', 'Zelig Emeny', 'Krajcik-Dickinson', 2003, 342061, 2.28);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('834369229-2', 'Mother of Mine (Äideistä parhain)', 'Elbow joint biopsy', '$23.73', 'Paranormal romance', 'Karyn Pell', 'Dare-McLaughlin', 1964, 6387280, 3.18);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('457970599-8', 'Sokkotanssi', 'Open bladder biopsy', '$68.25', 'Satire', 'Sula Murrison', 'Hyatt, Bartell and Brakus', 2010, 4851974, 1.51);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('646459739-6', 'Attack, The', 'Other femoral incision', '$78.59', 'Fantasy', 'Nalani Peller', 'Corkery, Legros and Leuschke', 1999, 1773153, 3.42);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('153542927-5', 'Fire on the Mountain', 'Prolapsed iris excision', '$7.92', 'Horror', 'Felita Yonnie', 'Davis, Keebler and Stamm', 2011, 1713501, 2.63);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('453171579-9', 'Babylon 5: The Gathering', 'Replace cast NEC', '$95.77', 'Guide', 'Micky Mumby', 'Mitchell-Davis', 2007, 1997130, 2.07);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('916193377-5', 'Civil Brand', 'Lap tot intr-ab colectmy', '$28.04', 'Crime', 'Sibella Mingay', 'Funk, Jacobi and Zulauf', 2003, 9043930, 3.05);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('246550660-9', '10 minutes (10 minuta)', 'Proximal pancreatectomy', '$58.32', 'Alternate history', 'Drucy Selwood', 'Mills-Klein', 2003, 807093, 3.37);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('373338582-9', 'Rally On! (Ralliraita)', 'Abdominal tomography NEC', '$64.44', 'Business/economics', 'Eugenio Londing', 'Brown LLC', 2009, 6643863, 3.83);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('470722880-1', 'Over Her Dead Body', 'Total wrist replacement', '$2.40', 'Paranormal romance', 'Claresta Pettegree', 'Watsica Inc', 2001, 3595526, 2.18);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('023049136-7', 'Dragon Eyes', 'Vessel resect/replac NOS', '$62.93', 'Health/fitness', 'Anna Storrock', 'Hintz, McLaughlin and Okuneva', 1997, 2085754, 2.43);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('206023506-5', 'Reality Bites', 'Ins bone void filler', '$59.78', 'Prayer', 'Ainslee Amey', 'Bailey Group', 1999, 9374137, 4.26);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('415684273-8', 'If These Walls Could Talk 2', 'Omt to move tissue fluid', '$39.23', 'Cookbook', 'Erminia Rebert', 'Rosenbaum-Koelpin', 2012, 5306390, 1.09);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('287293886-9', 'Double Dare', 'Stern esophagogastrostom', '$30.45', 'Romance', 'Nadya Bennell', 'Schuppe, Feil and Corwin', 2006, 3486493, 1.42);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('736556969-7', 'Blow-Up (Blowup)', 'Vascular cath irrigation', '$16.75', 'True crime', 'Josh Kingescot', 'Gusikowski Group', 2002, 3840352, 3.02);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('393467053-9', 'Beasts of the Southern Wild', 'Rectal perirect op NEC', '$98.53', 'Paranormal romance', 'Orbadiah Connachan', 'Runolfsdottir LLC', 2007, 2626480, 3.42);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('919450036-3', 'Grace', 'Opn reduc disloc-ft/toe', '$96.49', 'History', 'Berkley Wakeford', 'Hessel, Becker and Denesik', 2001, 3122337, 3.69);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('856221626-7', 'Just Visiting', 'Repl stent in bile duct', '$21.92', 'Children''s', 'Abbot Snooks', 'Koepp, Sipes and West', 2012, 9304319, 4.35);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('831485992-3', 'I Married a Monster from Outer Space', 'Oth dx proc-metacar/car', '$40.34', 'Political thriller', 'Joelynn Chalfant', 'Abernathy-Jaskolski', 1994, 2197950, 4.87);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('437683075-5', 'Zeisters (Fat Guy Goes Nutzoid)', 'Contrast x-ray of orbit', '$96.34', 'Sports and leisure', 'Myrah Necolds', 'Barton-Stoltenberg', 2008, 6645159, 1.77);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('587066345-8', 'Invisible Woman, The', 'Blepharorrhaphy severing', '$57.24', 'Fairytale', 'Chandler Rodell', 'Franecki and Sons', 2003, 5313877, 2.34);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('067252962-9', 'Offside', 'Distal pancreatectomy', '$9.73', 'Sports and leisure', 'Julee Camilli', 'Labadie-Bayer', 1992, 1222740, 3.39);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('956317964-1', 'Crossfire Trail (Louis L''Amour''s ''Crossfire Trail'')', 'Extracap lens extrac NEC', '$58.57', 'Math', 'Page Oldcroft', 'Bauch Inc', 2012, 675098, 1.37);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('689541540-8', 'Boys Are Back, The', 'Culture-op wound', '$48.38', 'Children''s', 'Diane-marie Crossman', 'Kassulke, Sporer and Gaylord', 1996, 1393430, 3.02);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('856000745-8', 'Terri', 'Oth exc/dest intvrt disc', '$80.08', 'True crime', 'Carney Kruschev', 'Graham-Schuster', 2004, 70629, 4.35);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('381248910-4', 'Nightwing', 'Tendon sheath explorat', '$64.71', 'Prayer', 'Pearline Cardenoso', 'Borer-Hilll', 1972, 7591111, 4.3);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('487898377-9', 'O Último Mergulho', 'Thorac incision thymus', '$71.46', 'Children''s', 'Milena Gaitley', 'Legros, Quigley and Doyle', 2007, 3266528, 4.89);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('955860017-2', 'Skin', 'Other heart/pericard ops', '$99.20', 'Drama', 'Catherina Hughes', 'Durgan and Sons', 2008, 1029694, 1.79);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('812908378-7', 'Kotch', 'Gastric gavage', '$30.11', 'Home and garden', 'Annice Allsebrook', 'Torp-Sipes', 1996, 2556404, 2.35);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('607877822-6', 'Rent', 'Oth metacarp/carp incis', '$77.83', 'Cookbook', 'Victoria Bertomieu', 'Luettgen and Sons', 1999, 1688620, 1.65);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('226995063-1', 'Hugh Hefner: Playboy, Activist and Rebel', 'Repair of vessel NEC', '$90.46', 'Anthology', 'Alethea Gilcrist', 'Schroeder, Hermann and Kuphal', 2003, 2493080, 1.92);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('337150800-5', 'South, The (Sur, El)', 'Pineal operation NEC', '$94.70', 'Review', 'Gerry Dunlap', 'Torp-Labadie', 2004, 9978272, 4.04);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('280846030-9', 'Rude', 'Replace prolapsed cord', '$30.43', 'Humor', 'Jacintha Pressnell', 'Dietrich-Wiza', 1985, 9009086, 2.47);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('728806327-5', 'Chasing Amy', 'Lap radical abdomnl hyst', '$10.90', 'True crime', 'Haley Smallpeace', 'Bogan, Beatty and McClure', 1996, 3162438, 1.46);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('036301747-X', 'Sweet Hereafter, The', 'Electrocochleography', '$90.05', 'Picture book', 'Cilka Nutter', 'Tillman-Fisher', 1992, 683272, 1.12);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('348057019-4', 'Rocket Gibraltar', 'Bact smear-peritoneum', '$63.85', 'Review', 'Delaney Boddis', 'Beer Group', 1999, 302746, 1.17);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('842026936-0', 'Aria', 'Remov urin drainage NEC', '$48.30', 'Poetry', 'Durand Erie', 'Hackett Group', 2001, 9401787, 1.11);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('554286479-1', 'From Above', 'Nasal lesion excis NOS', '$93.92', 'Action and adventure', 'Raynor Roe', 'Mayert-Kuhlman', 2007, 2741196, 4.56);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('347323445-1', 'Marquis', 'Exc maj les lid ful-thic', '$78.15', 'Comic book', 'Ewart Tigwell', 'Moen Group', 2000, 809606, 2.3);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('017199855-3', 'Gregory Go Boom', 'Elbow joint biopsy', '$3.26', 'Health/fitness', 'Sissy Dawton', 'Williamson, Reichert and Kris', 2001, 5513287, 2.96);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('477280932-5', 'Thing with Two Heads, The', 'Rad pancreaticoduodenect', '$18.69', 'Coming-of-age', 'Stefano Lowdham', 'Hamill, Lemke and Terry', 1998, 5511722, 3.58);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('648579857-9', 'Hitchcock', 'Esoph fistula repair NEC', '$77.49', 'Paranormal romance', 'Ilyssa Sanham', 'Kozey Inc', 2001, 8624325, 3.82);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('793595670-7', 'Piece of the Action, A', 'Ovarian wedge resection', '$91.68', 'Horror', 'Trevor Rowdell', 'McLaughlin-O''Reilly', 2009, 7192283, 2.59);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('708677220-8', 'All Is Lost', 'Femoral division NEC', '$15.20', 'Science fiction', 'Myron Merrikin', 'Moore LLC', 1998, 7464632, 4.79);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('804245477-5', 'RFK Must Die: The Assassination of Bobby Kennedy', 'Anoscopy', '$87.76', 'Children''s', 'Kathryne Chainey', 'Spinka, Swift and Mraz', 2009, 639429, 3.34);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('519499644-6', 'Batman: Under the Red Hood', 'Vena cav angiocardiogram', '$73.75', 'Thriller', 'Lawry McRinn', 'Zboncak, Romaguera and Schinner', 1996, 7004248, 2.0);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('546534789-9', 'Patriotism (Yûkoku)', 'Cl reduc disloc-hand/fng', '$78.84', 'Alternate history', 'Bartholomeus Nichol', 'Doyle, Shields and Wintheiser', 2002, 8272017, 4.76);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('531793868-6', 'Lookin'' to Get Out', 'Open reduct face fx NEC', '$22.20', 'Satire', 'Pennie Coxon', 'Shields and Sons', 2000, 9406743, 4.66);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('571551337-5', 'Victim', 'Decompression chamber', '$53.80', 'Fairytale', 'Kathryn Besnard', 'Beahan and Sons', 1995, 6541354, 2.39);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('164145097-5', 'From the Sky Down', 'Intraspin nerve root div', '$69.77', 'Encyclopedia', 'Abe Vannuchi', 'Grady, Waters and Terry', 2013, 7028413, 2.09);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('289164072-1', 'Good Neighbours (a.k.a. Good Neighbors)', 'Oth arthrotomy-foot/toe', '$7.78', 'Philosophy', 'Sampson Showte', 'Becker-Borer', 1994, 5973763, 3.76);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('843157042-3', 'I''m So Excited (Los amantes pasajeros)', 'Toxicology-endocrine', '$1.42', 'Textbook', 'Berkly Aslott', 'Kerluke, Moen and McLaughlin', 2005, 6200564, 2.18);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('862320205-8', 'Phantom', 'Oth exc, fus, repair toe', '$11.03', 'Drama', 'Isabella Guiducci', 'Moore and Sons', 1993, 7663365, 4.98);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('555681127-X', 'Scorpio', 'Transab lg bowel endosc', '$94.48', 'Journal', 'Shelton Cockrell', 'Parker-Boyer', 2004, 2792892, 4.19);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('600090633-1', 'Reconstituirea (Reconstruction)', 'Postop vasc op hem contr', '$33.93', 'Historical fiction', 'Rory Perris', 'Welch, Gulgowski and Hilpert', 1994, 6429177, 3.47);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('553085834-1', 'Phantom of the Paradise', 'Esophagogastroplasty', '$45.42', 'True crime', 'Dickie Hamer', 'Rempel-Flatley', 2005, 9223017, 2.49);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('919107922-5', 'Tipping the Velvet', 'Lysis cortical adhesion', '$66.73', 'Short story', 'Masha France', 'Wilderman-Bins', 2002, 6569553, 2.4);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('812300651-9', 'W Delta Z (a.k.a. The Killing Gene)', 'Intestinal op NEC', '$22.45', 'Anthology', 'Dagmar Kisbee', 'Parker-Harber', 2004, 9743052, 1.77);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('596219649-X', 'Champ, The', 'Dx ultrasound-vascular', '$14.01', 'Encyclopedia', 'Mallissa Allison', 'Barrows-Windler', 2007, 245698, 3.61);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('867289177-5', 'Shifty', 'Extracran-intracr bypass', '$86.43', 'Fairytale', 'Olwen Arrundale', 'Braun, Ruecker and Mohr', 1994, 1472934, 2.17);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('991686751-8', 'Mirror, The (Zerkalo)', 'Appl ext fix-metatar/tar', '$8.74', 'Prayer', 'Prisca Sirkett', 'Funk, McCullough and Powlowski', 1992, 1407610, 3.36);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('988127899-6', 'Go for Zucker! (Alles auf Zucker!)', 'Facial bone/jnt op NEC', '$60.09', 'Science', 'Charlton Romanetti', 'Dickens, Gibson and Moen', 2012, 2057459, 3.98);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('445021449-8', 'City of Sadness, A (Bei qing cheng shi)', 'Incise bartholin''s gland', '$38.89', 'Anthology', 'Clerc Tointon', 'Klocko, Morissette and Wuckert', 2005, 4683734, 1.39);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('519491786-4', 'Little Girl Who Conquered Time, The (Toki o kakeru shôjo)', 'Remove both testes', '$58.04', 'Encyclopedia', 'Aloisia Bore', 'Torphy-Altenwerth', 2000, 8296543, 4.37);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('059528283-0', 'Romance of Astrea and Celadon, The (Les amours d''Astrée et de Céladon)', 'Cranial osteoplasty NEC', '$46.24', 'True crime', 'Renelle Guinery', 'Kuhn-Bernhard', 1994, 1277452, 4.2);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('823895870-9', 'Battle in Seattle', 'Unspec op bone inj NOS', '$68.77', 'Crime', 'Corrianne Todaro', 'Kuphal-Spinka', 1999, 8863770, 1.65);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('430132456-9', 'Catch Me If You Can', 'Head soft tiss x-ray NEC', '$90.54', 'Business/economics', 'Corilla Donaghy', 'Zemlak, Kuvalis and Wuckert', 2009, 3536560, 1.85);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('932475725-3', 'Godfather: Part II, The', 'Other tenoplasty of hand', '$51.22', 'Fantasy', 'Curran Corwin', 'Lakin, Brown and Bogisich', 1998, 7537035, 1.01);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('753001788-8', 'Night Watch (Nochnoy dozor)', 'Micro exam-femal gen NEC', '$20.68', 'Fairytale', 'Gasparo Mizzi', 'Gutmann, MacGyver and Berge', 2006, 4195955, 2.91);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('708617794-6', 'Moonlighting', 'Other joint mobilization', '$13.53', 'Alternate history', 'Annabel Dziwisz', 'Lemke-Ryan', 2005, 634068, 2.68);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('326165997-1', 'Winter Break', 'Appl ext fix-radius/ulna', '$20.05', 'Young adult', 'Lidia Cakes', 'Lindgren and Sons', 2006, 396026, 1.93);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('274720391-3', 'Doctor Who', 'Bone graft to chest cage', '$22.63', 'Romance', 'Robyn Reddington', 'Price, Hammes and White', 2003, 9131158, 1.32);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('877680598-0', 'House on Telegraph Hill, The', 'Post nasal pac for epist', '$76.82', 'Guide', 'Burg Popelay', 'Hyatt-Torp', 1987, 2898626, 3.1);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('523354551-9', 'Debt, The', 'Mastoidectomy revision', '$14.66', 'Anthology', 'Meggie Fishley', 'Stamm Group', 1993, 8555437, 4.41);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('437077584-1', 'Pieta', 'Bronchoscopy thru stoma', '$20.31', 'Children''s', 'Bax Blaine', 'Bergnaum, Klocko and Huels', 2000, 2814086, 3.14);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('638985428-5', 'Memories of Matsuko (Kiraware Matsuko no isshô)', 'Auxiliary liver transpl', '$87.51', 'Historical fiction', 'Lorry Melliard', 'Gutmann, Kris and Hagenes', 2005, 1586622, 1.01);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('661060210-7', 'The Radio Pirates', 'Alcohol detoxification', '$51.95', 'Prayer', 'Mattie Hamlett', 'Green Group', 2003, 1138289, 2.57);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('809581611-6', 'The Divine Woman', 'Facial bone incision NEC', '$89.65', 'Action and adventure', 'Elvin McAirt', 'Boyle Inc', 1998, 1018085, 1.77);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('909674142-0', 'Date with Judy, A', 'Intra-abd lg bowel manip', '$27.11', 'Short story', 'Sandro Joska', 'Botsford-Kohler', 2008, 7755389, 4.57);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('737109515-4', 'Reclaim', 'Incis rectal stricture', '$87.07', 'Short story', 'Ervin Ewan', 'Daugherty Group', 2005, 6491947, 2.83);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('413935955-2', 'Three Smart Girls Grow Up', 'Thoracoscopc decort lung', '$48.09', 'Fantasy', 'Kassie Crumpton', 'Franecki, Daugherty and Kovacek', 2003, 2187603, 2.71);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('311253609-6', 'Sword of the Valiant', 'Total removal sm bowel', '$54.39', 'Religion, spirituality, and new age', 'Loren MacSherry', 'Balistreri, Pfeffer and Koelpin', 2009, 5048182, 3.08);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('732537273-6', 'Egg and I, The', 'Internal fix-patella', '$81.18', 'Dictionary', 'Ashien Sterman', 'McClure-Larkin', 1997, 3800964, 4.1);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('574016917-8', 'Hot Saturday', 'Incision of testes', '$18.44', 'Children''s', 'Ebony Jeannet', 'Tillman and Sons', 2008, 6238398, 1.41);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('285407383-5', 'Wer', 'Iridencleisis/iridotasis', '$62.54', 'Fairytale', 'Bettina Gallop', 'Nikolaus Group', 1994, 8119949, 3.59);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('933151684-3', 'House of Fools', 'Adrenal vessel ligation', '$6.78', 'Horror', 'Gaston Brimson', 'Towne, Osinski and Waters', 2001, 403272, 1.31);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('833053956-3', 'Hannibal', 'Transabdomin gastroscopy', '$71.58', 'True crime', 'Fabiano Hulson', 'Hirthe, Lynch and Oberbrunner', 2004, 7548399, 3.52);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('654117020-7', 'Lady and the Tramp II: Scamp''s Adventure', 'Ins/rep mul pul gn,rechg', '$78.44', 'Classic', 'Codi Impson', 'Johnston LLC', 1991, 2369237, 3.04);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('715876640-3', 'Three Burials of Melquiades Estrada, The', 'Lap hern ant abd-gft NEC', '$65.74', 'Fairytale', 'Haze Umpleby', 'Stamm and Sons', 2011, 8599371, 1.96);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('774073311-3', 'Casanova''s Big Night', 'Close rectal fist NEC', '$86.65', 'Classic', 'Chuck Britto', 'Gibson-Robel', 2009, 4734756, 2.83);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('388053663-5', '1911 (Xinhai geming)', 'Meninge vessel ligation', '$44.08', 'Textbook', 'Frasquito Burlingame', 'Cremin, Mitchell and Lakin', 2005, 1400306, 4.76);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('067304123-9', 'Legend of Drunken Master, The (Jui kuen II)', 'Rev hip repl-liner/head', '$50.99', 'Thriller', 'Valentine Cato', 'Fisher, Hyatt and Denesik', 1989, 719800, 4.01);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('200756859-4', 'Heartbeats (Les amours imaginaires)', 'Ther ult head & neck ves', '$44.19', 'Philosophy', 'Toiboid Seiller', 'Hirthe, Ledner and Nicolas', 1993, 1765297, 1.65);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('543638786-1', 'Shiloh', 'Peripheral nerve ops NEC', '$95.57', 'Political thriller', 'Garrick Berick', 'Conroy and Sons', 1988, 5101010, 4.54);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('111189791-3', 'Xanadu', 'Hand muscle reattachment', '$72.54', 'Philosophy', 'Andi Edgett', 'Tremblay-Weber', 2007, 2395090, 4.13);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('899600131-7', 'Glorious Technicolor', 'Reimplan aberr renal ves', '$94.04', 'Crime', 'Consuela Dowley', 'Kertzmann LLC', 1993, 4252309, 1.94);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('268520013-4', 'Inside the Twin Towers', 'Bladder anastomosis NEC', '$33.35', 'Mystery', 'Torre Parsisson', 'Luettgen Group', 2009, 4340379, 4.39);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('098127157-X', 'Panic', 'Insert perm tube esophag', '$7.77', 'Philosophy', 'Ardeen Frend', 'McCullough Group', 1999, 2475, 3.43);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('404812627-X', 'Grandma''s Boy', 'Temporary ileostomy', '$78.79', 'Review', 'Baxy Bouda', 'Cole, Keeling and Greenholt', 2011, 9484749, 3.97);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('227470428-7', 'Prisoner of Zenda, The', 'Insert intercostal cath', '$82.64', 'Travel', 'Lyndsay Penddreth', 'Ebert and Sons', 2002, 2803850, 2.54);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('087876405-4', 'Crow: City of Angels, The', 'Shoulder disarticulation', '$26.83', 'Art/architecture', 'Griffy Giacopetti', 'Schinner and Sons', 1994, 7505411, 4.75);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('886730172-1', 'Kid Galahad', 'Imp/rep schan coch pros', '$40.78', 'Historical fiction', 'Wilmette Boxall', 'Rutherford, Zemlak and Reilly', 2007, 3190527, 1.26);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('200134920-3', 'Last Remake of Beau Geste, The', 'Cholangiogram NEC', '$31.73', 'Horror', 'Boyd Flescher', 'Wolf-Baumbach', 2003, 4578438, 1.53);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('164933482-6', 'Dark Girls', 'Rectocele repair', '$92.96', 'Business/economics', 'Clarine Bastow', 'Hagenes and Sons', 1985, 6174054, 3.39);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('809334023-8', 'No Small Affair', 'Operations on clitoris', '$64.69', 'Diary', 'Scarlet Farra', 'MacGyver, Gulgowski and Bruen', 2010, 9878602, 3.45);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('328630611-8', 'Papa', 'Percu bx gb/bile duct', '$60.55', 'Satire', 'Cynde Stainer', 'Braun-Renner', 2006, 29136, 3.61);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('159817092-9', 'Jack-Jack Attack', 'Tot osteoplasty maxilla', '$61.24', 'Crafts/hobbies', 'Silvio Doumer', 'Sanford and Sons', 2009, 8340038, 3.71);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('549849176-X', 'Somewhere in the Night', 'Destruct cornea les NEC', '$29.32', 'Business/economics', 'Daloris Josiah', 'Batz LLC', 2007, 5841049, 1.53);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('618435655-0', 'Next Three Days, The', 'Interruption vena cava', '$84.12', 'Chick lit', 'Dena Phelan', 'Runte-Hermann', 2008, 774429, 3.95);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('339348822-8', 'Paranormal Activity', 'Nasophary contrast x-ray', '$29.01', 'Satire', 'Riccardo Bernath', 'Halvorson-Blick', 2000, 7391951, 2.99);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('928659391-0', 'Eversmile, New Jersey', 'Ins part disc pros lumb', '$82.24', 'Autobiography', 'Charin Tasseler', 'Stamm and Sons', 1991, 8584651, 3.2);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('204154143-1', 'Stonewall', 'Op on 1 extraoc musc NEC', '$67.66', 'Philosophy', 'Chanda Dean', 'Schiller-Wunsch', 2008, 9152852, 3.21);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('713726123-X', 'Shot in the Dark, A', 'Arm ves resect w replace', '$97.68', 'Crime', 'Luciana Puddicombe', 'Haag-Schneider', 2011, 1790310, 4.46);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('144348626-4', '1939: Hollywood''s Greatest Year', 'Lap total abdominal hyst', '$64.65', 'Anthology', 'Gerald Loosmore', 'Carroll, Sipes and Howe', 1994, 6725629, 2.71);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('400088677-0', 'Sons of Perdition', 'Removal iud', '$6.04', 'Classic', 'Jessie Banthorpe', 'Ankunding, Lubowitz and Jerde', 2008, 6046230, 3.71);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('895919336-4', 'No Looking Back', 'Rev crtd sinus stm leads', '$82.40', 'Historical fiction', 'Brand Gilkes', 'MacGyver, Ruecker and Kutch', 1994, 6458441, 2.91);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('799928971-X', 'Starbuck', 'Endarterectomy NOS', '$67.66', 'Fantasy', 'Vita Clougher', 'Wilkinson Group', 2003, 9468477, 4.12);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('325665536-X', '13Hrs', 'Stapedectomy NEC', '$67.94', 'Review', 'Heda Goodbarne', 'Dooley, Schuster and Kilback', 2013, 895241, 2.73);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('364668437-2', 'Secrets', 'Cell blk/pap-op wound', '$68.60', 'Drama', 'Gale Filisov', 'Torphy and Sons', 1995, 5704584, 4.92);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('320695670-6', 'Commandments', 'Aspir curett uterus NEC', '$67.57', 'Philosophy', 'Adrian Rome', 'Schumm, Mante and Walsh', 1997, 3162119, 2.5);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('853548157-5', '2 + 2 (Dos más dos)', 'Intestinal op NEC', '$20.37', 'Crafts/hobbies', 'Ibby Kloser', 'Abshire, Schultz and Fahey', 1986, 3047317, 4.62);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('098310166-3', 'Secret of NIMH, The', 'Total ostectomy NEC', '$13.60', 'Diary', 'Valentin Hussell', 'Hammes LLC', 1994, 7705992, 3.52);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('925160301-4', 'Railroaded!', 'Insert vasc access dev', '$47.78', 'Review', 'Adore Frankcom', 'Hessel LLC', 1994, 4884002, 4.15);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('588088642-5', 'Ready to Wear (Pret-A-Porter)', 'Metatar/tar division NEC', '$23.48', 'Diary', 'Vannie Heers', 'Stanton-Rowe', 2009, 142059, 3.01);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('465838220-2', 'Letter, The', 'Dx ultrasound-thorax NEC', '$41.09', 'Business/economics', 'Margit Nathan', 'Reichel, Langworth and Ziemann', 2009, 3909886, 4.39);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('087935617-0', 'Tonight and Every Night', 'Intracereb cth-burr hole', '$42.90', 'Review', 'Mella Phillip', 'Schmeler-Schoen', 2012, 989982, 4.79);
INSERT INTO public.book (isbn, title, description, price, genre, author, publisher, year_published, number_sold, rating) VALUES ('576176060-6', 'Dark of the Sun', 'Tot mandibulec w reconst', '$6.73', 'Diary', 'Celeste Mulroy', 'Lang, Runte and Schaden', 2011, 7687922, 2.37);


--
-- TOC entry 3018 (class 0 OID 17827)
-- Dependencies: 205
-- Data for Name: credit_card; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (1, 'smarmon6@vistaprint.com', '5108755733894462', '2020-09-28', 232);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (2, 'tgruszczak2m@topsy.com', '5048376172783521', '2021-03-28', 747);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (3, 'ymackenney5w@prnewswire.com', '5108757576070762', '2021-05-30', 499);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (4, 'lleathes2j@rakuten.co.jp', '5048379296492755', '2021-03-14', 376);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (5, 'hsweeney1z@indiatimes.com', '5048379885899964', '2021-01-28', 259);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (6, 'ltuxwell6i@hostgator.com', '5108752139161745', '2021-03-26', 232);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (7, 'tneads3t@state.tx.us', '5108751144612262', '2021-03-02', 363);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (8, 'csavine1g@independent.co.uk', '5048375722790325', '2020-08-07', 766);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (9, 'santhonies1j@homestead.com', '5108753085787913', '2020-07-10', 278);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (10, 'oforgan29@nature.com', '5108750776074098', '2021-03-31', 592);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (11, 'dwife2y@phpbb.com', '5048371366619284', '2020-08-26', 936);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (12, 'rdaybell4x@gmpg.org', '5048377719109832', '2021-04-28', 179);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (13, 'jgallichiccio4f@1688.com', '5108759976774308', '2021-06-11', 936);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (14, 'rdelafoy4p@ftc.gov', '5048372033137593', '2020-12-14', 406);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (15, 'asallnow6r@columbia.edu', '5108751322393362', '2020-08-18', 641);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (16, 'ahenrys3l@4shared.com', '5048377184022221', '2021-06-11', 438);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (17, 'nsmitherman2w@examiner.com', '5048371705191813', '2020-11-14', 710);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (18, 'elarret6g@cocolog-nifty.com', '5048378096080513', '2020-10-19', 608);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (19, 'bcripino@si.edu', '5108750670042381', '2020-12-20', 157);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (20, 'bbowe2o@patch.com', '5108751757009624', '2021-04-27', 645);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (21, 'bwintersgill5o@slashdot.org', '5048370261716229', '2020-10-14', 456);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (22, 'mharmson5@pcworld.com', '5108752722792310', '2021-05-30', 837);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (23, 'nsmitherman2w@examiner.com', '5108753997288240', '2021-03-04', 122);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (24, 'cgrolle2f@com.com', '5048376119615893', '2020-07-06', 893);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (25, 'rmerryman5g@admin.ch', '5048377403260370', '2020-08-07', 664);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (26, 'khuntley4d@senate.gov', '5108752306014164', '2020-08-23', 294);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (27, 'ahavock5r@spotify.com', '5108751319746440', '2021-02-27', 956);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (28, 'achafneye@google.it', '5048376819314581', '2020-09-06', 839);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (29, 'smajury2d@va.gov', '5108756920641229', '2021-06-17', 173);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (30, 'aelsez@telegraph.co.uk', '5108759026783945', '2020-08-04', 840);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (31, 'cwatford1v@wordpress.org', '5048374744904154', '2021-04-30', 480);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (32, 'hminichi2s@yellowpages.com', '5048379121252473', '2020-12-21', 438);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (33, 'gleppingwell6t@newsvine.com', '5048376796229273', '2021-06-03', 454);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (34, 'eboler3e@va.gov', '5048374414618258', '2021-04-26', 245);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (35, 'psulter5l@creativecommons.org', '5048370978904449', '2021-05-07', 969);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (36, 'kghio7@chicagotribune.com', '5108754037870153', '2020-09-21', 471);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (37, 'kkail4k@ibm.com', '5048378834249537', '2020-07-09', 251);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (38, 'mfatkin4i@netscape.com', '5108753193250549', '2021-03-09', 526);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (39, 'ftuison5k@smh.com.au', '5048374538284391', '2020-12-20', 403);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (40, 'rharteley12@flickr.com', '5048375189055550', '2021-03-05', 700);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (41, 'neuplate69@pagesperso-orange.fr', '5108751422699023', '2021-03-06', 141);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (42, 'lmar20@fema.gov', '5108758612923394', '2020-10-15', 637);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (43, 'ocampagne43@w3.org', '5108759511591399', '2020-12-14', 468);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (44, 'smonks2g@kickstarter.com', '5048373371978465', '2020-10-21', 465);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (45, 'lbeadon22@mtv.com', '5108754620090987', '2021-04-16', 976);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (46, 'mstanfieldd@flickr.com', '5108758486842076', '2020-08-07', 227);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (47, 'esobey2u@si.edu', '5048379069512318', '2021-01-04', 730);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (48, 'wbenitez16@blogs.com', '5108755819276030', '2021-02-09', 757);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (49, 'llehrle6m@nsw.gov.au', '5108754453791875', '2020-10-19', 934);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (50, 'ccarn3i@seattletimes.com', '5108756691749060', '2020-12-01', 588);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (51, 'lclemon5i@t.co', '5048374521752347', '2021-06-09', 462);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (52, 'jvosse55@fc2.com', '5108757670328348', '2021-06-02', 695);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (53, 'umattaser2q@vkontakte.ru', '5048373658505833', '2020-10-07', 596);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (54, 'hhartup3m@rambler.ru', '5048372767754084', '2020-09-21', 516);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (55, 'lgreaves53@ibm.com', '5108756523925359', '2020-07-07', 180);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (56, 'hsweeney1z@indiatimes.com', '5048377135599673', '2020-08-11', 429);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (57, 'jgallichiccio4f@1688.com', '5108757374871601', '2021-03-19', 121);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (58, 'mrickmanv@deviantart.com', '5048375525721584', '2021-04-22', 321);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (59, 'elozano6h@tinyurl.com', '5108750876086778', '2021-05-25', 670);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (60, 'fliversage44@marketwatch.com', '5108759056784979', '2020-09-27', 346);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (61, 'smarmon6@vistaprint.com', '5048370818834467', '2021-01-31', 566);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (62, 'cgrolle2f@com.com', '5048373852088750', '2020-12-21', 922);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (63, 'gwiltshire50@sourceforge.net', '5108754004733871', '2020-08-10', 288);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (64, 'acanfieldg@canalblog.com', '5108758911636309', '2021-06-03', 610);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (65, 'mwhiteford3z@cornell.edu', '5048373224562250', '2020-07-28', 762);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (66, 'kjorckes@bandcamp.com', '5108758886841793', '2020-08-23', 389);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (67, 'rdurbyn1a@army.mil', '5108755671098357', '2021-06-29', 306);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (68, 'mstanfieldd@flickr.com', '5048372852690706', '2020-07-22', 355);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (69, 'oforgan29@nature.com', '5108758542606788', '2021-02-21', 913);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (70, 'tgruszczak2m@topsy.com', '5048377026740725', '2020-08-26', 912);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (71, 'mheersn@imgur.com', '5048373573701541', '2021-01-04', 471);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (72, 'cblondel19@sohu.com', '5048373312736774', '2021-04-02', 460);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (73, 'saharoni1h@tumblr.com', '5048373032528212', '2021-02-18', 924);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (74, 'gbloodworthe1q@oakley.com', '5108754908526215', '2021-06-04', 202);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (75, 'hworkmanu@wordpress.com', '5108751704371309', '2020-08-25', 707);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (76, 'ggiottoi1f@facebook.com', '5108756338160838', '2021-01-04', 224);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (77, 'cmcgilmartin1o@whitehouse.gov', '5108755325151016', '2020-07-16', 204);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (78, 'adegoeyf@stanford.edu', '5048378592805116', '2021-02-26', 352);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (79, 'tcastanos6a@redcross.org', '5108756375652440', '2020-11-18', 476);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (80, 'akeener1p@wisc.edu', '5048376372843893', '2021-03-01', 475);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (81, 'froyden4z@walmart.com', '5048377498053284', '2020-12-10', 612);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (82, 'ocampagne43@w3.org', '5048376143857073', '2021-04-04', 696);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (83, 'kboorne48@themeforest.net', '5108752280211661', '2020-12-23', 208);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (84, 'mpurdon1s@quantcast.com', '5048372377731035', '2020-10-13', 729);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (85, 'wschoffler6q@cornell.edu', '5048372645679768', '2020-10-21', 461);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (86, 'rdurbyn1a@army.mil', '5108755315321579', '2021-02-14', 365);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (87, 'fpocknoll6j@cargocollective.com', '5108753622506073', '2020-09-08', 783);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (88, 'mpurdon1s@quantcast.com', '5108754393903762', '2020-12-17', 216);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (89, 'qtuckwood5c@dyndns.org', '5108756870964639', '2021-01-17', 811);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (90, 'awindmill68@multiply.com', '5108755388357252', '2020-07-24', 408);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (91, 'banthillq@etsy.com', '5108754604385916', '2021-05-26', 243);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (92, 'mharmson5@pcworld.com', '5108750653551408', '2021-06-13', 571);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (93, 'twoodfin1k@tiny.cc', '5048371647806379', '2021-04-14', 541);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (94, 'npasque2z@seesaa.net', '5108753495408399', '2020-10-26', 267);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (95, 'rprinnett56@msu.edu', '5108754400774412', '2021-06-04', 324);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (96, 'callgood3d@opensource.org', '5048370414851857', '2020-10-05', 211);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (97, 'msimecek1t@huffingtonpost.com', '5108752064305911', '2020-11-13', 692);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (98, 'tgruszczak2m@topsy.com', '5108756328820060', '2021-03-08', 261);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (99, 'wwicks40@woothemes.com', '5108752570521258', '2020-09-10', 193);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (100, 'bkleinhausen4s@eepurl.com', '5048376543716085', '2021-06-17', 284);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (101, 'pauger4o@apple.com', '5108755564805306', '2020-10-18', 929);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (102, 'lbeadon22@mtv.com', '5108751510418054', '2020-11-10', 292);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (103, 'bnind37@goodreads.com', '5048374841000443', '2020-08-31', 738);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (104, 'gmunkley5j@themeforest.net', '5108751874853516', '2021-06-09', 883);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (105, 'wtether2b@hc360.com', '5108756346994210', '2020-08-02', 539);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (106, 'chillaby4l@cam.ac.uk', '5048378065757885', '2021-03-14', 854);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (107, 'jvosse55@fc2.com', '5048372404667459', '2021-02-10', 547);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (108, 'gbloodworthe1q@oakley.com', '5048374439078603', '2020-08-05', 316);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (109, 'adymidowski3c@cbsnews.com', '5108754926732910', '2021-05-07', 809);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (110, 'tkesten3y@uiuc.edu', '5048377824047208', '2021-01-04', 900);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (111, 'kneal57@hud.gov', '5048372449726211', '2020-10-19', 415);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (112, 'bwaker5v@google.ru', '5048375179243141', '2021-02-05', 774);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (113, 'rmerryman5g@admin.ch', '5048372795624143', '2021-02-11', 325);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (114, 'ojedrachowicz4a@xinhuanet.com', '5108759867629314', '2020-12-23', 743);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (115, 'callgood3d@opensource.org', '5108754281072340', '2021-06-13', 752);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (116, 'kfotheringham28@gnu.org', '5108756048724808', '2021-05-22', 246);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (117, 'adevey2@360.cn', '5048379668231286', '2020-12-27', 854);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (118, 'dwaterson3r@1688.com', '5048373236857284', '2021-01-25', 976);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (119, 'adobson33@mozilla.com', '5048370814228821', '2021-02-08', 798);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (120, 'mvittle6d@ameblo.jp', '5048376352285370', '2020-09-22', 717);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (121, 'rfallis2l@epa.gov', '5108757855251422', '2021-03-24', 761);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (122, 'jnobbs4n@mayoclinic.com', '5048370040128720', '2021-06-22', 911);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (123, 'npavelka5n@blogspot.com', '5048377231283115', '2020-11-14', 538);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (124, 'kfotheringham28@gnu.org', '5108756940608331', '2020-08-09', 228);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (125, 'fgaylor6u@msu.edu', '5048371878296852', '2021-01-16', 608);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (126, 'rsnarr47@networksolutions.com', '5048374834535868', '2021-06-10', 913);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (127, 'mwhiteford3z@cornell.edu', '5048370603469487', '2021-03-23', 949);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (128, 'walliberton5q@icio.us', '5108750052142353', '2021-06-05', 435);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (129, 'zkondratenya60@symantec.com', '5108753889587519', '2020-07-26', 789);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (130, 'wlingley64@icq.com', '5108752860648530', '2020-09-13', 220);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (131, 'hmitchinson5s@tinyurl.com', '5108759808064597', '2021-03-06', 489);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (132, 'tneads3t@state.tx.us', '5048374822574143', '2021-01-12', 845);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (133, 'psulter5l@creativecommons.org', '5048378125300213', '2021-02-25', 839);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (134, 'lclemon5i@t.co', '5048379555479246', '2020-11-09', 348);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (135, 'bcripino@si.edu', '5048378603653489', '2020-08-26', 897);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (136, 'bnind37@goodreads.com', '5108751436185662', '2020-08-27', 199);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (137, 'jlorrain14@dion.ne.jp', '5048373015315850', '2020-07-20', 250);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (138, 'cmcgilmartin1o@whitehouse.gov', '5048370607601838', '2020-09-07', 572);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (139, 'hhalsworth4t@woothemes.com', '5048373981595956', '2020-07-13', 498);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (140, 'lpatsall59@xrea.com', '5108758931158557', '2021-01-21', 313);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (141, 'jcarmichael46@whitehouse.gov', '5108759890623904', '2021-01-06', 511);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (142, 'zkondratenya60@symantec.com', '5048373923301174', '2021-06-17', 873);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (143, 'mrickmanv@deviantart.com', '5048372562781605', '2020-09-25', 324);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (144, 'jconkiel@multiply.com', '5108750711669887', '2021-05-19', 686);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (145, 'soroan2r@google.com.au', '5048374947396372', '2021-01-23', 618);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (146, 'cbacop6v@hao123.com', '5108750837507904', '2021-02-06', 507);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (147, 'tneads3t@state.tx.us', '5048372387939867', '2020-09-26', 767);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (148, 'oforgan29@nature.com', '5108755418409271', '2020-11-20', 692);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (149, 'jhowford3q@wordpress.org', '5048377195136358', '2021-04-11', 813);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (150, 'rselway6w@vimeo.com', '5048374951282716', '2020-10-08', 944);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (151, 'wmedlinm@i2i.jp', '5108750651331860', '2021-01-13', 380);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (152, 'dacremanh@nba.com', '5108752905254518', '2020-09-26', 439);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (153, 'dwife2y@phpbb.com', '5048370112517966', '2020-07-04', 108);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (154, 'adebruyne4e@mashable.com', '5108759577406201', '2020-10-16', 233);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (155, 'aelsez@telegraph.co.uk', '5108758516029959', '2021-02-27', 647);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (156, 'jconkiel@multiply.com', '5048374021689411', '2020-11-20', 667);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (157, 'fgroombridge1w@engadget.com', '5048377641747873', '2020-07-25', 165);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (158, 'ftuison5k@smh.com.au', '5048372210520090', '2020-07-04', 837);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (159, 'kscroggie3s@hibu.com', '5048370819345273', '2020-11-10', 270);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (160, 'xbrannx@soup.io', '5108750820671246', '2021-05-08', 784);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (161, 'mkidsleyw@domainmarket.com', '5048376417586069', '2021-05-30', 776);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (162, 'cblondel19@sohu.com', '5048377663532732', '2020-09-19', 837);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (163, 'sianitti1i@ocn.ne.jp', '5048374077071472', '2020-09-21', 393);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (164, 'prawstorn2a@nytimes.com', '5048379718077192', '2020-08-09', 104);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (165, 'lleathes2j@rakuten.co.jp', '5048373766641108', '2021-07-02', 915);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (166, 'bkleinhausen4s@eepurl.com', '5048378263837224', '2020-11-22', 132);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (167, 'jrizon1d@npr.org', '5108753742854692', '2020-10-21', 154);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (168, 'ckamiyama25@stanford.edu', '5108753240463905', '2021-06-17', 595);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (169, 'wackenson1r@walmart.com', '5048375231833871', '2021-05-06', 374);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (170, 'rpapis1u@cocolog-nifty.com', '5108753758771194', '2021-03-06', 918);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (171, 'mgroves1@paginegialle.it', '5108750800314379', '2020-12-05', 650);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (172, 'jhowford3q@wordpress.org', '5108756618925033', '2020-12-26', 119);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (173, 'ymackenney5w@prnewswire.com', '5048370327570081', '2020-09-10', 742);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (174, 'adawnay67@eventbrite.com', '5048374148332069', '2020-08-30', 117);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (175, 'ngillaspy3u@163.com', '5048373908868627', '2021-03-05', 940);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (176, 'rdyment31@naver.com', '5108759893415696', '2020-08-17', 206);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (177, 'rdurbyn1a@army.mil', '5108754432838094', '2020-12-27', 799);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (178, 'xbrannx@soup.io', '5108751017443118', '2021-05-06', 663);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (179, 'gmacbean6b@is.gd', '5108756461059039', '2020-12-31', 904);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (180, 'scoulthard8@baidu.com', '5048378164521307', '2021-01-28', 797);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (181, 'smorforth4h@yolasite.com', '5048372607444318', '2021-04-03', 317);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (182, 'wmedlinm@i2i.jp', '5108753684340940', '2020-08-13', 569);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (183, 'adymidowski3c@cbsnews.com', '5048372880087867', '2020-12-13', 718);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (184, 'srozsa1n@archive.org', '5048375634824410', '2021-02-08', 415);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (185, 'cwanek3f@elegantthemes.com', '5048375549195005', '2020-10-25', 852);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (186, 'mrickmanv@deviantart.com', '5048376632214901', '2020-12-17', 257);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (187, 'abagehot4c@google.cn', '5108756568009515', '2021-04-17', 844);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (188, 'cblondel19@sohu.com', '5108758707249291', '2021-04-30', 763);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (189, 'doxtiby6s@cnbc.com', '5048376840209925', '2020-09-01', 617);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (190, 'fabbatini3o@omniture.com', '5048379632456035', '2020-07-26', 238);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (191, 'acheetam3k@va.gov', '5108750751956814', '2021-04-30', 331);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (192, 'tgruszczak2m@topsy.com', '5048372061998940', '2020-08-20', 436);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (193, 'cmcgilmartin1o@whitehouse.gov', '5048373435872837', '2020-11-20', 104);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (194, 'wives3j@youku.com', '5048375368240262', '2020-07-11', 634);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (195, 'lclemon5i@t.co', '5048374462507148', '2020-09-12', 757);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (196, 'cmarkie4j@upenn.edu', '5048378598023797', '2020-12-27', 488);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (197, 'hhalsworth4t@woothemes.com', '5048377150460066', '2020-09-15', 368);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (198, 'mferraresi5x@yahoo.com', '5048372331037461', '2021-03-11', 369);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (199, 'wchoake51@studiopress.com', '5108753184165003', '2020-07-05', 789);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (200, 'psulter5l@creativecommons.org', '5108751034255990', '2021-04-17', 658);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (201, 'mlegrys30@illinois.edu', '5108750885108902', '2021-03-30', 436);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (202, 'sianitti1i@ocn.ne.jp', '5108757723903733', '2020-08-22', 168);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (203, 'stomik5e@rediff.com', '5048372309387146', '2021-05-11', 885);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (204, 'lbrightman15@cornell.edu', '5048374120387693', '2020-08-31', 956);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (205, 'ascruton23@home.pl', '5048373217811565', '2021-04-15', 480);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (206, 'rsnarr47@networksolutions.com', '5048373128358045', '2020-12-17', 215);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (207, 'wtether2b@hc360.com', '5108758056021788', '2021-01-03', 414);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (208, 'prawstorn2a@nytimes.com', '5108754924196936', '2021-03-05', 693);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (209, 'eabbey11@cornell.edu', '5048377895993801', '2021-06-09', 652);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (210, 'smccahill13@msn.com', '5048378809305157', '2020-10-29', 816);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (211, 'kfotheringham28@gnu.org', '5048375289457516', '2021-06-28', 671);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (212, 'lbeadon22@mtv.com', '5048375584733660', '2021-03-04', 512);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (213, 'lleathes2j@rakuten.co.jp', '5048375083171701', '2021-04-09', 204);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (214, 'zkondratenya60@symantec.com', '5048371831514870', '2020-12-27', 910);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (215, 'rdyment31@naver.com', '5108752850513496', '2020-08-17', 525);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (216, 'clarkworthy62@spiegel.de', '5108753699926055', '2020-10-12', 353);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (217, 'oskoulinga@gravatar.com', '5048376392290513', '2021-06-26', 395);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (218, 'oskoulinga@gravatar.com', '5108757001036487', '2021-05-09', 862);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (219, 'pgadd0@gov.uk', '5108757751641361', '2020-08-04', 331);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (220, 'lgreaves53@ibm.com', '5108755537860982', '2021-01-08', 391);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (221, 'walliberton5q@icio.us', '5048373305910279', '2020-08-09', 590);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (222, 'neuplate69@pagesperso-orange.fr', '5108754290683228', '2020-08-08', 516);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (223, 'jnewton3w@mashable.com', '5108758212008224', '2021-02-13', 838);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (224, 'oforgan29@nature.com', '5108759444355060', '2021-02-13', 256);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (225, 'ojedrachowicz4a@xinhuanet.com', '5108753990479226', '2021-01-05', 261);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (226, 'ocampagne43@w3.org', '5048379486826119', '2020-11-04', 518);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (227, 'npavelka5n@blogspot.com', '5108759662485359', '2020-07-22', 862);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (228, 'cmartinello5d@cargocollective.com', '5108757736761789', '2020-11-19', 223);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (229, 'wchoake51@studiopress.com', '5048370375294022', '2021-04-27', 332);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (230, 'soroan2r@google.com.au', '5108753739541765', '2021-05-10', 235);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (231, 'bwainer3@state.tx.us', '5108757391056954', '2021-05-03', 911);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (232, 'tneads3t@state.tx.us', '5108758894116576', '2021-05-01', 799);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (233, 'mheersn@imgur.com', '5048376059838489', '2021-04-03', 281);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (234, 'jconkiel@multiply.com', '5108756709564162', '2021-07-02', 647);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (235, 'bwintersgill5o@slashdot.org', '5048370552588170', '2021-02-26', 668);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (236, 'gbloodworthe1q@oakley.com', '5048370857226591', '2020-10-12', 794);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (237, 'ocampagne43@w3.org', '5048379146939583', '2020-08-29', 242);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (238, 'wchoake51@studiopress.com', '5048375718379232', '2020-11-20', 316);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (239, 'bbarszczewski4@hhs.gov', '5048371287614836', '2021-02-15', 881);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (240, 'elarawayk@goo.ne.jp', '5108756174543352', '2021-04-11', 513);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (241, 'kjorckes@bandcamp.com', '5048375883093923', '2020-11-06', 152);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (242, 'nsmitherman2w@examiner.com', '5108752299844668', '2021-03-12', 284);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (243, 'aterrill3g@yahoo.co.jp', '5108758361112793', '2020-12-15', 882);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (244, 'cwagg18@miibeian.gov.cn', '5048378367950220', '2020-11-10', 801);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (245, 'walliberton5q@icio.us', '5048373394174985', '2020-10-28', 914);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (246, 'cwatford1v@wordpress.org', '5108756196997594', '2021-06-26', 459);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (247, 'prawstorn2a@nytimes.com', '5108750802586768', '2020-10-30', 621);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (248, 'lpatsall59@xrea.com', '5108756338474148', '2020-12-01', 896);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (249, 'mbettensonc@php.net', '5048371886956794', '2021-05-28', 677);
INSERT INTO public.credit_card (cc_id, username, card_number, exp_date, cvv) VALUES (250, 'wives3j@youku.com', '5108754363772981', '2021-03-04', 697);


--
-- TOC entry 3016 (class 0 OID 17803)
-- Dependencies: 203
-- Data for Name: shopping_cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (1, 'egokes5y@blogs.com', '249529400-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (2, 'mfatkin4i@netscape.com', '586919215-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (3, 'mbettensonc@php.net', '571594735-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (4, 'jconkiel@multiply.com', '452263482-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (5, 'jcarmichael46@whitehouse.gov', '714841295-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (6, 'kscroggie3s@hibu.com', '070087873-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (7, 'smorforth4h@yolasite.com', '851608780-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (8, 'mrickmanv@deviantart.com', '452263482-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (9, 'bwainer3@state.tx.us', '983589321-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (10, 'mfatkin4i@netscape.com', '892803338-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (11, 'sillingsworth6c@cmu.edu', '119493863-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (12, 'cmartinello5d@cargocollective.com', '493111511-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (13, 'kfotheringham28@gnu.org', '649299294-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (14, 'scoulthard8@baidu.com', '161622304-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (15, 'rdyment31@naver.com', '634774350-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (16, 'amagowan3x@howstuffworks.com', '415684273-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (17, 'mharmson5@pcworld.com', '197360679-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (18, 'sharte6x@csmonitor.com', '936326617-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (19, 'adegoeyf@stanford.edu', '843157042-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (20, 'mnoel6e@cdc.gov', '323991176-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (21, 'wlingley64@icq.com', '700767437-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (22, 'rheady@hc360.com', '902926331-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (23, 'alawrence1c@webeden.co.uk', '799712104-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (24, 'kitzchaki2x@uol.com.br', '582356881-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (25, 'mkidsleyw@domainmarket.com', '625773853-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (26, 'jgallichiccio4f@1688.com', '295525808-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (27, 'cwanek3f@elegantthemes.com', '161622304-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (28, 'umattaser2q@vkontakte.ru', '315028214-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (29, 'bwyd32@bizjournals.com', '070087873-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (30, 'pgadd0@gov.uk', '586919215-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (31, 'eboler3e@va.gov', '611895414-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (32, 'sianitti1i@ocn.ne.jp', '025428193-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (33, 'kjorckes@bandcamp.com', '267756349-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (34, 'amamwell5a@addthis.com', '493935519-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (35, 'scoulthard8@baidu.com', '646459739-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (36, 'wmedlinm@i2i.jp', '387008359-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (37, 'msimecek1t@huffingtonpost.com', '253421158-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (38, 'elozano6h@tinyurl.com', '675399726-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (39, 'amamwell5a@addthis.com', '784837272-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (40, 'lgreaves53@ibm.com', '663355652-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (41, 'mbettensonc@php.net', '446515304-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (42, 'rhatherall6l@bloomberg.com', '571551337-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (43, 'gthompstoneb@phoca.cz', '945918848-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (44, 'dwife2y@phpbb.com', '987599799-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (45, 'mpurdon1s@quantcast.com', '988127899-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (46, 'lbeadon22@mtv.com', '996146139-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (47, 'enajara1l@ycombinator.com', '603718711-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (48, 'shabbeshawi@typepad.com', '415684273-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (49, 'hminichi2s@yellowpages.com', '809581611-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (50, 'mbattista38@netlog.com', '914875553-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (51, 'hearngy52@wikia.com', '774073311-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (52, 'cwilkins5f@delicious.com', '476528037-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (53, 'csavine1g@independent.co.uk', '051984010-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (54, 'wackenson1r@walmart.com', '449296180-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (55, 'esobey2u@si.edu', '163578512-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (56, 'hcoughlin5b@bravesites.com', '567122343-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (57, 'zkondratenya60@symantec.com', '825307248-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (58, 'ltuxwell6i@hostgator.com', '822800477-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (59, 'xbrannx@soup.io', '566564397-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (60, 'srozsa1n@archive.org', '682257814-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (61, 'rpapis1u@cocolog-nifty.com', '823957154-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (62, 'sillingsworth6c@cmu.edu', '965436958-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (63, 'abagehot4c@google.cn', '689541540-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (64, 'cscottrell61@cnbc.com', '973016551-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (65, 'cgollin45@ebay.co.uk', '379568142-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (66, 'xbrannx@soup.io', '105556924-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (67, 'tneads3t@state.tx.us', '419090537-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (68, 'ymackenney5w@prnewswire.com', '859727177-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (69, 'egokes5y@blogs.com', '359496499-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (70, 'pauger4o@apple.com', '587258898-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (71, 'cgrolle2f@com.com', '799712104-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (72, 'rmerryman5g@admin.ch', '493111511-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (73, 'mgreenhead34@simplemachines.org', '860954062-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (74, 'kscroggie3s@hibu.com', '860954062-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (75, 'jtarbin2i@boston.com', '470722880-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (76, 'mbettensonc@php.net', '649299294-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (77, 'mbattista38@netlog.com', '208851355-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (78, 'elozano6h@tinyurl.com', '774073311-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (79, 'ahavock5r@spotify.com', '450576210-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (80, 'hstrathe63@sbwire.com', '002519595-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (81, 'umattaser2q@vkontakte.ru', '741644622-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (82, 'acheetam3k@va.gov', '596219649-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (83, 'ftuison5k@smh.com.au', '377423422-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (84, 'mnoel6e@cdc.gov', '883379866-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (85, 'jconkiel@multiply.com', '155749938-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (86, 'bkleinhausen4s@eepurl.com', '017376297-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (87, 'doxtiby6s@cnbc.com', '181954119-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (88, 'adawnay67@eventbrite.com', '574016917-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (89, 'adegoeyf@stanford.edu', '435361424-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (90, 'lgreaves53@ibm.com', '364668437-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (91, 'zkondratenya60@symantec.com', '620402036-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (92, 'callgood3d@opensource.org', '567049390-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (93, 'rharteley12@flickr.com', '912235265-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (94, 'kghio7@chicagotribune.com', '521735461-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (95, 'hhartup3m@rambler.ru', '326731155-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (96, 'eabbey11@cornell.edu', '571551337-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (97, 'csavine1g@independent.co.uk', '433346207-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (98, 'qtuckwood5c@dyndns.org', '661060210-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (99, 'amagowan3x@howstuffworks.com', '936326617-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (100, 'elarret6g@cocolog-nifty.com', '472596990-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (101, 'chillaby4l@cam.ac.uk', '125704596-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (102, 'adebruyne4e@mashable.com', '756692961-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (103, 'jnewton3w@mashable.com', '809250742-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (104, 'aelsez@telegraph.co.uk', '935595550-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (105, 'mharmson5@pcworld.com', '649299294-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (106, 'ade6o@wikimedia.org', '756692961-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (107, 'skures5t@nyu.edu', '033191203-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (108, 'amarte2e@umich.edu', '714841295-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (109, 'akeener1p@wisc.edu', '449296180-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (110, 'cgrolle2f@com.com', '171513250-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (111, 'cmcgilmartin1o@whitehouse.gov', '503237818-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (112, 'gbloodworthe1q@oakley.com', '452522709-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (113, 'smccahill13@msn.com', '051984010-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (114, 'ltuxwell6i@hostgator.com', '680805713-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (115, 'rheady@hc360.com', '349330131-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (116, 'oskoulinga@gravatar.com', '283821856-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (117, 'oskoulinga@gravatar.com', '600090633-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (118, 'dbrandle36@examiner.com', '725598712-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (119, 'jhowford3q@wordpress.org', '588088642-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (120, 'jcarmichael46@whitehouse.gov', '889207288-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (121, 'doxtiby6s@cnbc.com', '936482083-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (122, 'tgruszczak2m@topsy.com', '920661357-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (123, 'rhassewell66@shinystat.com', '114584286-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (124, 'lbrightman15@cornell.edu', '531793868-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (125, 'santhonies1j@homestead.com', '012573390-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (126, 'wwicks40@woothemes.com', '310645434-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (127, 'ahenrys3l@4shared.com', '675399726-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (128, 'hearngy52@wikia.com', '826383883-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (129, 'hbetjeman3h@gov.uk', '019561007-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (130, 'gmacbean6b@is.gd', '779002953-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (131, 'ggiottoi1f@facebook.com', '528063907-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (132, 'bwintersgill5o@slashdot.org', '130987216-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (133, 'rdelafoy4p@ftc.gov', '779523141-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (134, 'umattaser2q@vkontakte.ru', '225786832-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (135, 'twoodfin1k@tiny.cc', '347323445-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (136, 'erushton4b@amazon.co.jp', '809226378-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (137, 'oskoulinga@gravatar.com', '804430979-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (138, 'ckamiyama25@stanford.edu', '155749938-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (139, 'jzappel3v@java.com', '260314263-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (140, 'dbeadnell3p@cargocollective.com', '245838298-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (141, 'ftuison5k@smh.com.au', '988127899-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (142, 'hearngy52@wikia.com', '956132571-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (143, 'iklasing4w@php.net', '847776827-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (144, 'ahenrys3l@4shared.com', '546534789-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (145, 'fliversage44@marketwatch.com', '519499644-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (146, 'enajara1l@ycombinator.com', '663080344-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (147, 'emundie35@soup.io', '410190780-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (148, 'atice4g@independent.co.uk', '416755800-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (149, 'umattaser2q@vkontakte.ru', '618186888-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (150, 'skures5t@nyu.edu', '527756877-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (151, 'cscottrell61@cnbc.com', '514395606-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (152, 'sharte6x@csmonitor.com', '987313498-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (153, 'prawstorn2a@nytimes.com', '253421158-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (154, 'sfolley65@pinterest.com', '796580315-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (155, 'cballston2c@go.com', '559666805-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (156, 'skures5t@nyu.edu', '204725391-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (157, 'atice4g@independent.co.uk', '919107922-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (158, 'bbarszczewski4@hhs.gov', '661060210-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (159, 'esygrove49@biblegateway.com', '717860103-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (160, 'oskoulinga@gravatar.com', '514395606-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (161, 'enajara1l@ycombinator.com', '789193562-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (162, 'sharte6x@csmonitor.com', '206023506-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (163, 'acanfieldg@canalblog.com', '913616867-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (164, 'acoote3b@uol.com.br', '714974033-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (165, 'bspinola2k@edublogs.org', '007521393-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (166, 'sworton5u@fotki.com', '337150800-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (167, 'zkondratenya60@symantec.com', '629550450-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (168, 'acanfieldg@canalblog.com', '586919215-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (169, 'rdurbyn1a@army.mil', '298252107-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (170, 'eblandford1x@seesaa.net', '745726166-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (171, 'bspinola2k@edublogs.org', '646459739-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (172, 'hearngy52@wikia.com', '357279663-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (173, 'dwaterson3r@1688.com', '329764334-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (174, 'rfallis2l@epa.gov', '717006571-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (175, 'ggiottoi1f@facebook.com', '012573390-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (176, 'ahavock5r@spotify.com', '246550660-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (177, 'akeener1p@wisc.edu', '984908053-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (178, 'adomokos2v@amazon.co.jp', '349173947-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (179, 'enajara1l@ycombinator.com', '705291331-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (180, 'mlegrys30@illinois.edu', '171513250-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (181, 'rdurbyn1a@army.mil', '168115051-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (182, 'acanfieldg@canalblog.com', '614189703-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (183, 'kghio7@chicagotribune.com', '269045513-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (184, 'rharteley12@flickr.com', '143487435-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (185, 'mvittle6d@ameblo.jp', '445239445-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (186, 'hbetjeman3h@gov.uk', '249529400-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (187, 'fbockh54@clickbank.net', '430132456-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (188, 'csavine1g@independent.co.uk', '753001788-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (189, 'hearngy52@wikia.com', '916193377-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (190, 'gleppingwell6t@newsvine.com', '587258898-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (191, 'mvittle6d@ameblo.jp', '660703244-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (192, 'wschoffler6q@cornell.edu', '728806327-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (193, 'cgollin45@ebay.co.uk', '933376029-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (194, 'asallnow6r@columbia.edu', '936482083-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (195, 'rhassewell66@shinystat.com', '164145097-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (196, 'kscroggie3s@hibu.com', '449296180-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (197, 'adomokos2v@amazon.co.jp', '494723217-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (198, 'aelsez@telegraph.co.uk', '266695649-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (199, 'bwintersgill5o@slashdot.org', '357279663-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (200, 'kboorne48@themeforest.net', '841058014-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (201, 'sdorkins5h@hhs.gov', '117141265-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (202, 'xbrannx@soup.io', '741644622-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (203, 'emundie35@soup.io', '912235265-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (204, 'bnind37@goodreads.com', '891119616-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (205, 'lgreaves53@ibm.com', '834369229-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (206, 'rselway6w@vimeo.com', '817962099-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (207, 'mheersn@imgur.com', '576176060-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (208, 'acanfieldg@canalblog.com', '705291331-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (209, 'psulter5l@creativecommons.org', '587553305-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (210, 'shabbeshawi@typepad.com', '333868171-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (211, 'fgaylor6u@msu.edu', '326731155-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (212, 'cgrolle2f@com.com', '181954119-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (213, 'atice4g@independent.co.uk', '953469093-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (214, 'hearngy52@wikia.com', '494723217-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (215, 'doxtiby6s@cnbc.com', '323991176-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (216, 'saharoni1h@tumblr.com', '804430979-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (217, 'dwaterson3r@1688.com', '955860017-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (218, 'sfolley65@pinterest.com', '793595670-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (219, 'jrizon1d@npr.org', '155749938-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (220, 'hworkmanu@wordpress.com', '200756859-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (221, 'enajara1l@ycombinator.com', '339348822-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (222, 'kkegleyr@booking.com', '932475725-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (223, 'ade6o@wikimedia.org', '323991176-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (224, 'oskoulinga@gravatar.com', '985687655-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (225, 'adevey2@360.cn', '449296180-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (226, 'mwhiteford3z@cornell.edu', '487898377-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (227, 'enajara1l@ycombinator.com', '133235316-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (228, 'bkleinhausen4s@eepurl.com', '936482083-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (229, 'ahenrys3l@4shared.com', '036301747-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (230, 'gbloodworthe1q@oakley.com', '416906563-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (231, 'akeener1p@wisc.edu', '442512297-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (232, 'wackenson1r@walmart.com', '895919336-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (233, 'akeener1p@wisc.edu', '528063907-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (234, 'adebruyne4e@mashable.com', '809334023-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (235, 'hearngy52@wikia.com', '025428193-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (236, 'fcraigmile1e@fc2.com', '935962845-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (237, 'hminichi2s@yellowpages.com', '991686751-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (238, 'kfotheringham28@gnu.org', '295525808-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (239, 'fgroombridge1w@engadget.com', '711371002-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (240, 'lmar20@fema.gov', '249529400-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (241, 'smorforth4h@yolasite.com', '936482083-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (242, 'aalsop4y@yellowpages.com', '468303695-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (243, 'hstrathe63@sbwire.com', '329738049-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (244, 'jvosse55@fc2.com', '793595670-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (245, 'wlingley64@icq.com', '892803338-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (246, 'fgaylor6u@msu.edu', '087935617-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (247, 'vbuxey2p@patch.com', '600090633-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (248, 'ahavock5r@spotify.com', '070087873-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (249, 'mvittle6d@ameblo.jp', '333868171-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (250, 'cmarkie4j@upenn.edu', '651466403-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (251, 'rdurbyn1a@army.mil', '400088677-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (252, 'bnind37@goodreads.com', '059906440-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (253, 'rmerryman5g@admin.ch', '484440151-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (254, 'dbeadnell3p@cargocollective.com', '708925873-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (255, 'scoulthard8@baidu.com', '493935519-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (256, 'vde4v@washingtonpost.com', '892803338-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (257, 'rdaybell4x@gmpg.org', '068919983-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (258, 'amagowan3x@howstuffworks.com', '586709303-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (259, 'srozsa1n@archive.org', '817072394-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (260, 'fabbatini3o@omniture.com', '984908053-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (261, 'rmerryman5g@admin.ch', '144348626-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (262, 'kfotheringham28@gnu.org', '105556924-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (263, 'callgood3d@opensource.org', '416906563-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (264, 'smorforth4h@yolasite.com', '545395722-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (265, 'jrizon1d@npr.org', '877680598-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (266, 'smarmon6@vistaprint.com', '141143158-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (267, 'abagehot4c@google.cn', '629550450-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (268, 'gthompstoneb@phoca.cz', '661467673-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (269, 'gthompstoneb@phoca.cz', '017376297-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (270, 'hearngy52@wikia.com', '059906440-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (271, 'dbeadnell3p@cargocollective.com', '289150352-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (272, 'jnewton3w@mashable.com', '468303695-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (273, 'mbattista38@netlog.com', '988127899-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (274, 'hhalsworth4t@woothemes.com', '532243709-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (275, 'csavine1g@independent.co.uk', '519491786-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (276, 'rsnarr47@networksolutions.com', '737109515-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (277, 'tcastanos6a@redcross.org', '953489508-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (278, 'kboorne48@themeforest.net', '956317964-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (279, 'hhalsworth4t@woothemes.com', '933376029-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (280, 'gleppingwell6t@newsvine.com', '804430979-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (281, 'csavine1g@independent.co.uk', '851608780-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (282, 'rpaireman6n@pen.io', '675399726-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (283, 'oskoulinga@gravatar.com', '616739403-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (284, 'adegoeyf@stanford.edu', '484440151-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (285, 'rsnarr47@networksolutions.com', '834369229-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (286, 'fbockh54@clickbank.net', '114584286-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (287, 'bwainer3@state.tx.us', '956317964-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (288, 'dbrandle36@examiner.com', '227470428-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (289, 'wmedlinm@i2i.jp', '932475725-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (290, 'mfatkin4i@netscape.com', '020197894-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (291, 'wives3j@youku.com', '812908378-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (292, 'mvittle6d@ameblo.jp', '663355652-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (293, 'fabbatini3o@omniture.com', '159817092-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (294, 'jnobbs4n@mayoclinic.com', '493935519-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (295, 'mgreenhead34@simplemachines.org', '850553356-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (296, 'jcarmichael46@whitehouse.gov', '266695649-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (297, 'oforgan29@nature.com', '809226378-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (298, 'lpatsall59@xrea.com', '268520013-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (299, 'dwife2y@phpbb.com', '373338582-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (300, 'fgaylor6u@msu.edu', '920661357-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (301, 'akeener1p@wisc.edu', '323991176-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (302, 'mrickmanv@deviantart.com', '133235316-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (303, 'bwyd32@bizjournals.com', '311253609-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (304, 'neuplate69@pagesperso-orange.fr', '979066769-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (305, 'cjillins4m@is.gd', '945918848-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (306, 'cjillins4m@is.gd', '065382914-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (307, 'aelsez@telegraph.co.uk', '004222471-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (308, 'srozsa1n@archive.org', '267756349-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (309, 'bwyd32@bizjournals.com', '759953884-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (310, 'neuplate69@pagesperso-orange.fr', '812908378-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (311, 'ejoplinj@techcrunch.com', '984797181-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (312, 'cscottrell61@cnbc.com', '578416852-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (313, 'mpurdon1s@quantcast.com', '956317964-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (314, 'jgallichiccio4f@1688.com', '325665536-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (315, 'lleathes2j@rakuten.co.jp', '859727177-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (316, 'dtolomeit@vk.com', '298252107-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (317, 'rmerryman5g@admin.ch', '743491433-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (318, 'cmarkie4j@upenn.edu', '063888040-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (319, 'ocampagne43@w3.org', '449296180-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (320, 'esobey2u@si.edu', '831627765-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (321, 'lclemon5i@t.co', '017376297-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (322, 'gmacbean6b@is.gd', '987313498-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (323, 'cmarkie4j@upenn.edu', '496223091-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (324, 'acanfieldg@canalblog.com', '085809405-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (325, 'jconkiel@multiply.com', '717006571-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (326, 'ckamiyama25@stanford.edu', '614189703-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (327, 'smonks2g@kickstarter.com', '323991176-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (328, 'bchatelet21@blogtalkradio.com', '163739070-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (329, 'rdelafoy4p@ftc.gov', '793595670-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (330, 'mbettensonc@php.net', '785513696-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (331, 'adebruyne4e@mashable.com', '169291605-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (332, 'wackenson1r@walmart.com', '567122343-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (333, 'mgreenhead34@simplemachines.org', '095825458-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (334, 'fmacnaughton4r@csmonitor.com', '306075133-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (335, 'tkesten3y@uiuc.edu', '588088642-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (336, 'banthillq@etsy.com', '326165997-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (337, 'jlorrain14@dion.ne.jp', '749487553-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (338, 'sillingsworth6c@cmu.edu', '280240332-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (339, 'ymackenney5w@prnewswire.com', '895919336-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (340, 'mlegrys30@illinois.edu', '379568142-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (341, 'santhonies1j@homestead.com', '289150352-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (342, 'aterrill3g@yahoo.co.jp', '912235265-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (343, 'cwagg18@miibeian.gov.cn', '607877822-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (344, 'jvosse55@fc2.com', '080664477-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (345, 'gbloodworthe1q@oakley.com', '796580315-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (346, 'ckamiyama25@stanford.edu', '036301747-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (347, 'jcarmichael46@whitehouse.gov', '007521393-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (348, 'npasque2z@seesaa.net', '581955340-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (349, 'rharteley12@flickr.com', '610775534-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (350, 'hmitchinson5s@tinyurl.com', '246550660-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (351, 'hcoughlin5b@bravesites.com', '638985428-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (352, 'emundie35@soup.io', '934944123-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (353, 'lbeadon22@mtv.com', '841058014-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (354, 'bcripino@si.edu', '377423422-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (355, 'pauger4o@apple.com', '756692961-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (356, 'pgadd0@gov.uk', '681048275-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (357, 'kdunbobbin10@businessweek.com', '817072394-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (358, 'dgillaspy41@etsy.com', '571551337-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (359, 'prawstorn2a@nytimes.com', '068919983-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (360, 'jzappel3v@java.com', '363719677-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (361, 'bwaker5v@google.ru', '983589321-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (362, 'esygrove49@biblegateway.com', '822800477-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (363, 'esobey2u@si.edu', '056743658-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (364, 'rhassewell66@shinystat.com', '226995063-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (365, 'msimecek1t@huffingtonpost.com', '856221626-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (366, 'acoote3b@uol.com.br', '133235316-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (367, 'dbrandle36@examiner.com', '809250742-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (368, 'dtolomeit@vk.com', '863967300-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (369, 'mhardbattle6k@g.co', '856221626-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (370, 'mgroves1@paginegialle.it', '886730172-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (371, 'dtolomeit@vk.com', '349330131-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (372, 'oskoulinga@gravatar.com', '273177602-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (373, 'whubbert5z@mashable.com', '055458067-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (374, 'cwatford1v@wordpress.org', '932475725-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (375, 'iklasing4w@php.net', '560781563-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (376, 'umattaser2q@vkontakte.ru', '560781563-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (377, 'erushton4b@amazon.co.jp', '680805713-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (378, 'cmcfeat5m@yahoo.co.jp', '168115051-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (379, 'dbrandle36@examiner.com', '532243709-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (380, 'ade6o@wikimedia.org', '494723217-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (381, 'adebruyne4e@mashable.com', '708617794-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (382, 'jcarmichael46@whitehouse.gov', '933151684-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (383, 'doxtiby6s@cnbc.com', '521735461-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (384, 'fabbatini3o@omniture.com', '984908053-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (385, 'dgreve2t@google.com.hk', '339348822-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (386, 'jlorrain14@dion.ne.jp', '392919280-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (387, 'bhullin1m@census.gov', '435361424-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (388, 'callgood3d@opensource.org', '797991817-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (389, 'gleppingwell6t@newsvine.com', '200134920-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (390, 'vpenwarden17@china.com.cn', '049149534-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (391, 'llehrle6m@nsw.gov.au', '226995063-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (392, 'hbetjeman3h@gov.uk', '889207288-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (393, 'ascruton23@home.pl', '834369229-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (394, 'enajara1l@ycombinator.com', '049149534-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (395, 'dgreve2t@google.com.hk', '804430979-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (396, 'chillaby4l@cam.ac.uk', '809250742-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (397, 'mferraresi5x@yahoo.com', '232333651-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (398, 'sfolley65@pinterest.com', '400088677-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (399, 'smccahill13@msn.com', '379568142-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (400, 'gmunkley5j@themeforest.net', '903882619-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (401, 'fcraigmile1e@fc2.com', '651466403-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (402, 'alawrence1c@webeden.co.uk', '329416658-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (403, 'jgallichiccio4f@1688.com', '905399284-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (404, 'shabbeshawi@typepad.com', '812908378-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (405, 'srozsa1n@archive.org', '349173947-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (406, 'skures5t@nyu.edu', '560781563-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (407, 'ehasney5p@smh.com.au', '033191203-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (408, 'rdaybell4x@gmpg.org', '012573390-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (409, 'dbeadnell3p@cargocollective.com', '924502256-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (410, 'dbeadnell3p@cargocollective.com', '274720391-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (411, 'evivien26@geocities.jp', '435361424-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (412, 'eabbey11@cornell.edu', '924502256-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (413, 'egokes5y@blogs.com', '568276930-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (414, 'rfallis2l@epa.gov', '945918848-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (415, 'smarmon6@vistaprint.com', '253421158-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (416, 'smarmon6@vistaprint.com', '905399284-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (417, 'ftuison5k@smh.com.au', '920661357-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (418, 'kscroggie3s@hibu.com', '546357952-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (419, 'sillingsworth6c@cmu.edu', '637657825-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (420, 'mhardbattle6k@g.co', '326165997-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (421, 'plambarth9@digg.com', '339348822-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (422, 'smonks2g@kickstarter.com', '779523141-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (423, 'cbacop6v@hao123.com', '804245477-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (424, 'oforgan29@nature.com', '125704596-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (425, 'amagowan3x@howstuffworks.com', '788626786-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (426, 'mpressland3n@slashdot.org', '062109822-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (427, 'whubbert5z@mashable.com', '301768357-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (428, 'hstrathe63@sbwire.com', '796580315-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (429, 'jgallichiccio4f@1688.com', '546357952-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (430, 'mjesteco1y@booking.com', '496223091-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (431, 'kboorne48@themeforest.net', '348057019-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (432, 'rprinnett56@msu.edu', '289164072-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (433, 'lleathes2j@rakuten.co.jp', '578416852-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (434, 'ltuxwell6i@hostgator.com', '799712104-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (435, 'jconkiel@multiply.com', '720455977-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (436, 'acheetam3k@va.gov', '326731155-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (437, 'sharte6x@csmonitor.com', '288228019-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (438, 'vpenwarden17@china.com.cn', '614189703-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (439, 'ahenrys3l@4shared.com', '070087873-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (440, 'wchoake51@studiopress.com', '437077584-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (441, 'cwatford1v@wordpress.org', '546534789-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (442, 'gmacbean6b@is.gd', '916193377-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (443, 'dwife2y@phpbb.com', '349173947-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (444, 'neuplate69@pagesperso-orange.fr', '654117020-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (445, 'tcastanos6a@redcross.org', '359496499-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (446, 'cwanek3f@elegantthemes.com', '905399284-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (447, 'rfallis2l@epa.gov', '332485487-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (448, 'jtarbin2i@boston.com', '600090633-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (449, 'ggiottoi1f@facebook.com', '125704596-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (450, 'ejoplinj@techcrunch.com', '813672755-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (451, 'rsnarr47@networksolutions.com', '713726123-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (452, 'mwhiteford3z@cornell.edu', '059906440-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (453, 'rmerryman5g@admin.ch', '567049390-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (454, 'hhartup3m@rambler.ru', '618186888-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (455, 'xbrannx@soup.io', '163739070-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (456, 'jbramall4u@sbwire.com', '595526640-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (457, 'jrizon1d@npr.org', '922743000-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (458, 'bchatelet21@blogtalkradio.com', '373833352-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (459, 'eabbey11@cornell.edu', '208851355-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (460, 'cballston2c@go.com', '634774350-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (461, 'smajury2d@va.gov', '913616867-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (462, 'prawstorn2a@nytimes.com', '433346207-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (463, 'ascruton23@home.pl', '246550660-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (464, 'twoodfin1k@tiny.cc', '125704596-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (465, 'cmcgilmartin1o@whitehouse.gov', '607877822-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (466, 'gmacbean6b@is.gd', '388053663-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (467, 'sdorkins5h@hhs.gov', '519454738-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (468, 'acoote3b@uol.com.br', '025428193-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (469, 'jhowford3q@wordpress.org', '809334023-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (470, 'egokes5y@blogs.com', '741644622-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (471, 'emundie35@soup.io', '400088677-0');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (472, 'sianitti1i@ocn.ne.jp', '055458067-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (473, 'scoulthard8@baidu.com', '920661357-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (474, 'pgadd0@gov.uk', '809581611-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (475, 'mocrevan3a@smh.com.au', '255096780-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (476, 'adebruyne4e@mashable.com', '019561007-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (477, 'rdyment31@naver.com', '531182103-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (478, 'msimecek1t@huffingtonpost.com', '634774350-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (479, 'mfatkin4i@netscape.com', '825307248-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (480, 'npavelka5n@blogspot.com', '812908378-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (481, 'ascruton23@home.pl', '301768357-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (482, 'dacremanh@nba.com', '779017789-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (483, 'asallnow6r@columbia.edu', '692043203-X');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (484, 'ckamiyama25@stanford.edu', '111189791-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (485, 'jgallichiccio4f@1688.com', '255189015-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (486, 'rdaybell4x@gmpg.org', '023049136-7');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (487, 'santhonies1j@homestead.com', '850553356-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (488, 'mhort39@howstuffworks.com', '841058014-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (489, 'hcoughlin5b@bravesites.com', '984908053-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (490, 'gleppingwell6t@newsvine.com', '945918848-6');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (491, 'tcastanos6a@redcross.org', '996146139-8');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (492, 'cwilkins5f@delicious.com', '153542927-5');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (493, 'jtarbin2i@boston.com', '680805713-3');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (494, 'bwyd32@bizjournals.com', '392919280-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (495, 'banthillq@etsy.com', '449296180-1');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (496, 'cwatford1v@wordpress.org', '987599799-4');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (497, 'npasque2z@seesaa.net', '714974033-2');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (498, 'dtilling42@addthis.com', '804430979-9');
INSERT INTO public.shopping_cart (item_id, username, isbn) VALUES (499, 'psulter5l@creativecommons.org', '400088677-0');


--
-- TOC entry 3014 (class 0 OID 17740)
-- Dependencies: 201
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (username, password, name, email, address) VALUES ('pgadd0@gov.uk', 'rkgwe0R', 'Phaidra Gadd', 'pgadd0@nsw.gov.au', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('mgroves1@paginegialle.it', 'C7yzEI3pI', NULL, NULL, '5 Porter Circle');
INSERT INTO public.users (username, password, name, email, address) VALUES ('adevey2@360.cn', 'jvooNCMvHF', 'Agustin Devey', 'adevey2@imdb.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('bwainer3@state.tx.us', 'bDlamh', 'Blondy Wainer', 'bwainer3@sourceforge.net', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('bbarszczewski4@hhs.gov', 'rGrHVd', 'Bron Barszczewski', 'bbarszczewski4@vistaprint.com', '02214 Springs Center');
INSERT INTO public.users (username, password, name, email, address) VALUES ('mharmson5@pcworld.com', 'Qjzcft', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('smarmon6@vistaprint.com', '83WwaGPpx3F9', 'Sheri Marmon', 'smarmon6@opensource.org', '71648 Mallory Drive');
INSERT INTO public.users (username, password, name, email, address) VALUES ('kghio7@chicagotribune.com', 'QDixsQ', 'Karlens Ghio', 'kghio7@shop-pro.jp', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('scoulthard8@baidu.com', 'YhOTtoxBlh', NULL, NULL, '7 Erie Point');
INSERT INTO public.users (username, password, name, email, address) VALUES ('plambarth9@digg.com', 'w2vHAXcgjCTI', 'Patsy Lambarth', 'plambarth9@webs.com', '82 Barby Drive');
INSERT INTO public.users (username, password, name, email, address) VALUES ('oskoulinga@gravatar.com', 'x7c25xRUCwZ', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('gthompstoneb@phoca.cz', 'Vz8sHGGH2iuy', 'Giulia Thompstone', 'gthompstoneb@amazon.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('mbettensonc@php.net', '0HnbdTnGA', 'Marigold Bettenson', 'mbettensonc@pcworld.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('mstanfieldd@flickr.com', 'ly8OhBI', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('achafneye@google.it', 'eLf9mF2', 'Armand Chafney', 'achafneye@amazonaws.com', '2382 Anhalt Crossing');
INSERT INTO public.users (username, password, name, email, address) VALUES ('adegoeyf@stanford.edu', 'aXTPmj6', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('acanfieldg@canalblog.com', '9RyWsT8Fl', 'Artair Canfield', 'acanfieldg@behance.net', '5793 Charing Cross Court');
INSERT INTO public.users (username, password, name, email, address) VALUES ('dacremanh@nba.com', '1v57EChUK8', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('shabbeshawi@typepad.com', 'B7WMr8gPf', NULL, NULL, '912 Cambridge Trail');
INSERT INTO public.users (username, password, name, email, address) VALUES ('ejoplinj@techcrunch.com', 'fglos7QOIU4Y', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('elarawayk@goo.ne.jp', 'RvLBMv9LxAH', 'Emmi Laraway', 'elarawayk@ibm.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('jconkiel@multiply.com', 'U48neBlXTfS8', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('wmedlinm@i2i.jp', 's5tfSnXI6n', NULL, NULL, '43120 Jenifer Plaza');
INSERT INTO public.users (username, password, name, email, address) VALUES ('mheersn@imgur.com', 'w0Vstb1Q', 'Mohandis Heers', 'mheersn@ihg.com', '6 Eagan Place');
INSERT INTO public.users (username, password, name, email, address) VALUES ('bcripino@si.edu', 'Bt6hdIU', 'Barnaby Cripin', 'bcripino@tinyurl.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('mbeddingp@indiatimes.com', 'cif4l4FQJ8', 'Miner Bedding', 'mbeddingp@wikimedia.org', '2 Talmadge Terrace');
INSERT INTO public.users (username, password, name, email, address) VALUES ('banthillq@etsy.com', 'eSv7rS', 'Barnie Anthill', 'banthillq@comsenz.com', '29 Cottonwood Circle');
INSERT INTO public.users (username, password, name, email, address) VALUES ('kkegleyr@booking.com', 'BeupZEV', 'Kacey Kegley', 'kkegleyr@wunderground.com', '00 Lake View Terrace');
INSERT INTO public.users (username, password, name, email, address) VALUES ('kjorckes@bandcamp.com', 'f2n0tG', NULL, NULL, '20217 Dawn Parkway');
INSERT INTO public.users (username, password, name, email, address) VALUES ('dtolomeit@vk.com', 'g93jKay1A', 'Donnamarie Tolomei', 'dtolomeit@intel.com', '90009 Cottonwood Center');
INSERT INTO public.users (username, password, name, email, address) VALUES ('hworkmanu@wordpress.com', 'zZQ0Sj', 'Herb Workman', 'hworkmanu@rambler.ru', '075 Melby Street');
INSERT INTO public.users (username, password, name, email, address) VALUES ('mrickmanv@deviantart.com', 'HxyXKP', 'Melitta Rickman', 'mrickmanv@ftc.gov', '0559 Mccormick Trail');
INSERT INTO public.users (username, password, name, email, address) VALUES ('mkidsleyw@domainmarket.com', 'l12ynEGU', 'Madalyn Kidsley', 'mkidsleyw@nature.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('xbrannx@soup.io', 'xUutzeyr2PKb', 'Xever Brann', 'xbrannx@instagram.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('rheady@hc360.com', 'HBBAaBr6', NULL, NULL, '5911 Cherokee Trail');
INSERT INTO public.users (username, password, name, email, address) VALUES ('aelsez@telegraph.co.uk', '73VKfO6P', 'Adolpho Else', 'aelsez@google.pl', '7 Boyd Street');
INSERT INTO public.users (username, password, name, email, address) VALUES ('kdunbobbin10@businessweek.com', '4TMfVGPF4AQ', 'Kipper Dunbobbin', 'kdunbobbin10@cmu.edu', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('eabbey11@cornell.edu', 'X7j34RhVo2', 'Ezmeralda Abbey', 'eabbey11@reverbnation.com', '111 Blackbird Junction');
INSERT INTO public.users (username, password, name, email, address) VALUES ('rharteley12@flickr.com', 'JyMkoSP0xV', NULL, NULL, '6 Corry Plaza');
INSERT INTO public.users (username, password, name, email, address) VALUES ('smccahill13@msn.com', 'FZtsr6', 'Sholom McCahill', 'smccahill13@123-reg.co.uk', '5 Harbort Street');
INSERT INTO public.users (username, password, name, email, address) VALUES ('jlorrain14@dion.ne.jp', 'mx2E9s', NULL, NULL, '4 Fordem Avenue');
INSERT INTO public.users (username, password, name, email, address) VALUES ('lbrightman15@cornell.edu', '3ybE5nPuPR', 'Leonelle Brightman', 'lbrightman15@washington.edu', '7425 Glacier Hill Way');
INSERT INTO public.users (username, password, name, email, address) VALUES ('wbenitez16@blogs.com', 'yvBKjP', 'Willy Benitez', 'wbenitez16@omniture.com', '7 Glacier Hill Trail');
INSERT INTO public.users (username, password, name, email, address) VALUES ('vpenwarden17@china.com.cn', '7x1HlyMN', 'Virgilio Penwarden', 'vpenwarden17@virginia.edu', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('cwagg18@miibeian.gov.cn', '5SVE4AA', NULL, NULL, '47479 Lighthouse Bay Court');
INSERT INTO public.users (username, password, name, email, address) VALUES ('cblondel19@sohu.com', 'jKofr8x', 'Cybil Blondel', 'cblondel19@tinypic.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('rdurbyn1a@army.mil', 'oPtfY5qj', 'Reiko Durbyn', 'rdurbyn1a@1und1.de', '8687 Sunbrook Court');
INSERT INTO public.users (username, password, name, email, address) VALUES ('mcarwithen1b@zimbio.com', 'BHr40ut', NULL, NULL, '555 Oriole Plaza');
INSERT INTO public.users (username, password, name, email, address) VALUES ('alawrence1c@webeden.co.uk', 'zz9hNr', 'Angela Lawrence', 'alawrence1c@gnu.org', '7 Village Park');
INSERT INTO public.users (username, password, name, email, address) VALUES ('jrizon1d@npr.org', 'kSDmndaQh', 'Jessica Rizon', 'jrizon1d@g.co', '43347 Onsgard Avenue');
INSERT INTO public.users (username, password, name, email, address) VALUES ('fcraigmile1e@fc2.com', 'Rtt5x0', NULL, NULL, '5 Blue Bill Park Point');
INSERT INTO public.users (username, password, name, email, address) VALUES ('ggiottoi1f@facebook.com', 'OYesJYMsTU', 'Gallard Giottoi', 'ggiottoi1f@ifeng.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('csavine1g@independent.co.uk', 'DoLt4WUec', 'Candie Savine', 'csavine1g@ow.ly', '1999 Kensington Junction');
INSERT INTO public.users (username, password, name, email, address) VALUES ('saharoni1h@tumblr.com', 'FayJpuX6OK', 'Sonny Aharoni', 'saharoni1h@craigslist.org', '26 Sutherland Junction');
INSERT INTO public.users (username, password, name, email, address) VALUES ('sianitti1i@ocn.ne.jp', 'FNatRt', 'Sarge Ianitti', 'sianitti1i@google.es', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('santhonies1j@homestead.com', '83T5P4KinvUs', NULL, NULL, '7 Larry Street');
INSERT INTO public.users (username, password, name, email, address) VALUES ('twoodfin1k@tiny.cc', 'kAtvyW', 'Tremayne Woodfin', 'twoodfin1k@mozilla.org', '55 Shoshone Road');
INSERT INTO public.users (username, password, name, email, address) VALUES ('enajara1l@ycombinator.com', '2q2O4D0rlq', 'Eden Najara', 'enajara1l@reference.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('bhullin1m@census.gov', 'mqncOtViW', NULL, NULL, '0 Golf Course Court');
INSERT INTO public.users (username, password, name, email, address) VALUES ('srozsa1n@archive.org', 'C8GIM17', 'Sheilah Rozsa', 'srozsa1n@ezinearticles.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('cmcgilmartin1o@whitehouse.gov', 'csCGgnzAhY', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('akeener1p@wisc.edu', 'e9bkH3h85Wq', NULL, NULL, '76136 Charing Cross Court');
INSERT INTO public.users (username, password, name, email, address) VALUES ('gbloodworthe1q@oakley.com', 'bSxYVDXa82', 'Geneva Bloodworthe', 'gbloodworthe1q@about.me', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('wackenson1r@walmart.com', 'jEVnoiQp3YM1', 'Winni Ackenson', 'wackenson1r@census.gov', '98696 Bartillon Alley');
INSERT INTO public.users (username, password, name, email, address) VALUES ('mpurdon1s@quantcast.com', 'BcVuPh5TBmfq', 'Marcellus Purdon', 'mpurdon1s@sogou.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('msimecek1t@huffingtonpost.com', 'UL0vnPNmu', 'Mac Simecek', 'msimecek1t@thetimes.co.uk', '4033 Westerfield Terrace');
INSERT INTO public.users (username, password, name, email, address) VALUES ('rpapis1u@cocolog-nifty.com', 'B8wvJXiw3J', 'Reba Papis', 'rpapis1u@mit.edu', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('cwatford1v@wordpress.org', 'ap3pRG', NULL, NULL, '6 Miller Center');
INSERT INTO public.users (username, password, name, email, address) VALUES ('fgroombridge1w@engadget.com', 'tjLB7aoY', 'Frederique Groombridge', 'fgroombridge1w@mysql.com', '1168 Eagan Way');
INSERT INTO public.users (username, password, name, email, address) VALUES ('eblandford1x@seesaa.net', 'NDTnNKdLnIl', NULL, NULL, '19924 Utah Avenue');
INSERT INTO public.users (username, password, name, email, address) VALUES ('mjesteco1y@booking.com', 'KKX2jGpblw', NULL, NULL, '87 Washington Terrace');
INSERT INTO public.users (username, password, name, email, address) VALUES ('hsweeney1z@indiatimes.com', '4jXerDn', 'Hesther Sweeney', 'hsweeney1z@gov.uk', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('lmar20@fema.gov', '8o00Yxapdpl', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('bchatelet21@blogtalkradio.com', 'wcXE4dw', 'Bale Chatelet', 'bchatelet21@fema.gov', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('lbeadon22@mtv.com', 'pIRfD6wsi', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('ascruton23@home.pl', '6zx1gTCAukp0', 'Adria Scruton', 'ascruton23@networkadvertising.org', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('cgrzesiewicz24@gizmodo.com', 'aXT1eNSKyr7', 'Claribel Grzesiewicz', 'cgrzesiewicz24@spiegel.de', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('ckamiyama25@stanford.edu', '93OadYQqpjj', 'Cassandry Kamiyama', 'ckamiyama25@cbc.ca', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('evivien26@geocities.jp', '94dNJc', 'Estel Vivien', 'evivien26@clickbank.net', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('dnewvill27@sitemeter.com', 'AxW0WxV', 'Dawn Newvill', 'dnewvill27@cargocollective.com', '81 Mendota Point');
INSERT INTO public.users (username, password, name, email, address) VALUES ('kfotheringham28@gnu.org', '4glYyCLvBnw', 'Katrina Fotheringham', 'kfotheringham28@ebay.co.uk', '28305 Oakridge Center');
INSERT INTO public.users (username, password, name, email, address) VALUES ('rpaireman6n@pen.io', 'ot0yWUZ', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('oforgan29@nature.com', 'U1GG0SQf0kIh', 'Orel Forgan', 'oforgan29@phpbb.com', '81 Waubesa Street');
INSERT INTO public.users (username, password, name, email, address) VALUES ('prawstorn2a@nytimes.com', 'hHuGMJFmF', 'Prentice Rawstorn', 'prawstorn2a@tinypic.com', '205 North Alley');
INSERT INTO public.users (username, password, name, email, address) VALUES ('wtether2b@hc360.com', 'VdABVqx84c0', 'Waneta Tether', 'wtether2b@tinyurl.com', '4056 Blue Bill Park Lane');
INSERT INTO public.users (username, password, name, email, address) VALUES ('cballston2c@go.com', 'wRGMeFV', 'Conn Ballston', 'cballston2c@gizmodo.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('smajury2d@va.gov', 'B3OlRFeLd', 'Saleem Majury', 'smajury2d@toplist.cz', '09695 Jenna Center');
INSERT INTO public.users (username, password, name, email, address) VALUES ('amarte2e@umich.edu', 'JfnQh4uJNM', 'Anne Marte', 'amarte2e@hhs.gov', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('cgrolle2f@com.com', '4s6j9x', 'Caryn Grolle', 'cgrolle2f@bbc.co.uk', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('smonks2g@kickstarter.com', 'cckkmj', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('eohallihane2h@oaic.gov.au', 'sSMGbF4HKho', 'Emory O''Hallihane', 'eohallihane2h@mapquest.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('jtarbin2i@boston.com', 'BA3A4I79AoX', 'Julian Tarbin', 'jtarbin2i@stanford.edu', '26 American Ash Park');
INSERT INTO public.users (username, password, name, email, address) VALUES ('lleathes2j@rakuten.co.jp', '5OET1QEo4', 'Liz Leathes', 'lleathes2j@umich.edu', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('bspinola2k@edublogs.org', 'PV5ywgp', NULL, NULL, '10 Warner Circle');
INSERT INTO public.users (username, password, name, email, address) VALUES ('rfallis2l@epa.gov', 'XAoRvmc4', 'Ravi Fallis', 'rfallis2l@cbc.ca', '454 Iowa Pass');
INSERT INTO public.users (username, password, name, email, address) VALUES ('tgruszczak2m@topsy.com', 'buMdTO9d8wp6', 'Toby Gruszczak', 'tgruszczak2m@deliciousdays.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('cduffie2n@howstuffworks.com', 'ZqRYxpcUw', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('bbowe2o@patch.com', '80CTjNg3eN7', NULL, NULL, '49 Vera Terrace');
INSERT INTO public.users (username, password, name, email, address) VALUES ('vbuxey2p@patch.com', 'RuEf6eNKc', 'Valentia Buxey', 'vbuxey2p@businessinsider.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('umattaser2q@vkontakte.ru', 'UxWNoZsXE', NULL, NULL, '6 Sunnyside Point');
INSERT INTO public.users (username, password, name, email, address) VALUES ('soroan2r@google.com.au', '4pf8dQIm', 'Sloane O''Roan', 'soroan2r@smh.com.au', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('hminichi2s@yellowpages.com', 'kyJNP3pkNxt', 'Hilde Minichi', 'hminichi2s@drupal.org', '636 Mendota Drive');
INSERT INTO public.users (username, password, name, email, address) VALUES ('dgreve2t@google.com.hk', 'SEBgOM', 'D''arcy Greve', 'dgreve2t@forbes.com', '48 Morning Circle');
INSERT INTO public.users (username, password, name, email, address) VALUES ('esobey2u@si.edu', 'Dmqljua', NULL, NULL, '60 Starling Place');
INSERT INTO public.users (username, password, name, email, address) VALUES ('adomokos2v@amazon.co.jp', 'CfieGym', 'Allina Domokos', 'adomokos2v@go.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('nsmitherman2w@examiner.com', 'Vrj5Jz3mJ', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('kitzchaki2x@uol.com.br', 'DFxgoM5g6ZDT', 'Karoly Itzchaki', 'kitzchaki2x@hexun.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('dwife2y@phpbb.com', 'ZAd2ibQlmJ', 'Deb Wife', 'dwife2y@nasa.gov', '47 Mayer Road');
INSERT INTO public.users (username, password, name, email, address) VALUES ('npasque2z@seesaa.net', 'HmbKF3', 'Noreen Pasque', 'npasque2z@cisco.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('mlegrys30@illinois.edu', 'U1dQZoCXe', NULL, NULL, '8 Hallows Park');
INSERT INTO public.users (username, password, name, email, address) VALUES ('rdyment31@naver.com', '2YFRDd2k', 'Rube Dyment', 'rdyment31@kickstarter.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('bwyd32@bizjournals.com', '4aBKYCeI', 'Bastien Wyd', 'bwyd32@histats.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('adobson33@mozilla.com', 'gRmXj5', 'Ado Dobson', 'adobson33@sun.com', '6260 Knutson Plaza');
INSERT INTO public.users (username, password, name, email, address) VALUES ('mgreenhead34@simplemachines.org', 'X0zR9DK', 'Mikkel Greenhead', 'mgreenhead34@prlog.org', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('emundie35@soup.io', 'AkeF2n3mdqB', 'Elora Mundie', 'emundie35@indiatimes.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('dbrandle36@examiner.com', 'KHVmKscjYA', 'Deeanne Brandle', 'dbrandle36@abc.net.au', '85129 Mcbride Drive');
INSERT INTO public.users (username, password, name, email, address) VALUES ('bnind37@goodreads.com', 's4CmuVp7oc', NULL, NULL, '1069 Norway Maple Junction');
INSERT INTO public.users (username, password, name, email, address) VALUES ('mbattista38@netlog.com', '22Zh6HDx', 'Mariquilla Battista', 'mbattista38@tumblr.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('mhort39@howstuffworks.com', 'DIKl8L0S2c', 'Madalyn Hort', 'mhort39@fda.gov', '66 Westridge Park');
INSERT INTO public.users (username, password, name, email, address) VALUES ('mocrevan3a@smh.com.au', 'dPQKaNG9', 'Milzie O''Crevan', 'mocrevan3a@timesonline.co.uk', '39 Memorial Crossing');
INSERT INTO public.users (username, password, name, email, address) VALUES ('acoote3b@uol.com.br', '67ZSeR3Ew4l7', 'Alick Coote', 'acoote3b@chron.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('adymidowski3c@cbsnews.com', 'lwoCRh6LGD', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('callgood3d@opensource.org', 'oeM9m1m8', NULL, NULL, '5 Rowland Court');
INSERT INTO public.users (username, password, name, email, address) VALUES ('eboler3e@va.gov', 'FdHyYxJ', NULL, NULL, '188 Arkansas Terrace');
INSERT INTO public.users (username, password, name, email, address) VALUES ('cwanek3f@elegantthemes.com', 'XsaNKVx', 'Cornelia Wanek', 'cwanek3f@nymag.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('aterrill3g@yahoo.co.jp', 'vjjWwHf3xjAA', 'Ardelis Terrill', 'aterrill3g@amazon.co.uk', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('hbetjeman3h@gov.uk', 'd3PrAz2', 'Heloise Betjeman', 'hbetjeman3h@github.io', '6 Mallard Circle');
INSERT INTO public.users (username, password, name, email, address) VALUES ('ccarn3i@seattletimes.com', 'HYjUacD0c', 'Caril Carn', 'ccarn3i@jalbum.net', '447 Pond Parkway');
INSERT INTO public.users (username, password, name, email, address) VALUES ('wives3j@youku.com', 'EjkgzFxHHV', 'Wallas Ives', 'wives3j@bloglovin.com', '75 Basil Hill');
INSERT INTO public.users (username, password, name, email, address) VALUES ('acheetam3k@va.gov', 'tS9Q7zdJ', 'Algernon Cheetam', 'acheetam3k@slate.com', '2 Delaware Crossing');
INSERT INTO public.users (username, password, name, email, address) VALUES ('ahenrys3l@4shared.com', 'fhuvl3c', NULL, NULL, '886 Monica Court');
INSERT INTO public.users (username, password, name, email, address) VALUES ('hhartup3m@rambler.ru', '9C2ka0', 'Herby Hartup', 'hhartup3m@google.de', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('mpressland3n@slashdot.org', 'kQ27o69WNoUX', 'Matthus Pressland', 'mpressland3n@devhub.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('fabbatini3o@omniture.com', 'NHjcjUGlQ', 'Ferris Abbatini', 'fabbatini3o@unc.edu', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('dbeadnell3p@cargocollective.com', '1GgaBgtoJlA4', 'Danika Beadnell', 'dbeadnell3p@cisco.com', '5 Rigney Alley');
INSERT INTO public.users (username, password, name, email, address) VALUES ('jhowford3q@wordpress.org', '4LBr9ORSt', 'Jase Howford', 'jhowford3q@purevolume.com', '9 Norway Maple Hill');
INSERT INTO public.users (username, password, name, email, address) VALUES ('dwaterson3r@1688.com', 'c7XyNN', 'Darbee Waterson', 'dwaterson3r@si.edu', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('kscroggie3s@hibu.com', '1m1QuCYazBZ', 'Karilynn Scroggie', 'kscroggie3s@youku.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('tneads3t@state.tx.us', 'Q0xDyN1m4', 'Thatcher Neads', 'tneads3t@deliciousdays.com', '415 Acker Place');
INSERT INTO public.users (username, password, name, email, address) VALUES ('ngillaspy3u@163.com', 'rx0FWy9lmh', 'Ned Gillaspy', 'ngillaspy3u@sakura.ne.jp', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('jzappel3v@java.com', 'NjsoZGXOxK3B', 'Jacenta Zappel', 'jzappel3v@shareasale.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('jnewton3w@mashable.com', 'iuSXLGxtAWfB', 'Jarib Newton', 'jnewton3w@mayoclinic.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('amagowan3x@howstuffworks.com', 'k86Y8RfT27', 'Alys Magowan', 'amagowan3x@timesonline.co.uk', '24897 Bayside Terrace');
INSERT INTO public.users (username, password, name, email, address) VALUES ('tkesten3y@uiuc.edu', 'jNEeeN', 'Thelma Kesten', 'tkesten3y@ezinearticles.com', '33986 Straubel Circle');
INSERT INTO public.users (username, password, name, email, address) VALUES ('mwhiteford3z@cornell.edu', 'q6qTshzI9hJ2', 'Marlena Whiteford', 'mwhiteford3z@hud.gov', '1926 Daystar Circle');
INSERT INTO public.users (username, password, name, email, address) VALUES ('wwicks40@woothemes.com', 'BMRdDYT74R5T', NULL, NULL, '09 Sugar Crossing');
INSERT INTO public.users (username, password, name, email, address) VALUES ('dgillaspy41@etsy.com', 'jzFQi1', 'Dougie Gillaspy', 'dgillaspy41@cornell.edu', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('dtilling42@addthis.com', 'jXwftR3YL', NULL, NULL, '9 Reindahl Street');
INSERT INTO public.users (username, password, name, email, address) VALUES ('ocampagne43@w3.org', '0VdpRYTHR', 'Orin Campagne', 'ocampagne43@uiuc.edu', '17 Canary Crossing');
INSERT INTO public.users (username, password, name, email, address) VALUES ('fliversage44@marketwatch.com', 'aItzdOODnh', 'Friedrich Liversage', 'fliversage44@unc.edu', '054 Onsgard Court');
INSERT INTO public.users (username, password, name, email, address) VALUES ('cgollin45@ebay.co.uk', 'kjtMrttBYS1J', 'Carey Gollin', 'cgollin45@mtv.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('jcarmichael46@whitehouse.gov', 'fKuLld', 'John Carmichael', 'jcarmichael46@cafepress.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('rsnarr47@networksolutions.com', '7Vb3Lg', 'Rhett Snarr', 'rsnarr47@google.it', '83 Coolidge Parkway');
INSERT INTO public.users (username, password, name, email, address) VALUES ('kboorne48@themeforest.net', 'sXScPhQPKf', 'Kalila Boorne', 'kboorne48@psu.edu', '12009 Oneill Avenue');
INSERT INTO public.users (username, password, name, email, address) VALUES ('esygrove49@biblegateway.com', 'jM8Tsz', 'Ettie Sygrove', 'esygrove49@google.com.br', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('ojedrachowicz4a@xinhuanet.com', '3J6bbLzo', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('erushton4b@amazon.co.jp', '6uqrOjfxI', 'Ernie Rushton', 'erushton4b@prlog.org', '2 Hooker Terrace');
INSERT INTO public.users (username, password, name, email, address) VALUES ('abagehot4c@google.cn', 'yO5qPjyKjxLn', 'Alyse Bagehot', 'abagehot4c@netscape.com', '2278 Schmedeman Park');
INSERT INTO public.users (username, password, name, email, address) VALUES ('khuntley4d@senate.gov', '6M3EMIPl0N93', 'Karon Huntley', 'khuntley4d@list-manage.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('adebruyne4e@mashable.com', 'fgcZzw3E7N', NULL, NULL, '881 Marcy Center');
INSERT INTO public.users (username, password, name, email, address) VALUES ('jgallichiccio4f@1688.com', 'F2g7SfNBYyf', 'Justino Gallichiccio', 'jgallichiccio4f@youku.com', '3932 Amoth Center');
INSERT INTO public.users (username, password, name, email, address) VALUES ('atice4g@independent.co.uk', 'XPva7j', NULL, NULL, '8 Coolidge Trail');
INSERT INTO public.users (username, password, name, email, address) VALUES ('smorforth4h@yolasite.com', 'EGbiZb7cn2gL', 'Silva Morforth', 'smorforth4h@ox.ac.uk', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('mfatkin4i@netscape.com', '6sjrVtkcN', 'Morty Fatkin', 'mfatkin4i@meetup.com', '2303 Hintze Park');
INSERT INTO public.users (username, password, name, email, address) VALUES ('cmarkie4j@upenn.edu', 'GFN0AgsM', NULL, NULL, '6 West Plaza');
INSERT INTO public.users (username, password, name, email, address) VALUES ('kkail4k@ibm.com', 'NIKyCy2t', NULL, NULL, '26 Anderson Center');
INSERT INTO public.users (username, password, name, email, address) VALUES ('chillaby4l@cam.ac.uk', 'ZE9O3Dg0UU', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('cjillins4m@is.gd', '6M0NvN0N', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('jnobbs4n@mayoclinic.com', 'oX5pJ3Ox3C4', 'Josee Nobbs', 'jnobbs4n@artisteer.com', '13 1st Junction');
INSERT INTO public.users (username, password, name, email, address) VALUES ('pauger4o@apple.com', 'tBADEmfkD', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('rdelafoy4p@ftc.gov', 'HeV4Oq7vSf', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('fwileman4q@cbslocal.com', 'P0Ti3wrn', 'Fair Wileman', 'fwileman4q@squidoo.com', '90 Village Green Drive');
INSERT INTO public.users (username, password, name, email, address) VALUES ('fmacnaughton4r@csmonitor.com', 'eubeCMY', 'Freida MacNaughton', 'fmacnaughton4r@google.com.au', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('bkleinhausen4s@eepurl.com', 'eyJA8o7', 'Billi Kleinhausen', 'bkleinhausen4s@people.com.cn', '05511 Basil Center');
INSERT INTO public.users (username, password, name, email, address) VALUES ('hhalsworth4t@woothemes.com', 'PDejESDdK', 'Hector Halsworth', 'hhalsworth4t@spiegel.de', '7 Kensington Court');
INSERT INTO public.users (username, password, name, email, address) VALUES ('jbramall4u@sbwire.com', 'iFiA0OXRfqk', 'Judith Bramall', 'jbramall4u@prweb.com', '4 Bobwhite Trail');
INSERT INTO public.users (username, password, name, email, address) VALUES ('vde4v@washingtonpost.com', 'Yxe9OBe', 'Vinnie De Filippo', 'vde4v@bravesites.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('iklasing4w@php.net', 'XCeUmV2Pc96Q', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('rdaybell4x@gmpg.org', 'hVsfi0yuQWr', NULL, NULL, '265 Butterfield Street');
INSERT INTO public.users (username, password, name, email, address) VALUES ('aalsop4y@yellowpages.com', 'k8yIuIG7', 'Aldon Alsop', 'aalsop4y@microsoft.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('froyden4z@walmart.com', 'aUbf0TYr4u7', NULL, NULL, '26528 Oak Terrace');
INSERT INTO public.users (username, password, name, email, address) VALUES ('gwiltshire50@sourceforge.net', '5wKzHy', 'Gennie Wiltshire', 'gwiltshire50@com.com', '8872 Manitowish Junction');
INSERT INTO public.users (username, password, name, email, address) VALUES ('wchoake51@studiopress.com', 'R3hgg4ZnME', 'Willyt Choake', 'wchoake51@miibeian.gov.cn', '18614 Forster Lane');
INSERT INTO public.users (username, password, name, email, address) VALUES ('hearngy52@wikia.com', 'FCKpqbB9lEB', 'Hephzibah Earngy', 'hearngy52@e-recht24.de', '64626 Havey Crossing');
INSERT INTO public.users (username, password, name, email, address) VALUES ('lgreaves53@ibm.com', 'wPI1dxeJT', 'Lyda Greaves', 'lgreaves53@oracle.com', '0 5th Hill');
INSERT INTO public.users (username, password, name, email, address) VALUES ('fbockh54@clickbank.net', 'VNvQYtysbf01', 'Forbes Bockh', 'fbockh54@pen.io', '9609 Lyons Hill');
INSERT INTO public.users (username, password, name, email, address) VALUES ('jvosse55@fc2.com', 'Z0b7HdJCWfI', 'Jamison Vosse', 'jvosse55@springer.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('rprinnett56@msu.edu', 'SxsGhVaZ', 'Rayna Prinnett', 'rprinnett56@earthlink.net', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('kneal57@hud.gov', '5lZpQULZRSvL', 'Kimmie Neal', 'kneal57@nifty.com', '7 Rowland Center');
INSERT INTO public.users (username, password, name, email, address) VALUES ('tattreed58@google.es', 'zD6MvBs', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('lpatsall59@xrea.com', 'bmMNiy', 'Leela Patsall', 'lpatsall59@wikia.com', '6 Derek Court');
INSERT INTO public.users (username, password, name, email, address) VALUES ('amamwell5a@addthis.com', 'Vd0oQiNN', 'Andonis Mamwell', 'amamwell5a@sourceforge.net', '57 Shasta Park');
INSERT INTO public.users (username, password, name, email, address) VALUES ('hcoughlin5b@bravesites.com', '8R60tVR', 'Harriette Coughlin', 'hcoughlin5b@photobucket.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('qtuckwood5c@dyndns.org', 'TfKe0HQJRjtd', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('cmartinello5d@cargocollective.com', 'E1k9OGM2', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('stomik5e@rediff.com', '3doaU45LN', 'Sandor Tomik', 'stomik5e@homestead.com', '3 Claremont Avenue');
INSERT INTO public.users (username, password, name, email, address) VALUES ('cwilkins5f@delicious.com', '0CRqGC8GJztw', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('rmerryman5g@admin.ch', 'Kl7ACsQxsvh', NULL, NULL, '946 Granby Plaza');
INSERT INTO public.users (username, password, name, email, address) VALUES ('sdorkins5h@hhs.gov', 'N7YZiSEi', 'Sarette Dorkins', 'sdorkins5h@aol.com', '33948 Monument Way');
INSERT INTO public.users (username, password, name, email, address) VALUES ('lclemon5i@t.co', 'gc1R48mEu0uR', NULL, NULL, '396 Derek Terrace');
INSERT INTO public.users (username, password, name, email, address) VALUES ('gmunkley5j@themeforest.net', 'LSQf7QmIu90h', 'Gayle Munkley', 'gmunkley5j@slate.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('ftuison5k@smh.com.au', 'cVsCYYeGMHrO', 'Ferdie Tuison', 'ftuison5k@ed.gov', '617 Fairview Plaza');
INSERT INTO public.users (username, password, name, email, address) VALUES ('psulter5l@creativecommons.org', '4734uf2h0D', 'Pepito Sulter', 'psulter5l@marketwatch.com', '86547 Artisan Crossing');
INSERT INTO public.users (username, password, name, email, address) VALUES ('cmcfeat5m@yahoo.co.jp', 'SEMxJiO', 'Caleb McFeat', 'cmcfeat5m@is.gd', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('npavelka5n@blogspot.com', '1YvnVA', NULL, NULL, '1863 Upham Circle');
INSERT INTO public.users (username, password, name, email, address) VALUES ('bwintersgill5o@slashdot.org', 'hPGAnyR1Ep8', 'Baryram Wintersgill', 'bwintersgill5o@hexun.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('ehasney5p@smh.com.au', 'mpx0LjV', 'Eveline Hasney', 'ehasney5p@hibu.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('walliberton5q@icio.us', 'y6gTmp5eo', 'Wilton Alliberton', 'walliberton5q@issuu.com', '67666 Pond Lane');
INSERT INTO public.users (username, password, name, email, address) VALUES ('ahavock5r@spotify.com', 'DYxHGi0K', 'Allina Havock', 'ahavock5r@auda.org.au', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('hmitchinson5s@tinyurl.com', 'KsLVrcDQvCis', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('skures5t@nyu.edu', 'zNja5xfbL', 'Sharia Kures', 'skures5t@dell.com', '29509 Butterfield Plaza');
INSERT INTO public.users (username, password, name, email, address) VALUES ('sworton5u@fotki.com', 'eKmCyf', 'Sybille Worton', 'sworton5u@fema.gov', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('bwaker5v@google.ru', 'dld9CsqEZGxI', 'Brooks Waker', 'bwaker5v@yellowpages.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('ymackenney5w@prnewswire.com', 'C3VbRgKb9aAd', 'Yvette MacKenney', 'ymackenney5w@rakuten.co.jp', '569 Gina Road');
INSERT INTO public.users (username, password, name, email, address) VALUES ('mferraresi5x@yahoo.com', 'p9obu0MB70y', 'Matthias Ferraresi', 'mferraresi5x@comsenz.com', '02609 Merrick Drive');
INSERT INTO public.users (username, password, name, email, address) VALUES ('egokes5y@blogs.com', 'OP26X59PutQ', NULL, NULL, '8 Warbler Pass');
INSERT INTO public.users (username, password, name, email, address) VALUES ('whubbert5z@mashable.com', 'j28E0qhp6D2z', 'Werner Hubbert', 'whubbert5z@google.ru', '98 Montana Street');
INSERT INTO public.users (username, password, name, email, address) VALUES ('zkondratenya60@symantec.com', 'ImHvBJQ4rQ', 'Zitella Kondratenya', 'zkondratenya60@amazon.co.uk', '62 Sugar Plaza');
INSERT INTO public.users (username, password, name, email, address) VALUES ('cscottrell61@cnbc.com', 'Xafb9jumk', 'Charisse Scottrell', 'cscottrell61@sbwire.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('clarkworthy62@spiegel.de', 'nbB2ds58h5', 'Chaddy Larkworthy', 'clarkworthy62@purevolume.com', '6 Village Lane');
INSERT INTO public.users (username, password, name, email, address) VALUES ('hstrathe63@sbwire.com', 'bOeJ94YRi', NULL, NULL, '437 Dexter Hill');
INSERT INTO public.users (username, password, name, email, address) VALUES ('wlingley64@icq.com', 'PTfAm2V', 'Wren Lingley', 'wlingley64@nationalgeographic.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('sfolley65@pinterest.com', 'xQxnuepm', 'Stevie Folley', 'sfolley65@fotki.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('rhassewell66@shinystat.com', 'AgcSSO11Ps', 'Rocky Hassewell', 'rhassewell66@wikispaces.com', '36 Valley Edge Terrace');
INSERT INTO public.users (username, password, name, email, address) VALUES ('adawnay67@eventbrite.com', 'qVVr4PTm', 'Arvin Dawnay', 'adawnay67@unc.edu', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('awindmill68@multiply.com', '1dvtLXiIAieI', 'Aldridge Windmill', 'awindmill68@hhs.gov', '7 John Wall Lane');
INSERT INTO public.users (username, password, name, email, address) VALUES ('neuplate69@pagesperso-orange.fr', 'hBNZkJo', 'Nathan Euplate', 'neuplate69@buzzfeed.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('tcastanos6a@redcross.org', 's8LCb9koVPL', NULL, NULL, '7790 Vernon Point');
INSERT INTO public.users (username, password, name, email, address) VALUES ('gmacbean6b@is.gd', 'lCZGiNp', NULL, NULL, '99032 Randy Court');
INSERT INTO public.users (username, password, name, email, address) VALUES ('sillingsworth6c@cmu.edu', '2BV4cz5', 'Savina Illingsworth', 'sillingsworth6c@prlog.org', '92 Katie Place');
INSERT INTO public.users (username, password, name, email, address) VALUES ('mvittle6d@ameblo.jp', 'spQyh2iCu', 'Marty Vittle', 'mvittle6d@bloglines.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('mnoel6e@cdc.gov', '4x0ckrU57c', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('hvinter6f@economist.com', 'l53G7TSjRGRJ', 'Halsey Vinter', 'hvinter6f@google.co.uk', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('elarret6g@cocolog-nifty.com', 'Exe6CEvg25b', 'Emalia Larret', 'elarret6g@howstuffworks.com', '958 Portage Park');
INSERT INTO public.users (username, password, name, email, address) VALUES ('elozano6h@tinyurl.com', 'hU6Hscu0yN1', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('ltuxwell6i@hostgator.com', 'Yyr1EhBh', 'Lori Tuxwell', 'ltuxwell6i@wordpress.org', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('fpocknoll6j@cargocollective.com', 'dpdZ0LdgjtNB', NULL, NULL, '1 Charing Cross Way');
INSERT INTO public.users (username, password, name, email, address) VALUES ('mhardbattle6k@g.co', 'HuN3pVdOT4DB', 'Milicent Hardbattle', 'mhardbattle6k@newsvine.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('rhatherall6l@bloomberg.com', '8WWn85', 'Rosalind Hatherall', 'rhatherall6l@vistaprint.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('llehrle6m@nsw.gov.au', '15IuOK8czB', 'Lenore Lehrle', 'llehrle6m@blogger.com', '20 Manufacturers Pass');
INSERT INTO public.users (username, password, name, email, address) VALUES ('ade6o@wikimedia.org', 'np91TCh2', 'Annie De Lascy', 'ade6o@discovery.com', '3336 Spohn Point');
INSERT INTO public.users (username, password, name, email, address) VALUES ('jvanshin6p@woothemes.com', 'ozcUaR5D', 'Jeramie Vanshin', 'jvanshin6p@auda.org.au', '19 Chinook Point');
INSERT INTO public.users (username, password, name, email, address) VALUES ('wschoffler6q@cornell.edu', 'kswvQhd', 'Wrennie Schoffler', 'wschoffler6q@ezinearticles.com', '8 Pawling Trail');
INSERT INTO public.users (username, password, name, email, address) VALUES ('asallnow6r@columbia.edu', 'Mw9kdB3prf9z', NULL, NULL, NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('doxtiby6s@cnbc.com', 'gKyxZlbbKYS', NULL, NULL, '6 Pepper Wood Crossing');
INSERT INTO public.users (username, password, name, email, address) VALUES ('gleppingwell6t@newsvine.com', 'gGdFM0fDGm', 'Gerri Leppingwell', 'gleppingwell6t@blogger.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('fgaylor6u@msu.edu', 'RG5xKLs8SE', 'Felecia Gaylor', 'fgaylor6u@home.pl', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('cbacop6v@hao123.com', 'Bvfbpv', 'Clementius Bacop', 'cbacop6v@tumblr.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('rselway6w@vimeo.com', 'm8CxAroQh', 'Rhett Selway', 'rselway6w@java.com', NULL);
INSERT INTO public.users (username, password, name, email, address) VALUES ('sharte6x@csmonitor.com', 'qVn48HyIMI', 'Sarita Harte', 'sharte6x@ed.gov', '57 Summerview Terrace');


--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 204
-- Name: credit_card_cc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.credit_card_cc_id_seq', 1, false);


--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 202
-- Name: shopping_cart_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shopping_cart_item_id_seq', 499, true);


-- Completed on 2021-07-06 21:53:33

--
-- PostgreSQL database dump complete
--

