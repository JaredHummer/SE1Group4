--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-07-04 15:18:50

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

SET default_table_access_method = heap;

--
-- TOC entry 200 (class 1259 OID 17594)
-- Name: book; Type: TABLE; Schema: public; Owner: -
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


--
-- TOC entry 201 (class 1259 OID 17601)
-- Name: credit_card; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.credit_card (
    cc_id integer NOT NULL,
    user_id integer NOT NULL,
    card_number text NOT NULL,
    exp_date date NOT NULL,
    cvv smallint NOT NULL
);


--
-- TOC entry 202 (class 1259 OID 17607)
-- Name: credit_card_cc_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.credit_card_cc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 202
-- Name: credit_card_cc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.credit_card_cc_id_seq OWNED BY public.credit_card.cc_id;


--
-- TOC entry 203 (class 1259 OID 17609)
-- Name: shopping_cart; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shopping_cart (
    item_id integer NOT NULL,
    user_id integer,
    isbn character varying(13)
);


--
-- TOC entry 204 (class 1259 OID 17612)
-- Name: shopping_cart_item_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.shopping_cart_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 204
-- Name: shopping_cart_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.shopping_cart_item_id_seq OWNED BY public.shopping_cart.item_id;


--
-- TOC entry 205 (class 1259 OID 17614)
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    password text NOT NULL,
    name text,
    email text,
    address text
);


--
-- TOC entry 206 (class 1259 OID 17620)
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 206
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- TOC entry 2871 (class 2604 OID 17622)
-- Name: credit_card cc_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.credit_card ALTER COLUMN cc_id SET DEFAULT nextval('public.credit_card_cc_id_seq'::regclass);


--
-- TOC entry 2872 (class 2604 OID 17623)
-- Name: shopping_cart item_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shopping_cart ALTER COLUMN item_id SET DEFAULT nextval('public.shopping_cart_item_id_seq'::regclass);


--
-- TOC entry 2873 (class 2604 OID 17624)
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- TOC entry 3015 (class 0 OID 17594)
-- Dependencies: 200
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: -
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
-- TOC entry 3016 (class 0 OID 17601)
-- Dependencies: 201
-- Data for Name: credit_card; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (1, 114, '5108758413129274', '2021-04-27', 878);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (2, 104, '5048373682497627', '2020-09-05', 106);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (3, 187, '5108759948212924', '2020-08-26', 541);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (4, 248, '5048374261322228', '2020-10-02', 210);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (5, 63, '5108755452537060', '2021-06-22', 733);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (6, 106, '5048374380913584', '2020-08-16', 113);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (7, 135, '5048372931994889', '2020-08-23', 585);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (8, 21, '5108750450553797', '2020-07-26', 928);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (9, 46, '5048373600227064', '2021-06-01', 521);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (10, 225, '5108753762114746', '2021-06-22', 287);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (11, 132, '5108755581939237', '2021-05-05', 407);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (12, 184, '5108750467544037', '2020-12-09', 374);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (13, 38, '5048371486894072', '2021-05-05', 632);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (14, 92, '5048370438670333', '2021-03-10', 111);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (15, 116, '5048372599372204', '2021-06-11', 447);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (16, 6, '5048372152672693', '2020-08-14', 388);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (17, 196, '5108751072268525', '2021-05-22', 327);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (18, 238, '5048370700122658', '2021-04-11', 957);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (19, 3, '5108752684071869', '2021-06-15', 370);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (20, 66, '5048377669378890', '2020-12-22', 879);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (21, 161, '5048370159043199', '2021-07-02', 148);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (22, 41, '5048371201729306', '2021-05-17', 257);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (23, 82, '5108752611426723', '2021-01-19', 543);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (24, 102, '5048372818940716', '2021-02-19', 741);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (25, 248, '5048379594325202', '2020-10-25', 962);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (26, 168, '5108751828718245', '2020-12-26', 974);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (27, 101, '5048372789792708', '2021-04-20', 901);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (28, 187, '5048372798143448', '2020-09-22', 840);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (29, 66, '5108754219916717', '2021-02-23', 290);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (30, 164, '5108751161421431', '2021-06-04', 574);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (31, 43, '5108755032616855', '2020-07-16', 320);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (32, 1, '5108754783747084', '2020-10-12', 801);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (33, 58, '5108750033382136', '2020-07-09', 669);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (34, 6, '5048376047962086', '2020-09-06', 884);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (35, 102, '5108753386246122', '2021-03-30', 207);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (36, 90, '5108751405539071', '2020-12-12', 240);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (37, 103, '5108758135518176', '2020-07-26', 671);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (38, 7, '5108756511959527', '2021-05-19', 953);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (39, 125, '5108757290719967', '2020-09-09', 868);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (40, 44, '5108753706768706', '2020-12-21', 251);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (41, 87, '5108754206546824', '2021-03-30', 674);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (42, 98, '5048378507608951', '2020-07-15', 516);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (43, 97, '5048375351716385', '2020-07-11', 715);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (44, 60, '5048370588141770', '2021-06-15', 590);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (45, 236, '5048377591087536', '2021-01-22', 143);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (46, 183, '5108755194874508', '2020-09-03', 376);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (47, 82, '5108753122509148', '2020-10-03', 737);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (48, 205, '5048372090806981', '2020-07-15', 942);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (49, 24, '5108750331086322', '2020-08-13', 981);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (50, 128, '5108758433934984', '2021-03-08', 426);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (51, 218, '5108759080565824', '2021-05-24', 323);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (52, 82, '5048372048157644', '2021-04-12', 522);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (53, 39, '5048374554797102', '2020-12-24', 903);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (54, 21, '5108757963543538', '2020-12-23', 847);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (55, 44, '5108756788626601', '2020-11-08', 123);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (56, 161, '5108755322278416', '2021-06-11', 253);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (57, 182, '5048375365699379', '2021-02-06', 518);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (58, 47, '5108755191994341', '2021-04-13', 266);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (59, 150, '5108757732970046', '2020-11-09', 619);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (60, 120, '5048373518563733', '2021-05-31', 269);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (61, 219, '5048378994952417', '2021-03-06', 677);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (62, 222, '5108754991795131', '2021-01-07', 223);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (63, 26, '5108752655820104', '2020-10-04', 100);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (64, 65, '5048370749770251', '2020-11-27', 880);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (65, 112, '5048371481530184', '2021-05-07', 538);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (66, 19, '5108750940837156', '2020-12-25', 101);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (67, 73, '5048373049724630', '2020-07-26', 624);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (68, 250, '5048371331092575', '2020-10-19', 351);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (69, 34, '5108758664686659', '2020-12-11', 352);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (70, 47, '5108751126881281', '2020-10-12', 117);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (71, 241, '5108756342275655', '2020-11-20', 433);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (72, 24, '5108756413579076', '2021-01-08', 447);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (73, 21, '5048379342152577', '2021-06-11', 178);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (74, 243, '5048375584292535', '2020-07-23', 110);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (75, 143, '5048372295390377', '2020-11-07', 806);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (76, 215, '5108751837164860', '2020-11-05', 109);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (77, 168, '5048378650290136', '2021-01-15', 643);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (78, 92, '5048375793703298', '2021-03-20', 375);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (79, 75, '5048371527285736', '2020-11-08', 189);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (80, 249, '5048376704865671', '2020-11-04', 558);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (81, 84, '5108753189172699', '2020-11-02', 824);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (82, 215, '5108751274279775', '2021-03-10', 176);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (83, 134, '5108751767078460', '2020-10-07', 385);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (84, 227, '5048374148391982', '2020-10-28', 539);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (85, 17, '5048373524397092', '2020-10-17', 321);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (86, 79, '5048373675693273', '2021-05-08', 461);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (87, 227, '5048371504344845', '2021-04-12', 525);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (88, 188, '5048379883214810', '2021-05-06', 139);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (89, 129, '5108758286396224', '2020-11-10', 911);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (90, 211, '5048372819035300', '2021-05-22', 714);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (91, 68, '5108751982583666', '2021-06-30', 990);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (92, 29, '5048378385296507', '2020-08-21', 996);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (93, 152, '5108752904751555', '2020-07-05', 962);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (94, 190, '5108757639441216', '2020-08-03', 426);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (95, 144, '5048370450897178', '2021-01-03', 624);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (96, 10, '5048378256327936', '2020-07-22', 957);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (97, 94, '5108751004832810', '2020-12-16', 508);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (98, 96, '5048370033854696', '2021-04-12', 658);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (99, 131, '5108759191204834', '2021-03-06', 608);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (100, 38, '5108750362650558', '2020-07-31', 380);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (101, 50, '5108750856832118', '2020-09-03', 746);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (102, 243, '5048376042096484', '2020-11-23', 321);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (103, 122, '5108751136293444', '2020-08-03', 928);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (104, 50, '5048373719238572', '2021-01-26', 492);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (105, 178, '5048371062616832', '2021-01-28', 692);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (106, 99, '5048378118185969', '2020-07-21', 788);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (107, 139, '5048372439746161', '2021-04-30', 614);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (108, 119, '5108750686883943', '2020-08-02', 701);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (109, 224, '5108756849591315', '2020-09-04', 401);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (110, 95, '5108755299615624', '2021-03-15', 315);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (111, 122, '5048376505954591', '2021-06-21', 989);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (112, 17, '5108758103922848', '2021-01-31', 217);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (113, 117, '5108759216882689', '2020-11-24', 110);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (114, 53, '5108759201801702', '2021-04-10', 992);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (115, 186, '5108757397260949', '2021-03-25', 730);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (116, 178, '5108754078044312', '2021-06-30', 517);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (117, 163, '5048375686022525', '2021-05-06', 373);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (118, 81, '5048371604715464', '2021-05-01', 508);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (119, 206, '5048372300548241', '2021-03-30', 435);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (120, 159, '5108754236757920', '2021-05-09', 238);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (121, 220, '5048378113821840', '2020-12-19', 339);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (122, 235, '5108756427080723', '2020-12-17', 302);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (123, 53, '5108752021026295', '2021-02-02', 511);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (124, 176, '5108756287316613', '2021-05-24', 396);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (125, 165, '5048378206080619', '2021-01-22', 576);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (126, 250, '5048372653812566', '2021-03-28', 497);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (127, 143, '5048373369392364', '2020-09-12', 978);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (128, 116, '5048379132945156', '2021-04-09', 127);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (129, 28, '5108756982920495', '2020-08-09', 278);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (130, 34, '5108757243032823', '2021-01-16', 121);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (131, 50, '5108756850721637', '2020-10-09', 742);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (132, 171, '5048371676192881', '2020-11-01', 407);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (133, 74, '5048372357791488', '2021-06-18', 763);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (134, 97, '5048375971696611', '2021-05-18', 924);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (135, 24, '5048378524136143', '2020-08-26', 209);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (136, 200, '5048373771216813', '2021-05-14', 808);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (137, 113, '5108757324135479', '2020-10-16', 903);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (138, 135, '5048378537252465', '2021-03-26', 928);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (139, 169, '5108756253172701', '2021-03-05', 434);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (140, 190, '5048375904962650', '2020-08-24', 656);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (141, 106, '5108751350327670', '2020-08-09', 239);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (142, 171, '5048372954201204', '2020-07-07', 381);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (143, 195, '5048372190259933', '2021-03-18', 989);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (144, 37, '5108753737413199', '2020-11-23', 468);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (145, 98, '5048377770125784', '2021-04-07', 767);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (146, 148, '5108752972756213', '2021-04-23', 576);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (147, 214, '5048376962451065', '2021-04-24', 983);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (148, 218, '5048377185542805', '2020-09-24', 810);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (149, 107, '5108756670295937', '2020-09-04', 460);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (150, 90, '5108756955749962', '2020-11-04', 825);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (151, 208, '5048375935272699', '2020-08-31', 128);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (152, 69, '5108752410384073', '2021-06-29', 615);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (153, 15, '5048375896029377', '2020-11-25', 138);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (154, 163, '5048377417177834', '2020-07-05', 480);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (155, 225, '5048373181954540', '2021-01-22', 192);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (156, 77, '5048377419842641', '2021-06-04', 522);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (157, 212, '5108756722875355', '2020-07-12', 718);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (158, 60, '5108753070173806', '2020-12-26', 558);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (159, 100, '5108753212738896', '2021-05-12', 481);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (160, 220, '5048377674243709', '2020-07-14', 188);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (161, 143, '5048379973692776', '2021-04-06', 665);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (162, 107, '5048371628582767', '2021-02-03', 791);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (163, 24, '5108759382767482', '2020-08-06', 973);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (164, 8, '5048370603790841', '2020-10-30', 896);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (165, 184, '5108757827094728', '2021-02-01', 617);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (166, 121, '5048370165613555', '2021-04-27', 744);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (167, 72, '5108757948688671', '2021-04-28', 477);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (168, 123, '5108752252463340', '2020-08-01', 636);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (169, 140, '5048378986795220', '2020-08-06', 103);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (170, 3, '5048372030434670', '2021-01-24', 338);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (171, 170, '5048370687804831', '2021-05-01', 764);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (172, 135, '5048371333110524', '2021-01-28', 413);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (173, 83, '5048377467503871', '2021-02-13', 355);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (174, 140, '5048372004325946', '2020-09-11', 217);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (175, 155, '5108754332445339', '2021-03-30', 827);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (176, 182, '5048373544559648', '2020-11-20', 326);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (177, 171, '5108751634203192', '2021-01-14', 340);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (178, 72, '5048377100668867', '2020-10-30', 395);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (179, 141, '5108755121351471', '2021-05-28', 349);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (180, 137, '5108752431151709', '2020-12-04', 856);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (181, 3, '5048378562467640', '2021-06-21', 627);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (182, 149, '5048379204003041', '2021-01-02', 215);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (183, 30, '5108754251632347', '2021-06-18', 986);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (184, 190, '5108750851137547', '2021-01-15', 746);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (185, 164, '5048374986197707', '2020-07-05', 138);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (186, 129, '5048379015157176', '2021-06-19', 605);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (187, 59, '5108755489830215', '2021-01-13', 341);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (188, 213, '5108758127095381', '2020-08-22', 726);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (189, 91, '5108754145751634', '2021-01-21', 968);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (190, 217, '5048376050438594', '2020-09-15', 856);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (191, 106, '5048374674308210', '2021-05-29', 197);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (192, 89, '5108752888419963', '2021-04-11', 690);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (193, 25, '5108757678278909', '2020-12-08', 541);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (194, 75, '5108754741640231', '2021-04-29', 752);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (195, 178, '5048371634749624', '2021-05-10', 125);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (196, 18, '5048378074139281', '2020-09-07', 341);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (197, 194, '5048372833319102', '2020-09-11', 697);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (198, 145, '5108752574171340', '2020-11-17', 967);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (199, 224, '5108752753143565', '2021-04-19', 191);
INSERT INTO public.credit_card (cc_id, user_id, card_number, exp_date, cvv) VALUES (200, 8, '5048373132911474', '2021-05-15', 337);


--
-- TOC entry 3018 (class 0 OID 17609)
-- Dependencies: 203
-- Data for Name: shopping_cart; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (1, 113, '260314263-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (2, 23, '845282192-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (3, 217, '255189015-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (4, 203, '051984010-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (5, 107, '445239445-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (6, 156, '415684273-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (7, 201, '415684273-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (8, 184, '646377394-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (9, 156, '323991176-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (10, 8, '689541540-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (11, 106, '902926331-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (12, 100, '634444131-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (13, 145, '235868244-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (14, 109, '256035178-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (15, 175, '905399284-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (16, 219, '711371002-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (17, 115, '661467673-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (18, 120, '987599799-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (19, 36, '025428193-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (20, 107, '264072693-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (21, 244, '916193377-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (22, 88, '956132571-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (23, 203, '161622304-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (24, 113, '445021449-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (25, 245, '817072394-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (26, 222, '654117020-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (27, 242, '260314263-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (28, 159, '359217434-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (29, 216, '167836346-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (30, 130, '232333651-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (31, 200, '168115051-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (32, 3, '373833352-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (33, 171, '373338582-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (34, 223, '851608780-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (35, 54, '935595550-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (36, 28, '955860017-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (37, 197, '611895414-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (38, 93, '304881958-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (39, 29, '163578512-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (40, 192, '621854255-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (41, 72, '618435655-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (42, 100, '915194193-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (43, 1, '085809405-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (44, 148, '393467053-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (45, 119, '586709303-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (46, 77, '741644622-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (47, 86, '527756877-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (48, 216, '445239445-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (49, 106, '796580315-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (50, 191, '304881958-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (51, 80, '841931901-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (52, 155, '772346633-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (53, 55, '296535889-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (54, 18, '195062912-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (55, 236, '953469093-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (56, 111, '248605712-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (57, 16, '232333651-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (58, 245, '280846030-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (59, 110, '268520013-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (60, 122, '349845049-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (61, 233, '130987216-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (62, 164, '841931901-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (63, 98, '415928600-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (64, 150, '253421158-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (65, 148, '007521393-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (66, 117, '050555210-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (67, 245, '891764604-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (68, 125, '823957154-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (69, 54, '962852031-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (70, 236, '129400156-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (71, 239, '996146139-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (72, 166, '503237818-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (73, 122, '457970599-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (74, 209, '571551337-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (75, 11, '588088642-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (76, 138, '017376297-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (77, 3, '860954062-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (78, 127, '721486502-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (79, 6, '567122343-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (80, 65, '860954062-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (81, 214, '588088642-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (82, 4, '600909947-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (83, 239, '388053663-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (84, 12, '179787434-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (85, 181, '430132456-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (86, 130, '902926331-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (87, 30, '055458067-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (88, 169, '439372847-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (89, 131, '660703244-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (90, 179, '567122343-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (91, 118, '553085834-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (92, 165, '410190780-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (93, 183, '660703244-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (94, 233, '566564397-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (95, 240, '576176060-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (96, 231, '285407383-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (97, 34, '162357283-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (98, 118, '477280932-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (99, 5, '624585427-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (100, 84, '553085834-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (101, 44, '098127157-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (102, 237, '919107922-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (103, 168, '889207288-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (104, 203, '955860017-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (105, 19, '049149534-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (106, 2, '717860103-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (107, 62, '143487435-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (108, 114, '749487553-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (109, 38, '708617794-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (110, 211, '204725391-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (111, 103, '683442384-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (112, 250, '404812627-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (113, 190, '169291605-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (114, 141, '933661665-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (115, 228, '717860103-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (116, 168, '029434417-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (117, 85, '812300651-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (118, 148, '329764334-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (119, 222, '048275792-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (120, 171, '033191203-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (121, 157, '135822340-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (122, 206, '784155968-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (123, 153, '119493863-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (124, 221, '274720391-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (125, 122, '914875553-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (126, 151, '755686002-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (127, 15, '273736069-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (128, 116, '574016917-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (129, 226, '113493206-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (130, 212, '588088642-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (131, 202, '856221626-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (132, 177, '909674142-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (133, 184, '225786832-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (134, 220, '809226378-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (135, 245, '648579857-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (136, 11, '711371002-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (137, 223, '269045513-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (138, 223, '796580315-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (139, 172, '017199855-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (140, 236, '814063892-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (141, 94, '680805713-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (142, 190, '933376029-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (143, 208, '596219649-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (144, 150, '445239445-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (145, 36, '087935617-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (146, 155, '784155968-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (147, 236, '171513250-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (148, 38, '392919280-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (149, 14, '637657825-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (150, 91, '758283987-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (151, 200, '909674142-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (152, 181, '050555210-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (153, 132, '883379866-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (154, 9, '114584286-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (155, 186, '913616867-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (156, 110, '895919336-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (157, 178, '841058014-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (158, 170, '095825458-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (159, 85, '490888836-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (160, 117, '765870162-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (161, 29, '867289177-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (162, 27, '225786832-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (163, 148, '546534789-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (164, 153, '273177602-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (165, 146, '813672755-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (166, 235, '163739070-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (167, 128, '162357283-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (168, 139, '877680598-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (169, 125, '732537273-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (170, 124, '799712104-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (171, 205, '689276258-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (172, 188, '841058014-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (173, 228, '901153852-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (174, 201, '823895870-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (175, 131, '468303695-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (176, 64, '988127899-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (177, 22, '743491433-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (178, 197, '905399284-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (179, 198, '226995063-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (180, 148, '007521393-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (181, 1, '925160301-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (182, 210, '913616867-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (183, 201, '484440151-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (184, 248, '285407383-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (185, 69, '057844142-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (186, 170, '799712104-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (187, 129, '231820653-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (188, 26, '400088677-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (189, 129, '842026936-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (190, 157, '032261152-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (191, 92, '220291156-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (192, 136, '586709303-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (193, 42, '296535889-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (194, 94, '256035178-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (195, 128, '899600131-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (196, 250, '689276258-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (197, 113, '616739403-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (198, 192, '586919215-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (199, 9, '059528283-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (200, 55, '416755800-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (201, 57, '036301747-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (202, 8, '919107922-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (203, 186, '545395722-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (204, 98, '479204029-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (205, 239, '826383883-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (206, 49, '470722880-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (207, 122, '892803338-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (208, 87, '349173947-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (209, 243, '210021148-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (210, 61, '359496499-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (211, 24, '779523141-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (212, 207, '858194346-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (213, 213, '717860103-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (214, 159, '546357952-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (215, 236, '736556969-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (216, 153, '161622304-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (217, 244, '797823140-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (218, 156, '851608780-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (219, 209, '101598473-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (220, 72, '256035178-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (221, 188, '531793868-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (222, 224, '660703244-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (223, 1, '933151684-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (224, 180, '503237818-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (225, 235, '388476736-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (226, 110, '586919215-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (227, 22, '654117020-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (228, 2, '527751168-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (229, 164, '027342942-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (230, 199, '416755800-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (231, 93, '080664477-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (232, 156, '315028214-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (233, 141, '834369229-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (234, 92, '955860017-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (235, 40, '637657825-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (236, 247, '179787434-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (237, 223, '450576210-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (238, 168, '527751168-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (239, 31, '227470428-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (240, 146, '496476054-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (241, 37, '049149534-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (242, 171, '973016551-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (243, 191, '850553356-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (244, 147, '249529400-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (245, 107, '255096780-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (246, 240, '743491433-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (247, 131, '929121382-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (248, 207, '592518419-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (249, 223, '246550660-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (250, 119, '970772357-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (251, 153, '260314263-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (252, 217, '953469093-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (253, 135, '799928971-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (254, 118, '442512297-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (255, 135, '310645434-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (256, 213, '329416658-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (257, 72, '689541540-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (258, 242, '922743000-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (259, 112, '808741882-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (260, 210, '032261152-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (261, 148, '017199855-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (262, 21, '638985428-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (263, 229, '986792926-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (264, 35, '743491433-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (265, 24, '255096780-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (266, 204, '496223091-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (267, 116, '315028214-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (268, 243, '466677357-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (269, 170, '877680598-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (270, 17, '809581611-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (271, 67, '779017789-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (272, 159, '241701753-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (273, 247, '637158448-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (274, 150, '388053663-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (275, 217, '853868979-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (276, 181, '392919280-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (277, 118, '637158448-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (278, 31, '404812627-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (279, 198, '493935519-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (280, 38, '012573390-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (281, 14, '928791370-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (282, 70, '163578512-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (283, 185, '587258898-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (284, 69, '646377394-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (285, 10, '236861800-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (286, 209, '349330131-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (287, 180, '756692961-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (288, 53, '285407383-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (289, 178, '468303695-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (290, 182, '714841295-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (291, 244, '711371002-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (292, 233, '915194193-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (293, 26, '204725391-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (294, 244, '812300651-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (295, 220, '164145097-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (296, 32, '986792926-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (297, 173, '646377394-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (298, 184, '373833352-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (299, 102, '422031947-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (300, 5, '269045513-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (301, 241, '646377394-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (302, 31, '267756349-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (303, 208, '016838251-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (304, 173, '391768959-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (305, 191, '225786832-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (306, 27, '296602147-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (307, 182, '595526640-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (308, 248, '900954159-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (309, 12, '048275792-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (310, 70, '851608780-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (311, 186, '283821856-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (312, 181, '430132456-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (313, 220, '798754430-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (314, 151, '468303695-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (315, 148, '036301747-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (316, 3, '453171579-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (317, 210, '155749938-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (318, 108, '929121382-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (319, 72, '714974033-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (320, 156, '600090633-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (321, 139, '837725458-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (322, 209, '452263482-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (323, 128, '785513696-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (324, 114, '935962845-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (325, 27, '169291605-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (326, 104, '257089292-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (327, 113, '841931901-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (328, 156, '813672755-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (329, 135, '660703244-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (330, 56, '934944123-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (331, 9, '325665536-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (332, 184, '416906563-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (333, 240, '883379866-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (334, 209, '244495322-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (335, 143, '267460045-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (336, 136, '936326617-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (337, 23, '779546661-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (338, 175, '725598712-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (339, 215, '037146821-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (340, 167, '856000745-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (341, 162, '804245477-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (342, 35, '487898377-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (343, 17, '571594735-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (344, 92, '831627765-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (345, 10, '113493206-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (346, 32, '161622304-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (347, 47, '901153852-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (348, 154, '736556969-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (349, 227, '404812627-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (350, 97, '987599799-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (351, 203, '496223091-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (352, 244, '358245000-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (353, 103, '171513250-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (354, 103, '933661665-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (355, 97, '779017789-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (356, 218, '567122343-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (357, 180, '737109515-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (358, 138, '863967300-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (359, 187, '756692961-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (360, 72, '675399726-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (361, 197, '493111511-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (362, 43, '795267525-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (363, 192, '289164072-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (364, 103, '576176060-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (365, 135, '445021449-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (366, 34, '962852031-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (367, 142, '070087873-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (368, 97, '310645434-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (369, 232, '519454738-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (370, 202, '576176060-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (371, 245, '012741986-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (372, 161, '002519595-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (373, 157, '260314263-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (374, 169, '320695670-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (375, 128, '895919336-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (376, 1, '831485992-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (377, 57, '377423422-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (378, 34, '901153852-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (379, 225, '661562407-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (380, 213, '804245477-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (381, 195, '232333651-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (382, 54, '493111511-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (383, 209, '831627765-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (384, 60, '270712836-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (385, 209, '253819714-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (386, 79, '449296180-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (387, 35, '280240332-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (388, 230, '919107922-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (389, 195, '519491786-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (390, 145, '532243709-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (391, 229, '683442384-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (392, 158, '114584286-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (393, 48, '883379866-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (394, 148, '862320205-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (395, 127, '761627436-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (396, 183, '970772357-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (397, 26, '273736069-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (398, 1, '466677357-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (399, 72, '987599799-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (400, 5, '741644622-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (401, 57, '210021148-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (402, 162, '085809405-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (403, 76, '273177602-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (404, 181, '717006571-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (405, 224, '253421158-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (406, 192, '153542927-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (407, 58, '391768959-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (408, 35, '260314263-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (409, 195, '831485992-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (410, 168, '012573390-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (411, 51, '271036017-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (412, 72, '614189703-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (413, 76, '204154143-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (414, 209, '329738049-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (415, 121, '306075133-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (416, 108, '062109822-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (417, 57, '592518419-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (418, 68, '685289132-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (419, 206, '934944123-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (420, 193, '025428193-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (421, 9, '182599326-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (422, 71, '809226378-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (423, 64, '979066769-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (424, 27, '020197894-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (425, 150, '519499644-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (426, 74, '774073311-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (427, 33, '166827111-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (428, 224, '841931901-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (429, 72, '007521393-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (430, 184, '860954062-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (431, 186, '268520013-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (432, 15, '987599799-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (433, 239, '919107922-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (434, 135, '567122343-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (435, 41, '891119616-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (436, 6, '567049390-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (437, 157, '231820653-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (438, 54, '289150352-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (439, 149, '587553305-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (440, 119, '620402036-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (441, 71, '012741986-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (442, 231, '155749938-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (443, 82, '853868979-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (444, 121, '720455977-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (445, 144, '587066345-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (446, 61, '519491786-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (447, 207, '967276006-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (448, 108, '661467673-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (449, 152, '799712104-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (450, 193, '738391648-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (451, 149, '304881958-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (452, 74, '472596990-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (453, 91, '299089474-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (454, 206, '689541540-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (455, 7, '764014865-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (456, 15, '080664477-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (457, 151, '823895870-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (458, 177, '210021148-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (459, 237, '377423422-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (460, 171, '646459739-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (461, 18, '717860103-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (462, 239, '439372847-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (463, 163, '837725458-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (464, 221, '755686002-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (465, 250, '204725391-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (466, 167, '494723217-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (467, 224, '600909947-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (468, 33, '246550660-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (469, 36, '487898377-9');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (470, 24, '171513250-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (471, 11, '399282166-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (472, 70, '200756859-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (473, 117, '566564397-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (474, 233, '249753744-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (475, 3, '519499644-6');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (476, 153, '779523141-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (477, 41, '856221626-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (478, 233, '267460045-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (479, 243, '098127157-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (480, 93, '175273118-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (481, 237, '016838251-2');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (482, 234, '113493206-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (483, 137, '851608780-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (484, 59, '358245000-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (485, 127, '986792926-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (486, 80, '289164072-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (487, 108, '551029289-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (488, 160, '295525808-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (489, 22, '379568142-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (490, 46, '059528283-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (491, 117, '110551282-7');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (492, 80, '925160301-4');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (493, 119, '163578512-X');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (494, 70, '553085834-1');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (495, 161, '267756349-5');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (496, 216, '476528037-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (497, 44, '051984010-0');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (498, 38, '919450036-3');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (499, 248, '741644622-8');
INSERT INTO public.shopping_cart (item_id, user_id, isbn) VALUES (500, 232, '051984010-0');



--
-- TOC entry 3020 (class 0 OID 17614)
-- Dependencies: 205
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users (user_id, password, name, email, address) VALUES (1, 'AmkRPap', 'Kakalina Flynn', 'kflynn0@icio.us', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (2, 'rFZQjzt8mksY', 'Dennet Hamilton', 'dhamilton1@joomla.org', '557 Westend Terrace');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (3, 'MTCws3CKK', 'Roderick Laweles', 'rlaweles2@alibaba.com', '23 Nevada Parkway');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (4, 'UwpWSNMM', 'Norbie Ungerer', 'nungerer3@rakuten.co.jp', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (5, 'YxTS6O', NULL, NULL, '48217 Marcy Trail');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (6, '5aFNGDnVtCYg', 'Regen Janauschek', 'rjanauschek5@nhs.uk', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (7, '2H5Xs7M', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (8, 'aSJF3Cr', 'Stephanus Gooddy', 'sgooddy7@nyu.edu', '71 Vahlen Park');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (9, '85krltKAU', NULL, NULL, '64802 Kinsman Hill');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (10, 'RNSE9PfcwpC0', 'Karlis Doctor', 'kdoctor9@google.es', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (11, 'T8j9GX', 'Ole Olkowicz', 'oolkowicza@istockphoto.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (12, 'EaYQaPVRx9', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (13, '0sJyH1', 'Desirae Scully', 'dscullyc@globo.com', '6 Burning Wood Alley');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (14, 'qJqptDUuRxlb', 'Emanuele Spencook', 'espencookd@furl.net', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (15, 'g77M74Slp', 'Hettie Bisco', 'hbiscoe@163.com', '5216 Maple Wood Court');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (16, 'PI3FeDjDKm0', 'Philippine Meeks', 'pmeeksf@intel.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (17, 'hjk3O1L314jk', NULL, NULL, '49655 Moulton Street');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (18, 'Rukz5QnPGWV', 'Charla Rounce', 'crounceh@alexa.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (19, 'FAfVxre6b', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (20, 'xXpYg2S21', 'Fraze Maidment', 'fmaidmentj@skyrock.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (21, 'OQR9QC', 'Amargo Petrashkov', 'apetrashkovk@sohu.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (22, '8Dnmnqnv', 'Katharina Liggons', 'kliggonsl@theglobeandmail.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (23, 'uXSbMwEZIRP', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (24, '6zdpofhOdY', NULL, NULL, '9 Crownhardt Trail');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (25, 'R4dzrCqtQaya', 'Jinny Vant', 'jvanto@chronoengine.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (26, 'Lu6Qn2rLiDZ5', 'Bondie Rolance', 'brolancep@globo.com', '30 Eliot Street');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (27, 'UbhYEs', 'Sergeant Karlowicz', 'skarlowiczq@desdev.cn', '0634 Eastlawn Terrace');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (28, 'Bf6HXpuKu', NULL, NULL, '577 Prairie Rose Alley');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (29, 'iFUsmXocG', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (30, 'TahLgRUy', 'Ralina Altofts', 'raltoftst@hhs.gov', '621 Judy Circle');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (31, 'T4mPzhrtOn', NULL, NULL, '83748 Scott Plaza');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (32, 'Z8BfTGUn7J', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (33, 'BTQVrDA73V', 'Brice Klampt', 'bklamptw@samsung.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (34, 'ic3teeCG', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (35, 'RYuHNsUiq41Q', 'Ambrosi Kurth', 'akurthy@e-recht24.de', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (36, '75TdnZ66', 'Corry Harlin', 'charlinz@domainmarket.com', '8 Golden Leaf Lane');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (37, 'NM9VWp', NULL, NULL, '8554 Lien Parkway');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (38, '964GcZ58', 'Nye Littledike', 'nlittledike11@vinaora.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (39, 'er1qUCCF', 'Tillie Morley', 'tmorley12@bloglovin.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (40, 'gsHMRimJrrt', 'Connor Meredyth', 'cmeredyth13@usgs.gov', '33 Logan Way');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (41, 'Zh0WLYAQ', 'Adriane Grigoriev', 'agrigoriev14@disqus.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (42, 'vgixnXuyB7', NULL, NULL, '6 Darwin Drive');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (43, 'NydeQGpGPA', 'Jody Summerscales', 'jsummerscales16@pen.io', '0505 Grasskamp Place');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (44, '7CUJG5BO5', 'Waylen Wilkinson', 'wwilkinson17@de.vu', '51 Bonner Drive');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (45, '5YeaTzgGI2', 'Hewie Heffy', 'hheffy18@ucla.edu', '5 Loeprich Place');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (46, 'bUVw2RLqUdr', NULL, NULL, '1258 Anderson Hill');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (47, 'YzpBq5VmxNO', 'Christye Loukes', 'cloukes1a@bigcartel.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (48, 'F5hwBmjnJiaQ', 'Veriee Brazier', 'vbrazier1b@engadget.com', '51 Morningstar Crossing');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (49, 'u7lGuBrWZ', 'Donaugh Gateland', 'dgateland1c@weebly.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (50, 'WllbqEB', 'Mitchael Camidge', 'mcamidge1d@ibm.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (51, 'JAcWPAp5bxS', 'Eugenius Colcomb', 'ecolcomb1e@joomla.org', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (52, 'brARI9Ed015e', 'Meyer Simcock', 'msimcock1f@chron.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (53, 'IAWgGc', 'Emlynn Swedeland', 'eswedeland1g@ucoz.com', '7 Village Green Avenue');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (54, 'rl59siX3', 'Johnath O''Cahey', 'jocahey1h@uiuc.edu', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (55, 'bTrjaVm9CHN', NULL, NULL, '2 Ruskin Pass');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (56, 'SD2SnW9', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (57, 'nYzhUw', 'Melissa Pinkett', 'mpinkett1k@nhs.uk', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (58, 'T0Sox4Ohk3', 'Barry Walcar', 'bwalcar1l@spiegel.de', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (59, '5eDXrq5V2', 'Naomi Brosius', 'nbrosius1m@pen.io', '2483 Forest Dale Park');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (60, '59Vhn1mRliHI', 'Salim Filliskirk', 'sfilliskirk1n@webnode.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (61, 'Bo18ykufG0', 'Bradley Jenno', 'bjenno1o@linkedin.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (62, '8Q4A6LO1', 'Hew Flucks', 'hflucks1p@elegantthemes.com', '2823 Warner Junction');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (63, 'tFAFhVsU5D', 'Murray Basley', 'mbasley1q@google.de', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (64, 'fBQ7onPm', 'Prince Fowlston', 'pfowlston1r@netvibes.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (65, 'MTMnI9', 'Cindie Michal', 'cmichal1s@hugedomains.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (66, 'huM4zrQbpY', 'Don Gimeno', 'dgimeno1t@skyrock.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (67, 'XIOEtQIiKX', 'Pen Arckoll', 'parckoll1u@4shared.com', '96302 Cascade Junction');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (68, 'PcEQRW', 'Charmain McGray', 'cmcgray1v@edublogs.org', '05 Hintze Way');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (69, 'TqCVxtv1', NULL, NULL, '376 Milwaukee Avenue');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (70, 'hiJB1QB', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (71, 'iCSu9mFUbhl', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (72, 'gT0pYXIdh9F', 'Marcela Balthasar', 'mbalthasar1z@drupal.org', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (73, 'FSq3ZPKgvQ', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (74, 'VuM5jweB', 'Eachelle Haugeh', 'ehaugeh21@cpanel.net', '73372 Pankratz Hill');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (75, 'hPzzkHNtnW', 'Bradan Kilbourne', 'bkilbourne22@facebook.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (76, 'hcyy7qCZ', 'Adriano Handforth', 'ahandforth23@artisteer.com', '96997 Elmside Alley');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (77, 'DQzpOaRW7x', 'Garfield Scollard', 'gscollard24@un.org', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (78, 'cBFZgt8pgBM', 'Way Paullin', 'wpaullin25@nymag.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (79, '4FwSgBTfApO', 'Beverley Hazlewood', 'bhazlewood26@forbes.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (80, 'eLgSzDtgzT4', 'Wilmette Kitchingman', 'wkitchingman27@aol.com', '48 Miller Trail');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (81, 'JNkFmu', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (82, 'yRM4spTgqdV', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (83, 'lbtK5oQq1Qb', NULL, NULL, '7804 Meadow Vale Point');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (84, 'todKWm', 'Carlee Crathern', 'ccrathern2b@privacy.gov.au', '12463 Chive Junction');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (85, 'LueOMSKxap47', NULL, NULL, '3160 Dapin Way');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (86, 'tO0yVdUK3n', NULL, NULL, '46 Carberry Court');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (87, 'GS0wVDvO', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (88, 'Fekh2iUo', 'Caterina Sowten', 'csowten2f@imgur.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (89, 'UmJctwmexf', 'Jobyna Kershow', 'jkershow2g@github.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (90, 'N3o44s6', NULL, NULL, '226 Summit Pass');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (91, 'la48FMBYu', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (92, '5oBgz9D', 'Skye O''Kinedy', 'sokinedy2j@google.de', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (93, 'QyX5og', 'Merrielle Louca', 'mlouca2k@businessweek.com', '5254 Mccormick Park');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (94, 'L2n4EDCqtc', 'Melodee Eilers', 'meilers2l@chron.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (95, '6dk5hg1603kD', 'Casie Egel', 'cegel2m@devhub.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (96, 's05oOGHmb', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (97, '0D2aYzNBB', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (98, 'UWzO1I', 'Eran Sabater', 'esabater2p@flavors.me', '10507 Colorado Court');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (99, 'iUEde6', 'Kellby Pizey', 'kpizey2q@goo.ne.jp', '2 Vahlen Trail');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (100, 'WtcH5Ej8rFPV', 'Elyssa Overy', 'eovery2r@timesonline.co.uk', '40534 Ilene Way');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (101, 'NKfWXLnXQHN', 'Helen-elizabeth Danielli', 'hdanielli2s@ted.com', '67345 Boyd Point');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (102, 'ZkfA7bYh72Ki', 'Alysa Ancketill', 'aancketill2t@taobao.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (103, '7L58k9j', 'Christabella Tyhurst', 'ctyhurst2u@globo.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (104, 'q6lY1d1FFqCl', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (105, 'oBXmFboUhShs', 'Rudd Gilhouley', 'rgilhouley2w@time.com', '18609 Mcguire Center');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (106, 'J1tsNTM1', NULL, NULL, '82 Pine View Pass');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (107, 'tLZNHqhl2', 'Neddie Maxfield', 'nmaxfield2y@ning.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (108, 'vIkha3SR', NULL, NULL, '50 Nevada Drive');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (109, 'OURFEUwVc2IG', 'Sande Storrah', 'sstorrah30@ted.com', '8 Ohio Circle');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (110, 'hhDsYqmETmX', 'Roderic Simukov', 'rsimukov31@mlb.com', '158 Johnson Parkway');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (111, 'OixsxYgfP', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (112, 'rdryJZVrCE', 'Therese Slaght', 'tslaght33@theatlantic.com', '102 Mallard Crossing');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (113, 'UFPHRR6Wn', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (114, 'CxIkXH', 'Terri Turner', 'tturner35@shareasale.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (115, 'fBJJ5ZmiB', NULL, NULL, '8 Mifflin Avenue');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (116, 'JsdWVW', 'Mollee Pudner', 'mpudner37@dropbox.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (117, '7lNJZ2O', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (118, 'owFMkVu', 'Kin Andrich', 'kandrich39@yellowbook.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (119, 'NtflZ4rVoAX', 'Edy Ganing', 'eganing3a@oakley.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (120, 'E5xA7kDdKyT', 'Louisa Overlow', 'loverlow3b@yale.edu', '1009 Butternut Way');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (121, 'NJsyAdq40z', 'Livvie Seaman', 'lseaman3c@ft.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (122, 'fF9PpIFkoMjR', 'Jon Handforth', 'jhandforth3d@dell.com', '61 Dahle Center');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (123, 'C9GK48D32J', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (124, '3rSosvm', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (125, 'eW6ZhWKb03Tp', 'Corrine Bastin', 'cbastin3g@linkedin.com', '237 Lien Street');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (126, 'Ew1pQnZZ9Ri', 'Ban Steffans', 'bsteffans3h@msn.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (127, '8IxEsQ', NULL, NULL, '057 Dottie Center');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (128, 'CpZfgXGpI', 'Valry Dunbobbin', 'vdunbobbin3j@digg.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (129, 'alZQsiO5RL0', 'Cymbre Theuff', 'ctheuff3k@multiply.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (130, 'WVHa6HOm4bpK', 'Marice Corry', 'mcorry3l@de.vu', '684 Doe Crossing Terrace');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (131, '77P6Y4D9eJyB', NULL, NULL, '66 Ridgeview Place');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (132, 'T9y1WFfZJI', 'Merralee Mayling', 'mmayling3n@sfgate.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (133, 'Ey4RbNcZ8t9E', 'Boniface Ducker', 'bducker3o@discuz.net', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (134, 'cjOkoM', 'Frederich Kyffin', 'fkyffin3p@dropbox.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (135, 'cd0ZqkhhNnw', 'Hannis Faulconbridge', 'hfaulconbridge3q@facebook.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (136, 'sTWNKs', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (137, '5bBQntbm', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (138, 'dAZsV15a', NULL, NULL, '9 Fairview Alley');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (139, 'zvvdPkNs0', NULL, NULL, '336 Eggendart Circle');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (140, 'mIGrnvpE', 'Shalne Sheldrick', 'ssheldrick3v@msu.edu', '86 Rockefeller Pass');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (141, 'av8sx8PcCo', 'Dawna Sawkin', 'dsawkin3w@seesaa.net', '9852 Jackson Point');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (142, '8kWN9Ow', 'Lexine Rose', 'lrose3x@nhs.uk', '52 Farmco Circle');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (143, 'MRBz5b', 'Ellwood Everly', 'eeverly3y@canalblog.com', '43 Springs Park');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (144, 'O89yMv', 'Lorrie Chestnut', 'lchestnut3z@ebay.com', '9443 Carpenter Terrace');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (145, '7cwhGXR8RhEO', 'Claudie Phinnessy', 'cphinnessy40@addtoany.com', '1532 Manley Avenue');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (146, '5FX0hZX0N6c', NULL, NULL, '9356 Prairieview Way');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (147, 'ZuSFZC49', 'Lindie Eddison', 'leddison42@unicef.org', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (148, '9EDqzec', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (149, 'MVrFnhH', 'Winnifred Devlin', 'wdevlin44@google.it', '8737 Fordem Plaza');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (150, 'yR2l07', 'Aubry Mayfield', 'amayfield45@pcworld.com', '0 Fulton Hill');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (151, 'CTO3tsTyEK6', 'Roselin Cianni', 'rcianni46@myspace.com', '6722 Declaration Way');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (152, 'ueI3l2T8', 'Darnell Woolmore', 'dwoolmore47@time.com', '12444 Mosinee Parkway');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (153, '6WyQyGU', 'Eleanor Leman', 'eleman48@gov.uk', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (154, 'jCm0H5CM1', 'Connor Guarin', 'cguarin49@acquirethisname.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (155, 'wekPgYIug', 'Chad Pikett', 'cpikett4a@java.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (156, '5dYTKs', 'Benedikta Percifer', 'bpercifer4b@pen.io', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (157, 'GnEP9V', NULL, NULL, '315 Grover Park');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (158, 'DmS7W5Fr', 'Alistair Dible', 'adible4d@hexun.com', '065 Brickson Park Crossing');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (159, '5KXzQB', 'Bernette McAughtrie', 'bmcaughtrie4e@lycos.com', '25472 Stone Corner Way');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (160, 'PjiiNN7tT26', NULL, NULL, '543 Waubesa Court');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (161, 'FDqKqtFyMmf', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (162, 'BOGIGmyy', 'Huntley Pulford', 'hpulford4h@ihg.com', '871 Bay Park');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (163, '5W5H9es', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (164, 'CanoV6T7', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (165, 'rUXjXIh', 'Kenon Shank', 'kshank4k@uiuc.edu', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (166, 'rgn8Na3Me', NULL, NULL, '015 Boyd Road');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (167, 'DVKr7XSwk1GH', 'Bevin Baudain', 'bbaudain4m@stumbleupon.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (168, 'hgj3bja6JE', 'Natalya Bosdet', 'nbosdet4n@washington.edu', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (169, '0cCnOpjQUe3', 'Lanny Tuxwell', 'ltuxwell4o@independent.co.uk', '01577 Washington Lane');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (170, '0ALsOqA', 'Graeme Wiffield', 'gwiffield4p@constantcontact.com', '353 Melrose Way');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (171, 'vtjjjgbH2r', 'Tessi Bernardos', 'tbernardos4q@cbslocal.com', '903 Burrows Pass');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (172, 'JjkH3tKG3jc', 'Nikita Errigo', 'nerrigo4r@dedecms.com', '3001 Canary Park');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (173, '7v2L5YmAC', 'Brynna Forseith', 'bforseith4s@storify.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (174, 'yDDo3mt4Z', 'Cicily Jolliman', 'cjolliman4t@addthis.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (175, 'Q9MheVG', 'Philomena Croshaw', 'pcroshaw4u@si.edu', '51 Clarendon Junction');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (176, 'pmNm4jhh', 'Everard Playfoot', 'eplayfoot4v@meetup.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (177, 'ghWOjykD', 'Pall Roarty', 'proarty4w@businessweek.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (178, 'u1BJd7D', 'Martguerita Edinborough', 'medinborough4x@wikispaces.com', '1 Luster Street');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (179, 'wDTbIblgwrUF', 'Keefe Matteucci', 'kmatteucci4y@lulu.com', '847 Waywood Center');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (180, 'bHfZax9OCG', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (181, 'cP6LS18y', NULL, NULL, '6 Old Gate Park');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (182, 'XYGu9Fs', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (183, 'Nxce8qIrPS', 'Clovis Ribbens', 'cribbens52@1688.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (184, 'thNW6g7ZnxA', 'Enrica Stain', 'estain53@google.co.uk', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (185, 'vTT0eft', 'Vivi Frigot', 'vfrigot54@symantec.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (186, 'vPAUZZg', NULL, NULL, '60 Lakewood Gardens Plaza');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (187, 'XLw4u8', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (188, 'wRiZKm6oQ6p', NULL, NULL, '65398 Kipling Way');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (189, 'oR6LBqoFtqJ', 'Joelle Wolvey', 'jwolvey58@home.pl', '4 Cordelia Terrace');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (190, 'vyDxNLpli', 'Sean Floyed', 'sfloyed59@ask.com', '309 Dwight Trail');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (191, 'HJcOdKUSSPUY', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (192, 'V3ryVRC', 'Ellynn Lardeur', 'elardeur5b@ameblo.jp', '432 Warner Alley');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (193, 'iyu4OE7e9wY4', 'Margot Droghan', 'mdroghan5c@last.fm', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (194, 'qpqoFuu7', 'Shell Kleiser', 'skleiser5d@aol.com', '777 Stoughton Circle');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (195, 'Jwrd1ku7', NULL, NULL, '429 International Parkway');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (196, '8mazhfDf', 'Dorena Ghent', 'dghent5f@cnbc.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (197, 'f1GAcVkui', NULL, NULL, '0 Eggendart Circle');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (198, '8ukvZf', 'Elsey Brabban', 'ebrabban5h@amazonaws.com', '0214 Quincy Trail');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (199, 'dQQfiC2cW81x', 'Pyotr Scullion', 'pscullion5i@cpanel.net', '678 Arizona Way');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (200, 'IG4McFqO', 'Anstice Dowdell', 'adowdell5j@is.gd', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (201, 'rMHuNg6', 'Reagan Dettmar', 'rdettmar5k@storify.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (202, 'mxfy3y1JQpR4', NULL, NULL, '3 Reindahl Lane');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (203, 'MNlOnq', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (204, 'DWvdR1R1gg', 'Aguistin Bullent', 'abullent5n@last.fm', '60031 Anhalt Avenue');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (205, 'z99Uainjp', 'Madelle Matthisson', 'mmatthisson5o@flickr.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (206, 'oqsVlcw', 'Violet Noore', 'vnoore5p@amazon.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (207, 'NsKPABhGJae', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (208, 'FKHfsW0LQgxc', 'Aubree Tainton', 'atainton5r@wired.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (209, 'X9U8zDfU4EV', 'Dominica Munnion', 'dmunnion5s@biblegateway.com', '1867 Fairview Circle');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (210, 'nGi2oIrx', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (211, 'r1B5K25rG', 'Sephira Mesant', 'smesant5u@linkedin.com', '301 Warner Court');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (212, 'bpTtFYWHd7', 'Reilly Lathaye', 'rlathaye5v@prlog.org', '61 Park Meadow Park');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (213, 'kDGTQpBp', NULL, NULL, '6905 Pankratz Lane');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (214, 'uXLAnVxkC', 'Francklyn O''Crotty', 'focrotty5x@bloglines.com', '8 Pine View Terrace');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (215, 'm4WFdOY3', NULL, NULL, '47 Talisman Road');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (216, 'PgqKC1H', 'Laverna Gerb', 'lgerb5z@state.gov', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (217, 'RX9xnW5S', 'Ginelle Azema', 'gazema60@prnewswire.com', '822 High Crossing Terrace');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (218, 'HZhe6Tui00', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (219, 'TEddyMrbN', 'Cinderella Raffon', 'craffon62@woothemes.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (220, '3KyNlxjo', 'Hillary Gauden', 'hgauden63@chron.com', '1 Ruskin Drive');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (221, 'EUUtOQXSpI', NULL, NULL, '4665 Bluestem Circle');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (222, 'kojFjJnsofd', 'Elijah Banner', 'ebanner65@jalbum.net', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (223, 'ixCT5zIHPw0p', 'Grissel Duckerin', 'gduckerin66@issuu.com', '01992 Fulton Lane');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (224, 'Dv2ZGqaQUdr8', 'Rica Pikesley', 'rpikesley67@barnesandnoble.com', '93880 Judy Alley');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (225, '6BEAKxg', 'Grier Louis', 'glouis68@phoca.cz', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (226, 'APDiXX', 'Alayne Brecken', 'abrecken69@mediafire.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (227, 'ZZhzgU5wGX9', 'Merilee Wenden', 'mwenden6a@army.mil', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (228, 'GnPdQz5rxgK0', 'Gianna Giabucci', 'ggiabucci6b@adobe.com', '7 Manitowish Drive');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (229, 'R8uh0KmqtxGo', 'Ardath Olivet', 'aolivet6c@techcrunch.com', '84907 Bayside Avenue');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (230, '9P68axAOLTlo', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (231, '0m1exX', 'Tanney Nevet', 'tnevet6e@pen.io', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (232, 'WmwgOE0W', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (233, 'O1b912F', NULL, NULL, '18 Declaration Drive');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (234, 'Q8BDWEM', 'Andreas Van Castele', 'avan6h@privacy.gov.au', '38369 Del Sol Hill');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (235, '9ZiTs0', NULL, NULL, '20 Messerschmidt Road');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (236, 'sEU2umRq', 'Hadria Wisniewski', 'hwisniewski6j@sourceforge.net', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (237, 'EV5gMHMgwd', 'Ronald Leverentz', 'rleverentz6k@webs.com', '8473 Hanson Way');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (238, 'iLEuDlo5R', 'Georgena Bonds', 'gbonds6l@photobucket.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (239, 'yAb8hUwQQTCG', 'Jo Cottel', 'jcottel6m@desdev.cn', '92 Esker Park');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (240, 'DlJWhBHkRmLJ', 'Cecilius Lugsdin', 'clugsdin6n@yellowbook.com', '5911 Reinke Plaza');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (241, 'VPsKkoO9', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (242, 'GFq9SCk', 'Ruperta De Fraine', 'rde6p@cbsnews.com', '8 Mesta Center');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (243, 'RU04ey6h', 'Hewet Keaveney', 'hkeaveney6q@google.cn', '09 Manufacturers Road');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (244, 'LaqL4D', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (245, '0wzJbdCxq', 'Shepperd Kayne', 'skayne6s@dropbox.com', '72913 Bashford Terrace');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (246, '88gpUB', 'Farrand Caldwall', 'fcaldwall6t@live.com', NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (247, '63PzBV6g27M', 'Jere Vasilic', 'jvasilic6u@webeden.co.uk', '881 Barby Circle');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (248, 'AfuFenH6aO', 'Kay Goodoune', 'kgoodoune6v@apple.com', '89291 Leroy Avenue');
INSERT INTO public.users (user_id, password, name, email, address) VALUES (249, 'Bxi1th8', NULL, NULL, NULL);
INSERT INTO public.users (user_id, password, name, email, address) VALUES (250, 'KoyA5gR', 'Shawna Threlkeld', 'sthrelkeld6x@cam.ac.uk', '498 Kingsford Plaza');


--
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 202
-- Name: credit_card_cc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.credit_card_cc_id_seq', 1, false);


--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 204
-- Name: shopping_cart_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.shopping_cart_item_id_seq', 499, true);


--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 206
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_user_id_seq', 1, false);


-- Completed on 2021-07-04 15:18:50

--
-- PostgreSQL database dump complete
--

