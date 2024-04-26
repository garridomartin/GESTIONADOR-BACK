PGDMP  :        	            |            negocio    16.0    16.0 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    861465    negocio    DATABASE     ~   CREATE DATABASE negocio WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Argentina.1252';
    DROP DATABASE negocio;
                postgres    false            �            1259    918149    Products    TABLE     f  CREATE TABLE public."Products" (
    id integer NOT NULL,
    name text,
    cost numeric(10,2) DEFAULT 0,
    "priceML" numeric(10,2) DEFAULT 0,
    "priceEComm" numeric(10,2) DEFAULT 0,
    "priceLocal" numeric(10,2) DEFAULT 0,
    quantity integer DEFAULT 0,
    "quantityML" integer DEFAULT 0,
    "soldToDistribute" integer,
    "idMeli" character varying(255),
    "isDeleted" boolean DEFAULT false,
    files text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "filtroAnimal" character varying(255),
    "filtroProducto" character varying(255)
);
    DROP TABLE public."Products";
       public         heap    postgres    false            �            1259    918148    Products_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Products_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Products_id_seq";
       public          postgres    false    222            "           0    0    Products_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Products_id_seq" OWNED BY public."Products".id;
          public          postgres    false    221                       2604    918152    Products id    DEFAULT     n   ALTER TABLE ONLY public."Products" ALTER COLUMN id SET DEFAULT nextval('public."Products_id_seq"'::regclass);
 <   ALTER TABLE public."Products" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222                      0    918149    Products 
   TABLE DATA           �   COPY public."Products" (id, name, cost, "priceML", "priceEComm", "priceLocal", quantity, "quantityML", "soldToDistribute", "idMeli", "isDeleted", files, "createdAt", "updatedAt", "filtroAnimal", "filtroProducto") FROM stdin;
    public          postgres    false    222   ��       #           0    0    Products_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Products_id_seq"', 777, false);
          public          postgres    false    221            �           2606    1020621    Products Products_idMeli_key 
   CONSTRAINT     _   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key" UNIQUE ("idMeli");
 J   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key";
       public            postgres    false    222            �           2606    1020707    Products Products_idMeli_key1 
   CONSTRAINT     `   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key1" UNIQUE ("idMeli");
 K   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key1";
       public            postgres    false    222            �           2606    1020815    Products Products_idMeli_key10 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key10" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key10";
       public            postgres    false    222            �           2606    1020657    Products Products_idMeli_key100 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key100" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key100";
       public            postgres    false    222            �           2606    1020817    Products Products_idMeli_key101 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key101" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key101";
       public            postgres    false    222            �           2606    1020613    Products Products_idMeli_key102 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key102" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key102";
       public            postgres    false    222            �           2606    1020819    Products Products_idMeli_key103 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key103" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key103";
       public            postgres    false    222            �           2606    1020611    Products Products_idMeli_key104 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key104" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key104";
       public            postgres    false    222            �           2606    1020821    Products Products_idMeli_key105 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key105" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key105";
       public            postgres    false    222            �           2606    1020609    Products Products_idMeli_key106 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key106" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key106";
       public            postgres    false    222            �           2606    1020823    Products Products_idMeli_key107 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key107" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key107";
       public            postgres    false    222            �           2606    1020607    Products Products_idMeli_key108 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key108" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key108";
       public            postgres    false    222            �           2606    1020825    Products Products_idMeli_key109 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key109" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key109";
       public            postgres    false    222            �           2606    1020813    Products Products_idMeli_key11 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key11" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key11";
       public            postgres    false    222            �           2606    1020605    Products Products_idMeli_key110 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key110" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key110";
       public            postgres    false    222            �           2606    1020827    Products Products_idMeli_key111 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key111" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key111";
       public            postgres    false    222            �           2606    1020603    Products Products_idMeli_key112 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key112" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key112";
       public            postgres    false    222            �           2606    1020829    Products Products_idMeli_key113 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key113" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key113";
       public            postgres    false    222            �           2606    1020601    Products Products_idMeli_key114 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key114" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key114";
       public            postgres    false    222            �           2606    1020831    Products Products_idMeli_key115 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key115" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key115";
       public            postgres    false    222            �           2606    1020599    Products Products_idMeli_key116 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key116" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key116";
       public            postgres    false    222            �           2606    1020833    Products Products_idMeli_key117 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key117" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key117";
       public            postgres    false    222            �           2606    1020597    Products Products_idMeli_key118 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key118" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key118";
       public            postgres    false    222            �           2606    1020835    Products Products_idMeli_key119 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key119" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key119";
       public            postgres    false    222            �           2606    1020715    Products Products_idMeli_key12 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key12" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key12";
       public            postgres    false    222            �           2606    1020595    Products Products_idMeli_key120 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key120" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key120";
       public            postgres    false    222            �           2606    1020837    Products Products_idMeli_key121 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key121" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key121";
       public            postgres    false    222            �           2606    1020593    Products Products_idMeli_key122 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key122" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key122";
       public            postgres    false    222            �           2606    1020839    Products Products_idMeli_key123 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key123" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key123";
       public            postgres    false    222            �           2606    1020841    Products Products_idMeli_key124 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key124" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key124";
       public            postgres    false    222            �           2606    1020843    Products Products_idMeli_key125 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key125" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key125";
       public            postgres    false    222            �           2606    1020845    Products Products_idMeli_key126 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key126" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key126";
       public            postgres    false    222            �           2606    1020591    Products Products_idMeli_key127 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key127" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key127";
       public            postgres    false    222            �           2606    1020847    Products Products_idMeli_key128 
   CONSTRAINT     b   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key128" UNIQUE ("idMeli");
 M   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key128";
       public            postgres    false    222            �           2606    1020717    Products Products_idMeli_key13 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key13" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key13";
       public            postgres    false    222            �           2606    1020807    Products Products_idMeli_key14 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key14" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key14";
       public            postgres    false    222            �           2606    1020747    Products Products_idMeli_key15 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key15" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key15";
       public            postgres    false    222            �           2606    1020805    Products Products_idMeli_key16 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key16" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key16";
       public            postgres    false    222            �           2606    1020749    Products Products_idMeli_key17 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key17" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key17";
       public            postgres    false    222            �           2606    1020803    Products Products_idMeli_key18 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key18" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key18";
       public            postgres    false    222            �           2606    1020751    Products Products_idMeli_key19 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key19" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key19";
       public            postgres    false    222            �           2606    1020619    Products Products_idMeli_key2 
   CONSTRAINT     `   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key2" UNIQUE ("idMeli");
 K   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key2";
       public            postgres    false    222            �           2606    1020801    Products Products_idMeli_key20 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key20" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key20";
       public            postgres    false    222            �           2606    1020753    Products Products_idMeli_key21 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key21" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key21";
       public            postgres    false    222            �           2606    1020799    Products Products_idMeli_key22 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key22" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key22";
       public            postgres    false    222            �           2606    1020755    Products Products_idMeli_key23 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key23" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key23";
       public            postgres    false    222            �           2606    1020797    Products Products_idMeli_key24 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key24" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key24";
       public            postgres    false    222            �           2606    1020795    Products Products_idMeli_key25 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key25" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key25";
       public            postgres    false    222            �           2606    1020757    Products Products_idMeli_key26 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key26" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key26";
       public            postgres    false    222            �           2606    1020793    Products Products_idMeli_key27 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key27" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key27";
       public            postgres    false    222            �           2606    1020759    Products Products_idMeli_key28 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key28" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key28";
       public            postgres    false    222            �           2606    1020783    Products Products_idMeli_key29 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key29" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key29";
       public            postgres    false    222            �           2606    1020709    Products Products_idMeli_key3 
   CONSTRAINT     `   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key3" UNIQUE ("idMeli");
 K   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key3";
       public            postgres    false    222            �           2606    1020791    Products Products_idMeli_key30 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key30" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key30";
       public            postgres    false    222            �           2606    1020785    Products Products_idMeli_key31 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key31" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key31";
       public            postgres    false    222            �           2606    1020789    Products Products_idMeli_key32 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key32" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key32";
       public            postgres    false    222            �           2606    1020787    Products Products_idMeli_key33 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key33" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key33";
       public            postgres    false    222            �           2606    1020745    Products Products_idMeli_key34 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key34" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key34";
       public            postgres    false    222            �           2606    1020719    Products Products_idMeli_key35 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key35" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key35";
       public            postgres    false    222            �           2606    1020743    Products Products_idMeli_key36 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key36" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key36";
       public            postgres    false    222                        2606    1020721    Products Products_idMeli_key37 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key37" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key37";
       public            postgres    false    222                       2606    1020723    Products Products_idMeli_key38 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key38" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key38";
       public            postgres    false    222                       2606    1020725    Products Products_idMeli_key39 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key39" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key39";
       public            postgres    false    222                       2606    1020711    Products Products_idMeli_key4 
   CONSTRAINT     `   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key4" UNIQUE ("idMeli");
 K   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key4";
       public            postgres    false    222                       2606    1020741    Products Products_idMeli_key40 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key40" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key40";
       public            postgres    false    222            
           2606    1020729    Products Products_idMeli_key41 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key41" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key41";
       public            postgres    false    222                       2606    1020739    Products Products_idMeli_key42 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key42" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key42";
       public            postgres    false    222                       2606    1020737    Products Products_idMeli_key43 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key43" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key43";
       public            postgres    false    222                       2606    1020735    Products Products_idMeli_key44 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key44" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key44";
       public            postgres    false    222                       2606    1020731    Products Products_idMeli_key45 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key45" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key45";
       public            postgres    false    222                       2606    1020733    Products Products_idMeli_key46 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key46" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key46";
       public            postgres    false    222                       2606    1020623    Products Products_idMeli_key47 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key47" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key47";
       public            postgres    false    222                       2606    1020705    Products Products_idMeli_key48 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key48" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key48";
       public            postgres    false    222                       2606    1020625    Products Products_idMeli_key49 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key49" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key49";
       public            postgres    false    222                       2606    1020617    Products Products_idMeli_key5 
   CONSTRAINT     `   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key5" UNIQUE ("idMeli");
 K   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key5";
       public            postgres    false    222                       2606    1020703    Products Products_idMeli_key50 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key50" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key50";
       public            postgres    false    222                        2606    1020627    Products Products_idMeli_key51 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key51" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key51";
       public            postgres    false    222            "           2606    1020629    Products Products_idMeli_key52 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key52" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key52";
       public            postgres    false    222            $           2606    1020701    Products Products_idMeli_key53 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key53" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key53";
       public            postgres    false    222            &           2606    1020631    Products Products_idMeli_key54 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key54" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key54";
       public            postgres    false    222            (           2606    1020633    Products Products_idMeli_key55 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key55" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key55";
       public            postgres    false    222            *           2606    1020681    Products Products_idMeli_key56 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key56" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key56";
       public            postgres    false    222            ,           2606    1020683    Products Products_idMeli_key57 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key57" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key57";
       public            postgres    false    222            .           2606    1020699    Products Products_idMeli_key58 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key58" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key58";
       public            postgres    false    222            0           2606    1020685    Products Products_idMeli_key59 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key59" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key59";
       public            postgres    false    222            2           2606    1020713    Products Products_idMeli_key6 
   CONSTRAINT     `   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key6" UNIQUE ("idMeli");
 K   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key6";
       public            postgres    false    222            4           2606    1020697    Products Products_idMeli_key60 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key60" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key60";
       public            postgres    false    222            6           2606    1020687    Products Products_idMeli_key61 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key61" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key61";
       public            postgres    false    222            8           2606    1020761    Products Products_idMeli_key62 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key62" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key62";
       public            postgres    false    222            :           2606    1020695    Products Products_idMeli_key63 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key63" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key63";
       public            postgres    false    222            <           2606    1020763    Products Products_idMeli_key64 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key64" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key64";
       public            postgres    false    222            >           2606    1020693    Products Products_idMeli_key65 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key65" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key65";
       public            postgres    false    222            @           2606    1020765    Products Products_idMeli_key66 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key66" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key66";
       public            postgres    false    222            B           2606    1020691    Products Products_idMeli_key67 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key67" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key67";
       public            postgres    false    222            D           2606    1020767    Products Products_idMeli_key68 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key68" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key68";
       public            postgres    false    222            F           2606    1020689    Products Products_idMeli_key69 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key69" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key69";
       public            postgres    false    222            H           2606    1020809    Products Products_idMeli_key7 
   CONSTRAINT     `   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key7" UNIQUE ("idMeli");
 K   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key7";
       public            postgres    false    222            J           2606    1020769    Products Products_idMeli_key70 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key70" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key70";
       public            postgres    false    222            L           2606    1020781    Products Products_idMeli_key71 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key71" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key71";
       public            postgres    false    222            N           2606    1020771    Products Products_idMeli_key72 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key72" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key72";
       public            postgres    false    222            P           2606    1020779    Products Products_idMeli_key73 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key73" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key73";
       public            postgres    false    222            R           2606    1020773    Products Products_idMeli_key74 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key74" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key74";
       public            postgres    false    222            T           2606    1020777    Products Products_idMeli_key75 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key75" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key75";
       public            postgres    false    222            V           2606    1020775    Products Products_idMeli_key76 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key76" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key76";
       public            postgres    false    222            X           2606    1020679    Products Products_idMeli_key77 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key77" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key77";
       public            postgres    false    222            Z           2606    1020635    Products Products_idMeli_key78 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key78" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key78";
       public            postgres    false    222            \           2606    1020637    Products Products_idMeli_key79 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key79" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key79";
       public            postgres    false    222            ^           2606    1020615    Products Products_idMeli_key8 
   CONSTRAINT     `   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key8" UNIQUE ("idMeli");
 K   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key8";
       public            postgres    false    222            `           2606    1020677    Products Products_idMeli_key80 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key80" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key80";
       public            postgres    false    222            b           2606    1020639    Products Products_idMeli_key81 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key81" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key81";
       public            postgres    false    222            d           2606    1020675    Products Products_idMeli_key82 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key82" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key82";
       public            postgres    false    222            f           2606    1020641    Products Products_idMeli_key83 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key83" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key83";
       public            postgres    false    222            h           2606    1020673    Products Products_idMeli_key84 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key84" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key84";
       public            postgres    false    222            j           2606    1020643    Products Products_idMeli_key85 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key85" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key85";
       public            postgres    false    222            l           2606    1020671    Products Products_idMeli_key86 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key86" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key86";
       public            postgres    false    222            n           2606    1020645    Products Products_idMeli_key87 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key87" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key87";
       public            postgres    false    222            p           2606    1020669    Products Products_idMeli_key88 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key88" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key88";
       public            postgres    false    222            r           2606    1020647    Products Products_idMeli_key89 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key89" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key89";
       public            postgres    false    222            t           2606    1020811    Products Products_idMeli_key9 
   CONSTRAINT     `   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key9" UNIQUE ("idMeli");
 K   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key9";
       public            postgres    false    222            v           2606    1020667    Products Products_idMeli_key90 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key90" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key90";
       public            postgres    false    222            x           2606    1020649    Products Products_idMeli_key91 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key91" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key91";
       public            postgres    false    222            z           2606    1020665    Products Products_idMeli_key92 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key92" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key92";
       public            postgres    false    222            |           2606    1020651    Products Products_idMeli_key93 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key93" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key93";
       public            postgres    false    222            ~           2606    1020663    Products Products_idMeli_key94 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key94" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key94";
       public            postgres    false    222            �           2606    1020661    Products Products_idMeli_key95 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key95" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key95";
       public            postgres    false    222            �           2606    1020727    Products Products_idMeli_key96 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key96" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key96";
       public            postgres    false    222            �           2606    1020653    Products Products_idMeli_key97 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key97" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key97";
       public            postgres    false    222            �           2606    1020659    Products Products_idMeli_key98 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key98" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key98";
       public            postgres    false    222            �           2606    1020655    Products Products_idMeli_key99 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_idMeli_key99" UNIQUE ("idMeli");
 L   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_idMeli_key99";
       public            postgres    false    222            �           2606    918163    Products Products_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_pkey";
       public            postgres    false    222                  x��K�d�u&�N��0����H���]� � ����-*3PDfF)��f3�Gfۋ^��n�����u��7��M?��4
(ԁ_��~|G��W7�����q������������n�7�ǍV��wo���/7����������6b+ą5.F�D����}�����V�`��w��'��n���7?�������?�9����7�������x��O��FB�����I�{)�P�_m����O~����ǧ���O.����~��-2�(GAh��@�VF���1��KAT��b8A�+R�{�ݕ���^���O��D�����_ڰ�����čЗ*^��������%me��>^�on觛W�O7�C��7o�77���6���"F��ݻ�ō��L��G��K�b������0�(o����J��f�Eb]o��X-M�BY�/d��.�:�7AgT�����<b�Tf+T����#����&/9���=?����x��|����y��Y��1	���*�Ԫ�4�y�-_�Q��+�V�4\n�x�{�;|�|~�߿Mw����nG��x�����_�k����ݻ��}����1^�RJ[�T�A+���Ԓt�DL�^��jr�X�;����"z����� (R�,Z�2-C4Jwq��g��^�J��3	��B����͛���՞�r|������~�{��������a�7{��"u$X_����|��>�o~������z������zO��yA$��lle4N�����p��zEo�vżi6-[D!�\�+�O�.�~wxܑB7�?�}z��'��j�����n�+�����������~"�2q�"1c��g��� k2鈸 K�Z�u	��҇���A�đ|�)�!�E�B���Y�;A$�	��Zᵉ�cs��n4JyO!�)����4�~�2�W����+����jwM�x�����ر��gw�������!)��}ڿ�m�Zy�5O�#��.3�'�b���a�X7���2xm����4��%ʠp�;�r��a�ԥ�2��Ʒ,Z������W��=�O�����Gz����>��K��
&,=�2�X�S*=�����)�u=��0�rBKeK/��O�K�'���T�' 泱������B��v�o�*�r�W�_�=ٖ�������	~�|K�~w�Cv���okD\����#��Bj
Exf%��W�)u$Kr�YY"�%�$}.�w�ָ>O{�����7QLx~����+���d�ʞ��r���)����R�^��W�H��݉eF3%}Q��齣�3 ���j�A�����s�)¥�[����G�j�������pwL/�Hha�~,OL����,����d�Xߛ!�ߌ4��<�EE��b�W乐#-tǛ��X��ݪX�L�3O�k����������4����4�h�L{ϓ3��S�5��`V����+�ښe�F�>o�.fFL��4[cts��̝�r��x<����x%f?��tg�0���ɍ��ϙ�ڼ��s��`�X�H+��.?�So9r�o��������~�@)M�i+8���aO��E�w������nW�8�o6z6_<>l�G��cYt�^�N:E'�Er��>��r��%b}	�(�X��*M����[3jm�S�6�������������.��d�g��L��ĢG&L���zQ���L�j�Y"�u�Z��w�GFoEg�3����[�[�7sw�f�����~������n���kx�z�F���5�p
]���J1v]�x�Xo@�����R<�5Ŧ���=�Z�;���[�ߎ�O1���O���C70+9)"��)�b}u5Ux��֎�F*��Zm\�'�3�8=�����wFt䥕��J�>J���������������p�tX������Ϗ��k�Nʦl��@֗�uQ�-�\��n�'�^���Ď��W�*#X��yF����v�?7�qa�'��4�����n�-��$r��Ǜw;�>M	��u�qN�҉�i�%3$�����j+}M���=���-є�h2��������H��2
����Q�\�~ONX�#Frr&�KOo�6����n�;޾E���p�x�C=����=1���#ѾE)�u����ŎD8Wv��%'D!�㦅$Y� �j�C�x~Zh�X���E��A� �r�-���Y+u%�ʑ�pJ:��O������WO��#pN@ޮW��@X�,��y�(�+X��LN�O���^�S 0dV��$	Ƣ�"e�%�H� k,� yO�W�;�i+��� }Dp���	�39�tu��h5���Q7��X�@fX�)�'� ��y����i֡#e.�V�5��j�T<��:d}z�Zs�վ���j���Ԫ2��NBj�/�:�?)_�v�����$�� �4<��*1(c4���o?� �̒�Un~K��,K�D�T���'��\?!��yȱ��]D��uB���3�S��\2W\R`����E�_Q�qصr�����8���~�����,K���)yE*�\sfJޗ�q�S���(Au�g 1'�a��(�������PFa 7���q�xy��zGNT��E��TC���!@�����Й�:A���<�1&vբ����E�:��J$�kc��L��$���p�6j}s�>>l���C҂����>O:�Ĥ3+8g��")E % #W�T)t{
��A�i���5�b7�p�wP(����;�����]��j��)������v�{��x��-]���-5�gV�͖+����>)`t��/]m�#Q7d,���e)�؝��P	�[�!��|���(�ir$ �(Yn���e�)����W�$��@�	(��9&-J_�8����9�2�zA�w+7�T�՜;@�eL=<u�'x��##1��}������nK1h��E�E�ь������84VAm��_���J�ӛ����i��b�y�,9���ٙ�%b}ih(ᑀ%��Y
��\�����F�,��I�1/�V�|lzS�3�\bP^��/�[	H�� ) -*�&�4��J��689*�����	!�3zK�K����2�� 6(�N�Qy]�Q���U�aT�V��[��D�~����Ժ�.��@T���,�����॰(�+:ъ�$3ϸj%E�Cf&�>�K��F�pL>��dÉ"�i'��A�Q%`I�ܔ�9�`ϴ�֭]��?�3���t�~w6�S��lĳ6�I�����g�6�F=@�����:����M&�~�y���2jf
�|$?�s�H1^�؜EZ]�bF��H �XP�V�f&�n=+��6�N�g���3���:��Uo>�����ɤ*�H! ����Uޒ��c$z�t�σ�Ѭ�Z7ψ
)�Y�X?A�^��؃�5�!/y�@��L�|�0��Sq��C�Bm]���MCo�<�U#BS~�{�:>8p�_?�韞��������L�>/AFŌIL�t
l\C/��d9���"X�2#7R@O��ZG�Z�����a�@�`�'xMʞ��JȪ�5�rx+��z)=��,y E�d%��,����$���)r�w@:�k`��!�q�qd՚;PH��
0&�y^�ѸJ@(�y�)V�iD��WfY�F���^��VG*ak|��P�V|�����r��"w� C�v�~�����q�X��hr�@�/|qF�b�����Yf���3�	t��@E�jF��8Dܫ�=9|�%
��u
Y)POW���L�'�^��ｶ�9��
N�B���f�z��6r
�r�QW%/�����D������Qp���> T�l#��!��c/�C"!�noZ"����DW󤆾'2S�1��PT,�����N7�a�qNk��	�\i�3S:�"vjSw�;Nh!�'H���L� 'O�W@r��	@����'x�ש���s���Agv�'Hą,�j�|�!�ǉ�ȱC�N����0�K6'�0����R�Zx�t��u�s��̈��%�6_�!�uj�äi�j�/� �xVwh�=�If݁�X4z��ڂ�"��    {��؁��,n�ͥ��|I.�~����������}�����72L����U��e^�f@��:WH��*YH������>����>��Ѥ�Y���ȡOj  ����sF�]j��i����HŗeѾ$>*��'7� �T*W�	-�k�E�K����P+/Y���+q��9�G����ׁ�'�*��a|�^PLF��
a�{�t�r���z��.3n�.ܨ��H�5���hY�*`G0����f�X�KP0+�H��gu����s  X#iX������/��AG$Y�M#�p}v*��
�.6�GF��P�͛*�� ?�z��YiD�Rb"�񰊟�-��.���K#�X��N�;ýF["�@B-1���H,�e���� ����lp�Z%��K�?�a2f�-%���f3}�i�M~�I��ˬ_q��]�xHǌ�]Pflbu�ҫ��\"��CvF'Z8���z�[0�!Z�
ڊ<s3�x��������Cc��S���܁�X�X��G�L�]��bE`u�����(�CLɺ�p�x�A���U��7���A���9���C�I
��G�`����`5��Gۜ �#9t�z��^�u�[���p�Ч�|?��Y+���ĺ�H��{ty�zc�2v��~�I ��7�(�T� 	KJ7a<��!���,U����2�8��*6(��;v "��X��[�"s�Oi&\�3�k����^��Wu��,�szu0�D�K����fR��)�x�ݒ���:���M�"��DZʹL@������l����7C�YNZ5m�Q|�rl�X���h��@2���G�D�*�F�n2^"�秸������� Ůrl�td�`5���*���w��J0�Z|#� �6�0z	�G�xf����	Nۜ�1��q����m(�&u��Ko��F�͖�) [ �;� ����)7�h:
�[[��^�ڕH�V���� n��Mr�YO��9}�;�8�$@�Y'�F�R���������j=��<� �WcC��;�z_��j��~wdN[j�6�xsB���z-���UL�z�Nn:�tk]�E��@����]B?�I��c��Y�|"����3�J�d�<���r���%���
Y�!��b�L[I�`���t��}uT��%��rT���ZMly!�s��G�Ⱦ�V
g�^e��i��f{H����p`�a��q��������`4
25��P�H�>ir��qa1P�6��H�/w2�O&^x ��p�؅�II,pid>�VĒV����<�?�\�A�ԓߵs�S���}m�Ęx1m��A�\\������B97��ȹc�Z������r�"�>�FxG!ڷ��0^�' j�d]�8o��-���X�77��^��������0�����	���
�~JF7�<����0��J�[�j���(V;�K���x,v1x�7Mj���2uN�b" � ��8�tn.3�R�S5.�����ݴ�e;�������#	�����f#+3�1K#�aK�lMq���?iC�FkS\�nk�X_g�2���%�,�+24�3�`C���"�1�؎0D�eW��b��#˒=%�#�>�.\B?�������Ӫ�/w��/�W���s��xs��/vH[��>^���t>�ϛߒ{w_4{ɀ�2����,�H��I�n�"���5�"���RC�%��T������W��'�6�zX_<���Y�#���1���W��g,4�\����zqd�j�l�Xga@{SdA:��~wi���Q��y�ϟn�P��O,���ˣ
�yA_����Ϝ��G��#y)OaP�E��ڨ� ��y�<SH=�a�������$�[�W$ �<�"�DX(u��)�AGW� �X�'���V����e� ��˪l,>iԈE}�`(p���a��(���<����ߪ]\��&*�ƨ�4@�@��TI�Y�������F�%b������6=$�8�2�1,eծs#U�[u�åT[5yHz4=�~4�u����c�5�1j�x��|;V�K���QZ1yG�۴����3Ʋ��
T��ʴ)D��ڦ�m>=��yC�(����ݮ5L�޾Uȷ��mgz�)�$v\�ůMiY��i2�';7^�˘n'���,K�ӗ�D�؜ �(X' �hN ���GKd� 
l�� g�d�V��gl�H<E����uM>l�D^��@�h����pX�zw����9�)0u��2g"�-,�D�l�[ǊK��2?��m��&��6���W��#�0ڜ (LuwD,A΅,���� �������L�?���-X!W3C�$ҳ�b��� ��x����9�&00�Z��["�%��ܸ�*#/�\.�*9e�zf�\m�WS�B��<��ԁ�&����9f�%a�u���b>`�Y�2r��w������Ɖ��M^��Wb��bsړ����("+�Y���nYZ.�R���Ajv_��b+[0N'���(ĥXt*�����O�C2����Q�xtY. ���z��."^"��6h7�zG���'B��Kb.Ct�NЋ��,�s%�����>��	F� �'��Vw�;H;�[g9q�?K���(��見g�S��oبKl�.�G���&]�|�V��<0
bZ��N!-�sH��1 ��6�N��U����8g#�F��+�F���#)���)��(��_?=���i���O��7O(��_K6����C�mGR
a��=S�`�^.%(��.�՞���6<�sdԤA��:4d�x�s�.5��o����_�bw����_��$�*�?~5V��0t���ת��ڟ�2+ϥ����s��t�H ����Dl�����=�[�n�uM�m��t�ҿ�����݁���[���7��7����������ի\c�T��y�n�c`≣
�$�'T!O-�G���p�sq���%�)�8��ɓ�%�L����Q�.�ɨ��|�\�fMP c:�����'��mqs����J���	Y�t䖸E���h5����h�����Z�n�����9�)�ͷ�=\��1_Lzʵ�������Aǥ��L�#ASŜ�W�-�K½��_�/�<�9� 8'U�u���0�3J�R��r"=Y$6�2�������e�%�-rks&`��p�<ǲ E�@�a���6�傒�u��S��Bt�����zєw^o?����W'?�̭�v�F�� �t��]���$xtޓ���(�Aƕ�%b}�V[U�1�t��wL��s"��"� ՗i	3[݇�k�	��]�[�R�-����/��6[�).XzG�~1;*��+1|xtݤ~}����g�Z�*۠�!�}�tfG�[�V�|��>s�骓,=ݐe�|~xwHe��df%N{#O�jCaN͈qΟs�0am�a�X�Z��z���}^"Y�ٚ�	[���z��|�t|��۽��_���,[��'c��>ם���6�.)��B������=a�X�h��饾u�\ylȑ��g�pQ���D�% �RJ/�����^lW�x��d�3;�ݸ��SZ�=?��v�ƈ��Pb1�t]��Jy�&}ړ�n�1�V��ogzM�-K+u�J?��あ�-I�ᡠ�-�@� h��詥�GF�҉�ן��
�:��lB_U.ts�eS��s=?�w�ׇ���&�_�`~���� �h΢�䇠���#^����H��@+c�n��)�S�]t�w�����뷍@<�D|��ݻ��`��N�cR4��)k��j�X"�%9G�d��W�;�2��Tv�T0�p�O����W��+r��7��W���o�:^�����;�ͷw��vy��^�Ҋ,�)��@Py8��@�H��~eh�@�o����o�5Pw G�*��E`��E��ڡ�����X���g�o�ֶ��>.%�<�37r&#<�Y�����G��7�Ni��7J;ĠZ�-����5�Eb˗>��/ezs��p�A\�ЮC�n�e~��zA`�����J�qHI�g�f���~�/a�*3��Io�jJ!��6�Eb}A��:�(�cG�^2������*���Ĺ=[    Z_ZE�q҃|���%��UO�tt����TJ���n�x)�"lG7��Y�Yn�#1e��&�B�|ι1d�&�T}�QB�P�58
k�"�>����"v��EK��>�x�����DA7>`�̌�d�N���颿,�i1ۘp�ca	�ǦEQu���	�lS��@�yNsq�X>�ܱ&�c�K�I��h��3��ڍ/�3�ݘ9wl>*�1 :B����"W{�X_��p�K g(T�K�sOacS���Ø`���T�}CO0Bxem��&�	Ϡot�G�rz��"o}k����9��*>��i�s�0[���RnU[��>�x�B��x�ܸ���ҳ�>I�M�>Za��i("�[�ݹԘ�vO���Z���	�a�t>�L�3��!����/z��+=�gz���%�G���._�]�H��
��\�����G�(�_�ROi�;��d��[���w8����$/*���eH������p*��_�I�@�wV��O�`�d�$O�z%�N`r�����:m.i�I���G�����YUr�|����x�j�}ޘ���C��2-��"�{|�)���X�U�j�
p����ʄ��.0iѩ��#��\v5"�gD�^�b&�Y���4�����f�Y��Hs��თZ�O�H�S��8 �W�C�|{���
K�ї����Ee�U%�;�"�x�+��*;?�c���w@x��X�N?��6J�-�a<��ڶe/�&t|s��M��-+1i�QG�i:��I'�cP�f=�Ԯ�:���.,���Q1�0jrPX��^�7&ap;�����+�s�8�.Èj&w6>fg����K�J�X�f���C�"E���ê�Eb/\�L��~�-`N�h�:�߂�焢�� ����c��`��=��y���s�`�#�D ?�x,�R���/�:�E�r'w�B{�m;��j<7�.�Fe�W�#�h�~�����м]�p+��5Xf���h����Dy8��5/�K��N@^����?^b.�h
6���h�S,v7�Ȥ_��}�I��`��y�u�(͸:,*q�;,�q�^בh�ӆ��w�-|yt4���ݜW��S/�C�g�Btn, �x��1.��Vca��R ��3]"���:[o�L��>�a���ȭ����󸉯o��nZ�2ԅ���l�hn� �<sQv��wG������K��r\�� ei����ol�*4X�Q���H@D�$�3��J�&�D�	R���2[*Ⱦ�����$nQ�bX��~�������G,��:|��8�����������Z�r�$y����ɖ���L3AW�K<���tu�#�Eb}�a����Β;-Vms�CEBn�1�
 ����j����һK{��Y?�8���	wf&-l�n8��9�V�|ґ�I^�����d�A�[YY���g�q낀%b]�D!~�GqJ��;��ئ���� �`7X����\OOɣV>���z�D���)��Y׎�.�+b��:�ѶOTڒ�M6��\�K�ʶ&/΋ٗǻ�l/�W4��Z�~� ��=s��^]4�U�)�k[�.�R~��@�~B�_Z��O "��UN��lcu�j����1}�x�8r���v��N8���Ƕ|��Oo|{������|��y|_�BG�P��H�7���i'-��L�8d@ܾ�Zx�>�_"��B���%XD<xI@�����=s���qn�ʤⱟ�SUBV΃�n��P��|�����if�)f'e��(F2h���t����Xa,ZFm�G���S)Q5'Pi�YG�R�-�1��'��V��o�?l�z *Ѳi*+���+��|��:�2L��R�JA��v���(C�&���q�X�3`[mmҴ�:�@_��,��,=eG�N����:�>��h��������yKO����EJ;�$��j����VhW�5�֘�x/�G���C¬��oZ"�eflcfz
Eκd�f,�D{�#	��o�wrCI�������0W�l��Lx�Ox!���U�4d������P�G�i+�hD�`5�~U�>��ׂ\��cD����;����@ `h��7���y�bFi�^9߯����bb���>3-�\�?�͎��IN�V8y��ͩ�gM��#������&�+]��tQ�l�����R8r�Egޢ��C@K�C�df�.��v���jF!����'vPsq�NpSv�v����%;�9b���G�HpÿX��{��������K)G�L7IҸ��/뫾�j%���T��� � h*����*d�-�?�=v���'���' �O֦�)&����v�����~��#�8"?{|6�15��<N��ZF9Ā�Y=�H�O+x�2�v�Pp�r:m�(����(�fx1r�eã�����Z�N���IiUۂ����㮹�zs�v����{�t>����W����]TMS�7e��ٺ��Np�#xb���pY�{��EW�-��dM�@A���/՚T�s��APX�k^"O���7yjM_�YL۳u�X�̹��R�-�B�Jꄕ^� �Yh�����8u��}�2���UOb$�#7]T�ő���j��H�K��X�l �b0��hx`�U?(м�F��zM��O�G��4�@��EyA
c�ml��3��XU��>���c���T$�{�<�����Ww�����},���i�E�f�e�\aQL�����ݬ�3.�k�UF�)c+9N��2v�s�*�N��R�Ҟ��q[&
���_|}�Ӿ�S���p��7�z��/�>���ߙs�@_M7'��ހi����H�O!��z�J�:Dc��Y����&��b�,�Q�?[Z�j�� &�S���,g�����γb.Y<c��Gw�\����5 ����:H9��B���q���Eb}��0$�R�Rc�����ţ͕�=��RO������M�`w��!�Q�L�n��?��W�'��\XcNOA�͘�����H�(�Co�ʧ$�9{$�f�5�\�� �]D��̪p&��':j�9<�:E%�N��IM���(�DzHY	�%0?�_6��4�g�iCK� <����H�CZ֍$�d`X�ʾ�<�U�t �fPv�j6���V��r�	hC�̰��.vM�&s3;�lDL���>>T�n�q&�H.�,l����Y3C�9Ǉ��@JK��J���B����D�l��M|Zt��T�,q��̲'���D����lC���bM[<��G���f��o��s�ڔ��1,"�N�Ճ�K��<;=½��u+�	��/��ʇ�Z���IR�����IࢫS����q5,����=���,Es���F���6?�BW(�W��`b�+̞�϶��]V���K��Z!��� ?�F�/�DzҺzgCT��π{2�m���EZvu8	����Xaz|�z_"�S@��`��(�9Dp�	$����	�K�'Q?��|b�k_s�X_V\�ܛ�J*��I
3�y�|4� ���X�����db��R�����!��f��H*پ�����=<��`]�Ŵ�-�b2�u��ל����;��/�D�/vBő@@��B��hZM*��L���� �v	�9��@fz"�zR�d����<�vN���[d���̭Nt��M�4��^����cKĺBHҩ�PGb+a���+3�Eie�Ҭ�G��w{+`f�=*ie%灖��R\�r��@�����~w���x��
Ry�0���{,j��x�!w�w#>*�Q٬����֎�q�́Z�\pfF�t�q�c��
-��J'�8<%~" C�8���r�g\� ���1��tR���#��[�3��paD�� jS����hO!^l�wy�N`�N�I�'p*՜��[�+=��byFI�|������`*l�g&'�ND�cqb ��p"���yK�ɭ��	<�<��09lZg}�����#��b�'��]VAH�Y��M��	ϻ�Ҽ:�Q;�3Ft�fw�A��k��h��x�/d^x�����c�	�m� %�P� �X��H�}���fg���,����'����IK��'-��v����    ����Wwכ��?�m�����:��`4:�X3�*&���ƃ���*���������J�,v���.C��P�w8�eFg�	����2�3��~��gv/yJy����w�Q����(��I�I%3x��7��&ϼ�
V�^�[�Ꚏѳ���5u���K�RG�DS�+d%@��[�+��Ҧ-���B�t�@������Q�FG憥Y����K�n�y�y)�xe<�Ⱦ�R>������Iq��N'P��&���!EL��
+���,�Bޥs#E�"� ��<D�Ϻ̶{X��$���D��6_��nvՖ`���X32���W�<��4i����m�:#(P��b�e^o[���PJ+4���&
}�� �,h�%�ɻ��O`��(m�8r���>�� ژ	8����f�Z�����6aO��w�6�ov��ʹi0[�!u������H>Ͼv���Ǘ�QP��HO����1 G]͌K��bh%��R(��#EjN7��i6}�ļ��]�~y�<d�8.�K�^�
���<��@&y0˄�p޲�1h@A�WH->�u����	(V�r��^�J CѬg�{SV6w ̂>�`�z;j�d�[� _�	� 	�F����DA-�(�FD\r�֢6L�X6y���zf��*��˭���ɡ ��wr��w"�N��s�<	7����\Eh� $O�M��|�u������`ei���NeFa �y8����e�b�,�2$��H Z�0[�4~J �>�Y�M%�:A@��������ӗ\,+湥�xÂ�&�J�(V`�R
7F�hFO���UO�v�J=��M�5��Fam�t�D25�_TՌ,���o��,���s�idT{ky#�h�O ����Y^��&� Гv7m.����N�,:�������ͫ=��������f�r��3>� �F �0b'{5i{� �d���Eb}et�h_	H�N�s���l�[?i>���92�sD���7��ۺX��f�u�LTߙ]�������"El$4k���u����䀳�^cj�e�_x�����r�i޴Sg�O�W��M����=C������ ��8ڙ/�5��K�H��H�~�(�+k�^��U�(�jh�"o�mF@�ռ�i�!�6��@.��MRx�'8���Bs}�~S�'=���ju��hlO�~��>���q�d��7���φcZm"Ib��6xwE#�n��c���>W�xqPG���*�s���Ԍ'0X"��viUuD���::�
��nۋ�iӲ:L��|����}�����,K�Gv���'�8��#���D)͓y��/�^'^�L������X��� M6l�A�)�P��Y�	�0�bI�
݈�dj�,'p�v�,/ͥU~�MF%u�.��e����d�Z�G����٩��9�W�[KTIB5���a��Z�@��+ǚ�BQ����id�|�*�k}�U=�Z�%�"69�>�/<�<�i6���=f!�\|I�~2�
-�{���>D$g�]+�y��yɹA�
7�^5r��?K�%�<�z����;�F�ۿc�ȫ;�?L�(�����?������z��6ꂄ���a�,�Jr��n�����!�ݳ��P�Q��F2G�0�0\���3��@KpHk�y-�+GD-+�
��<�0� (LsHI�st��4G��'f���[;���0�H�z��+ ] '%N����-0xH��o�ϻ���x�3�xh��7����)�z`��J�Pyj�H�,���D|Ә��	�S:������r�*��D ۛ�fp�Qe��pO����ج؜ ��s>�׶��',H�h.E��ɋ3zU �U�m�7&�b��O7���ow����݃	�0���P*���)2F5B;rǪbR���EK�Z�ٖ��������@�A[79C1w���w�Ŏ��K�D7�ya
ZO�5f�;�ʚ�D��Q��dG=�F�6�$�j�E嵱�ckys�t����b߫���P�nK��A����KY�nx�����p�X_���>� f�3��z!����	,�� i�bX�
%���.�����\�qYwe�O�����7_�P�6�4E�0���%�9?&����s�#�٭V]K��2U���Q�L��Kq8�����ɠ���b�
������{�0�1�q�UP\�S��.����J�{�G|�a�,�<$�>��>�������^3z���M�6<b����_��Z�Y$��Q0�'Oe(K�cb[��� {�)2d�G�H�<Q�����,^zy���@�����ջ����&�t��҃t�F���x���!�ƅ����"e��|�p\3�@���=��o��� �^r�E�]����'}0I���o����sӻK�t>����*$3�����T�ʉULR�}�轍�.�<����I�Bb'���87����/�4aKL���_���~87�=|��	i%���暌����w%d������w�e7�Y|;a��bp�
u)[KR�����W��'��7L�e�(*c��5X#3�`1��DXT�!���l��[3�(��������a����?\��0�ܼ"�rX�c�()��a:2�C�:R��I�:����g�S����L;���*u�?�^ѓ�eGF��T�[�c�/�>1���ޖC������G~ާ�ne�]X55/���C�i߿{��ݟ���E����@˼D�$��cJ��.(���U�"���K,�.y���z�n,Q&6l�0 �ڏ��a�'&Tw��o��[A��l����m��j�mVZ=���E�0���{�,��zw}���x0���T�,sv�/J�!Z��h>�d(-�:��hp*�Ӏ"���m��Q���v+'v�Lc�1g��fwwl�^����������v_����&E�Q_��A0W��|Ut�LK5�[�P�u=�� O4�,��\���Q��u�����r�`�>z����]��e�����ShЩ6i=��3�>�_%����z��]��T�ذ�i._��Ft��A0���Tn�\xT�Y]�Z"���F�1�D !��Iʀ9� �g�%�FQ#3�����0׈n�S�������ǻ����З�pһX6NƲ��'P^m�42%@��h��kh6݄����`ࠡ/�"a�˄"�n�Hg�����lR�ɶ����')z����7�����#~��*m��{<\�n�ݕr�ѧ�l�8�i�g��� D|,򰜳i�Һvv��3���<�d'���g*'F?��P��㒕T7�H�	����@pN�ɊB��	А�)�Ӗw�љ�ү0�H>�΅�^dr���z�mx���T}q��w�V�]��F�)ћ�w�(2��ǜn��h݂����"�_dQ�����X��c���w&�Љ�~�Gv��*�?Z��1� Ɛ8M�/kL���
�4�Z�'Ov�U�\���oj�)fy�b������@j*@'�U�u�\�T��96'M��pzeP:�Z5@��8�	�<!U����O�u��2x��?�����	���M���l�n҉�ϟ ��yw�Bů��J��*�n�n ����u��\�N�oA&�DL͋$�����4�U�ݧ���%z@_	��H�Est�z$�I���=f��OЗVl�i;�\]]:<jz���O�o�e��lB���o����e�B��lUHno98�����%���O�.�"�D��8N5�H|�Η��O��T���vws�Q�T �T��d���0{��	$ ��ʃ���Ȃh��$ڦ�N��p�0�0��L5���ۗ���&;���dly����X!���8��h��V�k�� ����:�E���@O�G���|�h�_y�`��f�v���M[�P���Ԥ�*0��Ah$3���"�N�6�Z06y|&�1F5}�'0�G���O���,`���mQ�P!�J3����O�������0�T_Aa+�<���(�u",ppT�u% �{Ń�V�8�e�q� �=�<������W��Z�	�3��x� F�    ��V���� Ӊw�.	e��\j�  �<> ��&��'0B70��4<�|�hP�\���9�0���]
�%����*ގJг��Y��3P~��}(>���!]c3�#�
���ҘU�	�ĺ^ބ�}Z�mA-�����$���+p����w��3�\�G����}ʍ�_?�c�ػ�,�BN���b���ZK�
��Ȥ�˪,�Q��Ɇ��y�X_6ȗmu��%g��Yv�&����Z9�F���{��f���MYAE�Q�m�����o���v���7���}�X�}s���f��w7��4~k��"��5ZFI�3[�\v<��uZs�� �Z"�eք��T����~ "/d@ �N�:���p>�Yd�p	�si9�%�)79 ��ߠ�9i������D��猺��Z�S/D,3QN���,;YC�mtkya�X�\�(�� �tJ3�k�eC ��,^�SGGh򏢏̌�Pjaj��Ŝm K�` �X;a�c]��l��<�`ȹv���.�o�%�Eb�C
j�0#�8HT� �]
�𶫍CO��m�P0dV��bfͪ�S��	HC����"��~����Z(��j�����-� �qT%@�`-����H�������h+ HVs�q�A�DȖdqb��e�0zj�,�rj��X�y����R]d�(�,�A2��6��f͟�49�0R�#��@S��	�w���)m�D�e�ثUsm��5a2p��Y���񀱖O���=bԾ5�F|4E�?[+u���%���`��w�o����]"��R� �x��$v�Bt��bi����'�X)A$NlK  �OPQMN���}���
�Rr2��}/2Ͻ~�z�����M�Ź���W�����0H�qT���2Kܨ"63Q�arF7A�:�=I�+j�K���)s7�ύAqx�6#���ԯؼ�'�d��Y^�+>���;Yr�Ŝ^�Y�ޔ�\�YQX�%��4b�X!U�ɵo�<��䦱�]K9x�V�G5=O5�OI�!3 %A��d����ɧ5-@��Oy&j��}�{x��!���û��c2rq}�4�h���N���*�q��IL�ڼ?�aQaFd�RY$��j�7��kdم�R��Τ�Cʭ�-Wg]�%QF��Ƴd�T�"x欈��9���4��&�C�%b}�zt�f�7j�S�9��O��Œr ���vz{Q	(t��P �� � �2Y�<$Ӟ�J�}�&æ�KĨ�1��ɫ�%!`�9���r�`�CG�
�"�1�'�!��:��>���	/�TX~ZO@�%���=Ŏψ�T��e�ļ���<N���Л����M�:(j�+[�e��3���c����>z�N):�1��ڳ��h�fN�z���rs���|ԕJq�X'aq�(φ<V'Y��Ԙ�[%��۝<9�y�����ƞ�O���pj<� ������2&4'���۹�A$ǝu��ں@G��� =#^�g��`G��2ЫU��~<=��e�hU��O0���8Ya5�$zky0�d�L��>;�cbi�U�M	y�N%�Q��Q{A'�W������-I�$t_�Z'-�-���pCt�UFq�8)R�^�t�B���Z2��N·�'���L�2nJ��T��U�8I�Ib��Z��bL;����*,���L���H@X)x�l%���L��h��V�<�`���>S��V����;\'F���t��/חR`����E�Ji袤��c�@aq)�$�\�N����p.�j��D���3��ⅉ$O�m�:�m@�B0�A�TC 0��,3�����@�`yL�zyQk�0�$2N���$KJ��*����?g3&�f�VDצl�@y�W�qs��*^����yw�y"�Qk�G�F5d�~������	�2rU�ive�M5x�ޮͭ.�{ d'�
���,�d-*o��	�fa{����e��k�v�{?,Kǒ���~�E�@y��f��vÐF0<��������&�ӗ�v+^n3�=-������ٹ�%b}��j���I@x��K���bD��|��^��93�}��6�I"!��� �,�oGЯ�N)'��x��f��9�ܑD�Ջ��-_�ɞ��mI�ۋ� ���:u��p��I�7"qx�S|�I���0�<mdڐ7���j���D�U�;�M˔ooӌN���3VG���O �#y�,X�[խN;Fy�4r��H@�_/X���N@�[�Cޓ��W��gr�d�����E��7���S<> o���ؤ�:6���3^X�$}�C�����# �����)�Y4H��-b�	���k��(x����7I�Yܤ�U�0Zbs��1�`�6d.�l &bm@ՌH~B�L�r���ؓ�a+$a#����1�I' �*PEk[U `"�'�l�Sh
�"�RV	����	@�mN``�8���&H��� 
Ya�l���w^�4��bb�����4I����LE�
�a���P��Pg�U�t��8�K]�d�Ω�3s )'jQ�T�M�����B�:��L;�xcBI7k" d��y�Eb}-�.�a�Y�H3�6 $��5��V�i(ލ<��H�J�kp�ZD��8�
�	���O�	�d�J δoX/y�@j�T�	�9��j���@�jV��G�B�
By�u#?kt7A��K�ԢC]��;�+�,ۂf�� 
�!t፹8��N��m+cP+�RS���R��UJX���&���Q�a�k=����7�IKex�(�l�����
dѢ��%`��#����-��� �^�~�u�f�	<������F�-oy2�j��o��*V5M?�E��5�\6V)��pp6�UWKx'$O1���C�	Ę<�wI��<�L.���ӂ7@�U����Z�:%�e�	�����	��)��&�e]
���zF1�9�I��U��"�C����w|�{7$C7��M睛�^{�<��yx�1=o�����1R4Dу�	|8�Eb}1q�Z�|Z�:%p�a�i�S�o�o�ăYz�^b�:�m�8���KHk-h���FL�F��\��^$�'�A�L����wL% ,&^{��yu�3�
���O`@����G�<HNv�Z��O5�A�{�Ob+�ZP�b}���J�`:�4�d��,TL��?��$�-ydR�RF�	@��`����Jn�v"`C������}�3� �B|����`�,.s� �.GcZ���pl�������Zz�UC�*�/��敀�:2#3  W��s^��H;6w�0����E]Zf���^�	���+l{��ax�b)I��Ӽax��#���\���wJG��4���^��� y���۫9��&��hw1H����g��<
<l����_O�������ko_�k��-^�b�����Y��X ��+U	H#yy/d�}% ������O $�g
��zo傏�. ��O(��6���� !��@��mF�b�2�8����RC<�4��NO��g���	��}�av<^J������o�7��=����-Y���W��@}�������� �r�
z��`b��U�=�m�ձt��3�K�:��θ�@�H�Z��v�+C����h�9Yk���4�Y6�˟*l>��Φ.���ߤv�/��w���	���f{7�n�-�C�����V�*�Pס��.0����M#:U����%b}�9E��P�0�oH�|s�u��cU*�g��yҮn�D�s�+qp�E'C�q�:���ͣ�Z~�&�gQ�W�RR420��U�����r67�Ցg�����Y��1�nrߊ'E^�[��H���S^�%�J眱p��� ��	��2�̈��Z���ʄ���)(c��@^�� @�;/���:r$����ٵw�x���ǧ+,���	��3%y!p�=�Q�Ɠa�S�KF�z�VkxEr��O0�2?���Ȅ G�����	��jRª�2�}^8itC�	渱�(��ܒ.{8A �#��,�@�dF"ҕ^C    ?���4Y� Y*�+ԨҴ��V�tR�M=iD�R��%]^jL�f�O�'�h�At�e��'&�`bJ�����36��ʎ"/��������u�����������z_��Do�x����z�_�!!U��"�u2�)�d  ��;��\&�i��5K^N%�ڐ|_�0����6�6[%���������eV����l��X�_�ܜV��Fl�hg�����?�s�~�U>(a�ab�G�?J�`�Z@V�V �R�+�i���1�"�����eh�h�9R^K,K,A����K����	@T�������M0:�dw@^���0�����$y=k����
ʪ��aqؿR�� �ȱVF�R�;@���c''���ц��`���y�80��(l�	�8�2:�,I{]b�v�jE"����6��v���5��!���щ�ħn���2[�
,ά'��^� 99A`ɂ֘F�N�u��1� 㛬=<�F>��8�B��mVȐ�1�dA��K� ���ʤ�\s,�i$E�S}F�P�V�x77�j/uؒ�l��x�{�;|H�̻��e����~C�x��Ç�bO�1G?�$E�Ր�nԹe��K���z[����S/��V��z�#�x��	�}	9ч���\iG^�U<����?<��@��]����#kz<�����)>k�~��m�BRD��xbd�QZ��_�-�kՙ�����	9�	 �R�&�`s��	XFl���x�@ʬբ%_��+2���l���,�\��Tzk�$ȴ��YN`��fI��23z�y1f =�=�|�*��s���o�Y���Ow�������b)}=+�+�cΨ=�>U)�yv��c�+�V1�i��,�� �J��F�"q���D"e��%b]c�#)P���R�PO���W�}���r?/��Z;I���?`��+������Y9��g�T�
�^�iAmd�k�����b�����ȵ6#��ě���j	�-E	 {�k*�(�j	 y��Kq~͈P['�^X�K�{yՊ���Gok�t����]�b}�'�*������|�x�%ybx+O�W/NȜU }���hh�;�䵞�F�� �r����b�8�u�0��/�%`�s$��2U/?*��[��^"��>=NH/��%��Ł|�PO����q3�4E�	����,/�YӨ��u؈	���$���j�'w�g�R�ӕҭ�Eb�fZ�*�XI��K���H@3�Cd��@T�y�4��1(��<U�Bk���rn��_j��-����}j�@����9�fX�/O� ?�L+���x�[��v��Ϯ�����F�Jʆ��<��so�	�6�Y�A�R����f>���1��h�����8�m�	����/rY ����8+g�`������:��➬C��&i���&31v���������ç�Vј�0z��ya�X�^u�` +Ni+y҄��	X�b��ʑ�b ϶�Ϯ��v.��InN`���tY�\�> �I֪e�fQI�̅YG8NP/��u0�a�e��S��	9��ȴ�qu#�yb}� +3�dE�����/���0�?�����V$=Z� �sM_�1��ĒQ[�'6��!�6�31쯱�<���ớ��-S��U�Rܝ�1���-5A�����Ռ��;_�qp,^��I%�euȴ�C�m;�C���l�d����������C������o��� މ���4֯-a�o��}�}��������([�����fM�w!�	��x�	�j�OP.)����yGŚ���`g���R�Ɲ�H7�oK��Y�`R�H�
&`yڥdC�\�z�`1�Z�aoz��YO��d����0����H�;��}�y[��*�<�(�7QI^��Y)����C�,�+[��
�i����\�F>�@��	�~g=;4iQ�����q"t��СFL�<�x���n���糲�4�K��>�*08�p�)����j73�2�[��z^��@K]Í>�e=z��B�Ȍ�q�MO�K�!b�$p�>y�������"��.�4���,�Ga�������o�؀�:��H��O�Q	`�>�z�n+�<� u���Ũ� G��|������f'N���N��5�~2	��R ��z	�[01�6Q�d�N��e���@��oښJ���f5��Ԁ��*���L�?o�q�4} w��� �� ��)�排�8�"@��M�R�����>�t�x���[��'�΂%�h{j��,P�*T�y��ФS	�ke��B��x�'x \O?!��?6¤��ꂗ�Bi��X�(t�eD1�C��!���&v@�J pT�>|�����/Xw�����B L�c�D��@%�S�R׾y>�y҂��lgi� �S���*�lR�FY	X�W�>�
��1�J`0����.a%W�fÞ�a�&#$���6J�,:��H@b���0�Y'e��o�Q��^��yr�uXGX���ߥ:��.���ͧ�n��6Ro^�nJW�ZXe��W�=^FEZQZ"��������"��УZ7" �����'���h�^~/Y�"���	�IX��ɵ��\M<a�*��.R��n#�-�Ň����������Ǉ���o(��������~���-|����gw���F�bUkc�i��U�#����Erb�\�
p����s�vk��-�.����������a��S�������~����"j���}9�r���{��-_��X��k��Rջ�1��t�y�����}�u!�ɯv����]��7�?'���˖$anzن~��v^��^Fs���V`'
l�:p�Eb}N��D �s}����ٌh������|�~������G��ݿ#�t���DU1�DN�D��nIL�ty��J�e�z��
�^<�Hl��=Ww��M`�����=�������y����޽���w		���!��=�獶�]Y��B1^+�x��`u(�kg=t�z<�Eb�YEWѬ=P�Y�C�e�	$M�g��J�k��I�}HU�䤊�.H�;K���X��K��	����3�$藤ܒ��>��O����nw�à�0��ת����<B��oa��$Sҝn��%%L���1j��*�~%_�}�Eb}�v0%?N��<ʙw�B͊��[m'>�o�ar�E�����w����d��'��|2<��n)�i��$������� JY�*�4�V"&��*�a���;�z\oN����z���������6���R[���U�0��j��H�/� �У�"�K3����UX�_��"�����5c}�����N^�����I0���3��N<	������lC�v�U)�G؟b}OMI8��Xt���/�8A�4��)�
��R�)�������������,~�"����/�
��=�A��A%/,P ;�.�9K��&%e5@h��/J���� ���)h��#+��V(����(�z�ʴ�3At���ؽ�!i������|`�Ӂ��F팥�� %��)�څ�!#v�Y)�K���XP�hgi-hZI%�	(�>]�s����B�����v[��6����$q_d�$m/�]�!a�6�K��
�f\�ڨ���AρH�K)�r�ܨ�j�B��¸%��Chnv�/J�B��@8� i9^.�[D5���Yf�\���	<�Qt���?B����VL�^V >*�c}g�E�MFp>�~��b1�y}�?f�Q�XS3-��̞i�D���q�y30�iMl����u٘��uB��Э,�U^�%
�H@k�,^2������2��_	8,ayގM����|��@��(Z��]وw�>AK�3�$@c� �@�� ����]��us�.�1���������C�`�2-�i췟@
��'������pn � P�`햟|�e�亞 =�qJ�b>�s�ɉb�3Ōb�S����+~k'9�ؓ�41��Y�	~����&D�^9�vR�    ���b��j�j�	�]L2��km/����f�/{^ɩz�Ȥ�y�Q����
z��H��^)+4*i��Z��ĭ��Լ8�����b�̦���|�ٖ���z��4���P���y���3 ���MDV��	�hf�� _�-�k8a�X�ぴzy�J���N ��P�t���mG8y� @�
7W�X�%�ɪP9��!v�}��z+���a�p�e1]"|���.ƃ15���&�fr���h���Hl��g���[2���Ǚ������y�U�{�
qӮ����t�D�,��:�"���#��v� �E4ϳ������h��wB�&�IZ]�ZIt������G}R��J��R��U�m���'�RM�@�9'� �Ɠc'�&�"z�])�KĖo�OM��ԭ
���K�����t��C���#�����|2������Э�����2b�O$����|b���X$��̩�x)�v΢ՏXm��g�o`BaJ"@�a��֨K���Ѥ-�D@�"/�����|�<�J2"�@G���\��.�!w��K�S�V�I��(&f����t\�,�3� ٩�i��o#Ce'����ŏސ�n>��q��BEO�6wis�,���a4�c'�Cf��;nq���&�I0u�2����l�D�7\�cҞ�\H�,���R�' �ٿ��5�[����\�j{^����s�=X�X�u�m��zo}ή�h�jOg����ϕL<�¥��Q��^�I�%	4^:��7F7Cُ���X$�� g
�:���
���@G���������bw�tB���_�p��^Qen1u��!�l8�;<����t�V�-�� 8���" ���(a��b�;`
�0�k�.4sVM`��2��c��3<����,��(#���z�HBi�!Oҹ��l1�A�\}�Fz�9�Ȟ�\�@����)�+�e?� �*�` �I�8��V����6d*�߫���{�P���~�����s"p+ʗ�����w��H����/r%-x���W�@${���!�ִ6�$��y�U�ɪ‽���.��s��R�c2������t���!���������_���&GU�j���Ku(�$��|�#���#	�FR�El7��$	%�.E5?i]�ʑ�r4����{��q�=R;˗��{4q�Ԓ�]JUw~�f� �Y�
*�
��Y�\��9�2�eY�
��H@�,�`�9:�bgȒs:M�z�Ci�=�K�E'� �Th�bi h��yVL�ׇ���q)}�`zu��}1�Z�ѡ�U\�$zm\W��T���y�b�T#���� ��L�'
_�	P�ұ�Q�a��ԗ�$�:at�V.��l���.�턧vN�A]�$�c��SBG��) �U���N6{I=�?����j�a��#���ܞ�FwA�F��Lҧ���U���w��j#4F�n� ���G�%�C�fp�t����� �Z{gC�l����0!���m�X,��k�J���殒��☄��)��c��a�&�FڼV�F��<H��J�(M��!,m���$���hY�F��	xAH3,�(�8D ���uI9ヰ#���*�f��f `�Ś��)7@��+��RDH�� xB�/�>AJǛ�A���p;�����ҽH_��˸�J�)��E~y8���J=<�Vo�P�3��ԯ�.~�γS��
� 5��]j��gɽ��d ���IL�`���$�n�=�6��^Q��@��n�.�ލ}nt �8�[�}�����[�z�H�Qg�j,m�&cF���O�M�!,�)���TD	EzZ�7m�^~�FS��i��_v�h�r/��n6���$=�Q���
�7��#���6dR6]ֈ��
��M��k$9���ߓ��0i�0�f*�d�`}>����O�J�aF[���2�&��Q�j�K�J����>�L�X�ni��-j<�ui$@E�4zcGæ��/v�j�ڄI�����ǰ��P60�Ms��	��N�K���s��&�zP���r��= ��x�L�[�Uv�n/��츾�?rAw{9���d\�[ ��T�;�}�)�t��b	��*��0"����� #�amڵ��	R���;z	�6*���k�sg��YΠ/�u��������T!����7�6���C¡ ��JM��B���Բ9"�R��濪��|� "��A�k`DC�	X|J�5u���O@����f�_�꒵��0����YA�W�6��Rk�j��T	���N�qI����DEh�;�^�(�38��O�hA:A�y:�J3:A�R^Ǔ׫�D'�s���feM�~���o����UAR	�ӃP�0��9"��ʠq�9'���,�X#���	����1B��Dv(��v[���3@�����,�R���V����<�����O���.B��EBY�]���ފv<Y�������'�b���f�,T�5i�X�	��%9�פ�"K>� �8��#j�qaO�`�y���0��u�HF �6V�="�	HJ��rޚ~k�y{���M9o)�pS��ϫ��^o�b_֛-9v���S߬���qw7ɯ�3H��^D��sOZ�З��o��^�kR%֘,6	^?���;%0�U�d%4A�p��qA|.��J^�� �-�Bɴ-�"V.�B�X[F�(���h�\P*# 1�d��i�+��4�f�)���(Y'�ksf�/���$Q��2�:���؂$��vQ<oT�*�p���
9ݜ��zj���
A����cu]g����<�}�����-�?ލs�}�h�r�f��*y��I������9��Ubmя��v#|���zF=�4��'��/�M�.ϭB� Z�|w�F�ۙ�^���5M��iUs7�l����C����ޡ�!��-�w�B��W3rЌ��"��v�YF�hJ��ls(0br��n�w۴�j�Wog�������rr��0|R�.dC�X��B�4�0���c=(O����Go�򶍏�0*�=:L�g�H%�X��*����w[����O	#��<��}%!�P����
c_^/%F�ڌy~�0�-.�s8��Y��x�����d��륬}N��z|}"m��M�Ҕ���[��4�-m��l�8��pW])o48E���)���0L4�����o[�Rnmm��l{�w��;�dG��}w��v�ԡ1�\�Vg���&�JTZH� ���:���j��q��~xz���O[�"���A�-����<	fK{%X'�p�ލ! �j�9{�3�$z%�놫y�{>�%�&V_}$�/���������V_�7���h��P�F�����cy�g�P�l�(!���D�bo�J�-��mG ���
-rD'�H�������	��4C0'
%'�Z��0qB��)�mc_���n^��?����i���I����Fԫ�����D�:�+	H�5����&U_�O�����º��<�' p8OKmG�B���q�)�F����A(C[h��6	�� 	� �n�6�D#	C�t�>5����%� ��I�?F��pm����ں�$tȵg���@��}jW�ʁ"l�z��7�i���I�T���\Ca �&:��3�%H��t|��l�-N��>.mY,8���'�,Qִ�4;�ѧ�xq��� �/�O7�rɼ�k��<�L�����M\��Ǐ��|��{��+���g%�� }OPi�_�N,RkݷZ.Y�R!�V�>��x��iA	��j�x�J�����MfIm)�Us�SZq
���	N���� ����ɀ�K�8Ttr�Ҩk���j���;�[�hnl8�"sۦ��(=���<�v�ţ�`��s��+@:峴�v�bUb��%�O95	}]�3z�www�R����q{����_y����Y��6L��Q�_�q�U�4xC �������C��}�r���k�@m$�i�Ӕ��J���ƈ�{ꪁiS~)��L#O�|�Z!��    !	��Y���ns�X�۬!�͆ �� ���4�60����'đ�6թJ�HK;���������Hi�*{�If,>f����v"xZY�LsV��/��w|�\K9yzp5��Xo��+��Z���z����\����QXɱ5˽�
��PE�k-"%i@�M�uI��5����u9j:�D�����z�q����D��l��yK�i3�]�sX�uh�e�6���ò�<j���JR�b�C�X�RKn��4�_��n������~���*qT���J����]zD}���c-��eUbm��h�G4��ܥm=�\�܄��qWo6��g�5 ��o�B?{\}}�H�|y��-����oU��q���m@�(����ّ�� nc��,�/�t�k2�4�F4�}[�cDq�����n2G�0��J|_�FؾUq��W�=������;<�l�(��U�ط��z%j��A�Ҵv��\P�'֤���H�*Z�Z�1��8���yӢ�&ܹk������B�Yq��,'�_ʥߞ��Ƽ��Q^��t�,0�־�\-@/�{/^HIީ_�A�F�~۶4�`��_�IӘ�۞���.;�*�[�Ҽ��e_ĝ1q���®�"\��*�P���՜�wz9���$EA'���������J�&ˇӆ��Г2`�r0�u}#��Zk�XKֈ5	�Fx�J������hC�������]�_�{
U&�� �ފ4���JW�����H�����ݓ�%s�F�q�ũ�	��Ƣ��Ɖ���N������a�zq�%�.�>�o���aו	N=j=��:�{��
!/�����LM_�q1/��9�v ��;h���rزW�J� (�?��*B4JC)^u��v0�fP�fow-ز3i������\rڑ.ʔ��%s���΁��¤9�2U#��>FS��ӀBa��l� ��E��XPW|��,7n*�v�$��g0��y�����~x��nn��S���㍀v�4Hї�������`A��F����u4��#Bv�ħF����-og�=OmlJ8�C-G�uͫu�Xh�:���(��U#֤��q��N�˃���`���>���2�'ׅ&(-J����n0�X�՛���������is��O����P���[|yT�'��o����<,�5p2t�\��EZ�)���X�#�J���bUj���-Yf T���C�9�2�!�9��0�	(1�\��ڋB)�7�L�I�3�O�}�y���Ç������Y�p�k o >��X;h�Ӛ��P%�V�	�CIC[�5�/���Z�a5<ja�����rf�̮��̙9�����i�o �r��y�cֆ�KY��A��Ç^��AK�Ya�v�kz��cKYT�������!V�Ȅ#�+��~ڬ@�����U>V�y�?잞�+m�l������#5��"/k&�4�8kR�x��~-3���F&�"��H���_�IIi����kr��o���aD|����	�(�'J�	�C�Oxy5bm�I��׿<ںt*���j`�${5�<s�f�?��k���03*u�d���]�O�X��c���h�B�o����܅v����%�f��
����E.a?�J'�p/�M��\�	�J�W��~$K}��(�Ջ�v��x�m�'(��d�+�����wxR1K�·�O,�x���MW��y��ߖ���;͚��k���	>�k�8x��8� � �(i��;@���'0B����ѰK�_�','��0k�.Q�V�X��_4k��}�����Ǩ㲇��6rZ`N�@�6(�@����J�U9����h���k	�F� �Q�a�����nT�P�f��D��|����������Vo���v�j(m��?h�x�����9��JP#֖ѝ�R��*xH��9�j��U�f2�Xy�/�-;�n���d��3gw`�Y��˄�6�`.��J��u��V2�T�->bmGZ�H���XM	^]��נ�`�op#�^}���������D�q�����2��a^wB�5L�x��L�h��������_��y-jT�\�U���<S��p�/����^u�=� �	& iP�O8bT�P# �B��F�1�ٯc�	8�X>=���a��"9I;GK��x�)���(�r4� IäB&
��;i��������/7O���{S���+�I�fV<�����l�GT#��Za;�`Ͳ�c'��7��'|"��`Ж�S��9i��a�k�3�HQ��3�]S٘շ��_%Ci�}��Eã~�����T{�*�.\k9�z����Z���Z���Z�X�#���r%�%��`�UZK�m�X㰻������	
Ƙ�Ѯ3^���O@����؍�/咠J�ӫ�gv�^���}[fq�Nk$�qx)�Y�Ҫ���[�f�&���<4]slʸ�ɱ�i��:�J�x6�J��sR�+�t�Q��c�,��d�X�-s�o��.�T	6w1/����h �����d �ph{i��p��4��E���j���F~�����s��z�ű_�@�@�IL�>��Iz��i��W����X���P�W��d�;2k3 �=���CM��8Ss=��i�(v��k��s=Z�3Y(a�95|uR�5it�+�W�V=K&��uΈ�QB� ��rP#�6]%�I2�^�y�m`�Dlb� �=J
	*��y�H�Z'0�9e�~A��6L����%-NF�/%C�a̱�X���6�Z�Sߧ�^xtߚRNP�P��Ү��9��U��+��C?�!�|��w��kq�V��t�AT
�,�=�kl��I4E�0`m/IΔ�i\b���b�>��T�㠛'��h����g@?����e�&5?ye�F��hG������R��N��	�S��X�f҉r��Z����bb��Jy�M���O1���cq����Ld-�r�˂?Y�L��N�_�~=٤���m��J�$�ɍ��Ҝ�r�&��)f�;��B�O�\J��d2/Qk�߼��������a?�4۔'�r�yfȢ^B��ׯ��EK�im4�~YڂU#�����H@���Z�3��� �j�*�N?�'��[V�rm�I_-5��s�����������,A0����V�T�*����-@k�k���^X
D0�BW_my���E$�H��� �5���R$x�}�j�6����`�'���Ӏ��Y+e[0V��P�0 ��K3\EQEg`�Þ@�$����W�K?_yx~�K��n!"��1?��meU.Ɣ�� (��z?�(��\��j��4��q�%+���Z�D
A�q��e�S��C\���V-�����Ȓ3�o6?Q�r{��4y\�/��"a���f��9�Y-E��k�85R#�V���jK�k��jm^�����~=T�DD�b��Ѡ�����iwZ���z�
�8���1���n T��}�8Z����J0.�:v�$pG�M�^ɓ>��1�hu2d��f�rZ��l�F��@:7:	�i�Xǲ��0
���#��P�+��lև���W���s8�i¦�%FN/
�m�&�D���V��6E��`$�iϧh��^��:aŅ��h�̾��h��9��hm�oORW�bVԈ�%;�rbh� 8f�j��B&�,��e"P�5F/U	3��#s	��T�|[J�UaB3�J�^�j�N���v�*�6#r5%�X�)czH�6&�uJ^�s#gD��������x@x�&0�\ҟ��cBA	m�:�Ubmuz��� ����Fu�q5:�ReZ�� �]����!G�ESSCU~yxx:��s�x����CJd,��#1$I6��0%l��9��sa1H�X�ƍ(9��n\�h�Z��>������/]��3W�Z�C�O�Nn #���]�kS`s$�D�A�w:|r8������d�Ro�kJ���2�����o��?���>�4��d���r0�9�f�ܜג��Y�&G�kkMx���TL�'�����ւ3g�ߥOSos|��L��%g�|:�^�5�a�%5��BgƿG^X^0'��    gK�"T
_�K]�Xk��I̤��������ѝ�1��Kf�ģ;e�qVr��~-Ϯ��#���]
��]8��*fï�U�.0^���35��i��%�L%l��~�wi��	k�.U�Ub���u�0�@J�oR�ZͩG;�Sᗱu���#3��L]�嬩Ï�x�E!�>Q�}��ww	8��@?*1�3�����'o��u�"0���vA�͝�J��F7�-e�k��j,�ꞓ+�B�e��A��\�i�����'Ղ��ɧ�P�ib%�I��������$,~�5bm�=�(�{'0o�p�5-a1�W�'�*Oۨ���06���b�,��0Mڛ�V"�4��u%���c�q���	jЩ�Ӱ�R��J��oZ����0�J��S�ޅk����n��Lc+E�7�r�P@�o�0�2K1�r[[#���t��jHe5�gV���O���R�6�|����x��,@!�������q�j�����v����������=L�w���ġ��con�z�+�ʴS,w�����$FC��[�����
�ơ`��c�������VP0k;�Ѧ��0�k���|�]�� �г��Uvh|?�L(9���,���V���1���]N�\#�.�@�vԫ;����4O(j^	�t(h{�ETG�&�{mK���D8�wX�-A�4H��c����e$�uЋc�*�&��d+{��Bs��&���I�0Z<�m�8)��6ipe�:a�0��וF�N(J��+<�;Z�G��D�����
���Z�PQ�/kz��	8O8�ƀ�y0f�z���Z�;��.����8͹��yO�W��IC��	�j�4{tB��e �3BO	�6��J:��#�����Z-������\\�rRK�hx�F7�����.b�M%+Q;����+��>�
�6���U=�e4���2_jX���qⴆeN�w��GJ�I�Y��[Q?J44�/v�������`�����}�d�B��)�z�����R=�.�򕱴�h�Pe8Ǆ�u�"���#��:�YT��p�Q�+>��y	 ��TO�/���b4�ܞW�0���>�]UQ���	OX�MJ��A(e�D����ڃu�_So��,KK�f�4���;ۆ0�/��_�}U%V�뒒���u��E�����a	�V/�Vx�wȇ�1����_Ո]��wTUvb"إ�Xo��7̽KZO���P�%�k�	���F�5bm�`�q	�^�4�K����΂�ŀ���eHm��^�֓&(%ݦ�ʬ��[u9�%�g�E��93Q�`��Y#��`��>�<�:'^��}o9Y�0�O-�h�m-���s�!�TKӱ4��b�B��a@�����k�ڊ�Z[��ڨD��)��Ǟ~�5��~[\������Ӡ���{V�y����bV�z��>2�)E ��7����w%}qLX%֖��Dy�hz<�4.8VTJ�2�kk��'��C�0��wM��ġ_��b0��ގ�q��a�6Fε�'�m����	�'.~�F�ŒP#֖�SFQ2�I�I�Fb<h�]#af�9�o@�9�����);�+P�XZ��|������S��g,��jĚ�",8��k���x-�"�b�\�]�	W�(xDӪp���➰�'�6"�˚��$�H�99G�
�ݨ�����%�^�X{%�G�`��k�L��Y�	���Wo�[�����aK˺n��c�
r�as����	�Z�����~�s�V�N�(B���	���܊N_()�P��I	te1t��ը֠Q{���L�A��l���[��<SL�ӎ'�F�|nG�S����xXD�g�H��B�m������0����8i}2����F�V�?AfJba$�fY�*Äa�;�V�� ��q�|��qM��.X�f�M�f��IvרKJ���q�����=�7���N'����V��� A0w�V���� �JiNJp1�U�Ff	�ԥ�k�7�9�+%>S�$i��8��0�F�N�Xq��	W!Y����\�����n vĞ7��Z�<Sj��x��	1�=r��K��ь�ȡ��bO���Yz��y��<�_��Q�_��1����4
֐+wm�S����?���Cc��7;����1`��sp&0�ӧ>���;Ӓ��A�I��|��T���_�{�9���>A!��/%����UXH�>��=%�>�O��f���u0y}��KX?<@:鴻ʍ%�O�|��"��	�@��
��\>9_#�V,���H�jܼ�vQ����F�ƢvqQ� ��	x�)�>[y����:��U�i�[���������,qNwݘj+��/5��� �ğȠ:�Մk���m�8 ���u5b.��j<��K䧃t���o�:z�'S�ǉ_��h�gn�%��dLZ��?��&��:>�'�S#x.zpf0��ј�M��p�o�;3v�&�t�"�ĉ|�4`֡�����u�0s˿鿁�e�x|>6�	E�:/7��G��Vo������H��{��^�P?Қ֯����}� ��i�2Wm%y%S��E�>��]utq6U٪�F��IR;�	P�&p�K4��@'�u� t�*���X
��'�j ���H��b<��{3&����X��>X�TmJj���
�K��M���a��bi�¸|>�ꥂ�玴�*Dt�iW�o���UU�h��e���
b_��u��Ar����ME�X�9K�J�������{�}~|:�Ѕ�b�C�������PnX&Ԇ��!��\���G�ѳt�p����}�Z/�
���E�UbmCF�?/۴�ʙV�pm��LF��Y�G�� ��S=�h�oz�?����tk�&�h�
b߷�b&�Q�e9�&��"A,UcP#��~ĺ�r(��0o��r(5sg�or��C(�@�}^������������xK"�7(����'��ꏴ�#%Q�=�<%��	<3��lH5]�A� �,�*��1U�I�4�9v@��w�og��y�	hR7u �h��xM�ǬO����K�X��Ě�5]�d^��=�; ��m���lEt�iY!\��"�~�zq�D�B�1�K����'K��P�9~\�q�0���y�On�e����o��G+�/}UbM��&'��3q��ʄGNx����όP5[E�a�*!B��s�*�A(���i��۞	Ǩ>{	�����(���""��/���)�}f�Fg�k�Q��ۣ�v���/^uZ#Vg�-e��Z���!�^}�٢�����w��{�P�_���v��'�i����?��~���5|q� RG��̌�4Z&��$�)��_�k�arjP�H��f�I�6ɥx+�x��p�Ǻ$T>��&�Lbܜ,Gr�
Y��y��~�|�~�����כǛ�S���:Ϩ���x�G)�B+T���0���N9�~����`�X��kĚ%��A���0�;���?��@O7��>$ D³� �� ��X҈��>A�:��/]"z�S.0=.j��#tBN�U��C��UcX�$�t�����QC���/lޘx� v�3��׫(�CP�	/����F���QBCg5��׈]��2���k�W�{��8��˱�m�IǖT�W��,�.�X�S_�� Y�%����F�_jҒ�ԛIo	��כ#ل�r^=��yx~��y �A�E��|8���k�*#�+]��_�k1v&].�.�kR����F.c.tՅk�Q)F�k�'V�&-�Z��ɪ�~s�1�[4ifuոZ�ٵ�N��BuNU�8Q%�hӤ�#��eEЖ<	h��� �z �H��j�&��eɦو+'��]}����c��z�����#��_W����p|�y�>V��|��}�����Y�(w�P�%F��5%ޅ���yK�RQ�kYPi�	��&x��Ώh��<��/�W��b�|�-����\�\�	��Y��z�{x�>P������y��7��}��u�|>USi��/^ˮ�	����`�Ƌ��J��� �;�r�	�;��V���B
�����a*    X��zօQ1����;��"��jJb�ܙVȓ)@�+�f|��ݞ�9�8	P#�6	�A���	�x9Z!���L��T+��Wy�r�Eɛ/*�O�a6�敭6)��Q5o�9e:b�v;�oD.ƌ�kK .a��S�#h�Z�PZeO@)�we�N:#b�l$@��Z�R�V�k�)�����H�}6�K[����&��jM
�ND)�_�(I��!T�.�G����g����:��%bDN��*�L��<�A��'>s麻8��';�/��:��G_(5�A��`yR�J�mx��|��bv��"|�!V^�J�"�4I�U�9Q�V�3�;1ٱ�������v��h�2��/n�W������_7�~}������1u&���u����)�ʝ�Q����P!�:�n/QG�R���S�!.)G�)^C��V�� -��m�P_,���ZM3%;��MW�u�X@���;[.A�&�������'��YZ(�'㭥 �������J���ԗ������(���X�I�͛��i��|@[1K=��S��$>�I��۫�oa� �e�,�?��:I	���i���J�X���J�� ��<%�.���B }�F�J*q�9L͝�*������w��|��XW��#�L�w��*Z���X������5bm�;�6r ��C��3W�81� ���,�+G^��Z��L������_�-�40!���ѷ�e���_���Pz�S=�[��T1�@��Q��Q���Z8�;��uB��*�����"  	�j!���+` �Fة�,X'ph�T�	RP�jxʾ�dĘu� �q����K������-F�_)��XP�_�7����4g$k�D������h�{{�4(t�	
b� T�5VuF C�@h[I��7�8�2pm|3%���C�,�3ah��|����w[v��a�gT�����e��.ʃ�������' P1�S�-�KC�Xc��K�4�j�8�!K4n�5��'���h'4����S"'��	�Y�*w�*X;����(�o7���eh���X�N �{����dAc�,`	��V��v�n�k���	HiK���*Sm	���cנ��ٰ��r���?P7�,F;vVʚ�eE���i/����j��w�Ԉ��Ϲn�i\�a�UA�����`J����
�>��T^Qu�5y�A����9�E`	U��HB5I��7@^�0h��[���'�ᢎM���}T��9��ĝ�i�%7���'�1Y&-`�˹�ע��L꫞�<M���7rUX`b�9V�>c�	���4d�X���f�ă 
�'.�����K�`|CUL�"��&"�2�6�����!���v�Y/0ӡ�чh���ۏ1@U�զ��@ȭ�|�*�&{�U�#o���HU�b����чP0�"�$+ܲ8���,yw��[%�Y�+.��*�F�ݼ�>����j��=l�m����~��m]`w���<��7��k���јt]_�E!Z�k���_#֖'B�u\a��{����]�D����#T�D��!\�<~��<������-��J�����Gd�~�}ڍSH�8��@�<��VIC�����k�;'��Z�v���<-�� [�a�]�5r$ *�y3��ƍP���_(5)�kp��� N�}���ci��L	�Q�֧m<�$�����aR���=Z���F�Ѡ�ԖJh���厥�j @3�u���O�ƞ@\hMAʘ0f�0��/����-p�&���Y��G�k�� ��S���@@Ŕ �@Z��8Re��nz�mD)�>�c���ӴS�9+mh�Y�4Mv�q��(s�*|���>���x�ڞE�y�5���[j��RG8=C�_�I����1����+f~Ppr$��*
B+;|ި�Y�&Mb�\����� f��e��[�ʓ4b��h�4A4i������8	_̂��F�F��eij�2r `J�k��K � 4���l������Z�?w�9G_>�������z�s��Mr��=���A�5���|����6N�,ʌ�=��^j	1ڛ� .�N���
��E-*��ԑ��(���"1����,T �F�&f�P�����Ш��/^�]#�ƴ`�/�	���Z���2%��ַ	�+U�%��~��m��4Cp����/���-��3��D@Ս�	�e.��Gf0:����UbM*D��C���F3���Ǘߟ�D�i53MaB��	�,L3�����@9��t�2m��fG����%!K�^`%%�-��ؐ)�_ D���Xj�Ě^�>��#��/�hY�xT/"�)s/���]�|V��z�{���G���-:��б�ǫY�x�g����������~C���:�ſ����1�͠�
��a��%-f?��6�L_��-Ѝ
Z��o(�N`�'�J��d��@G���Z�'P�3���n���0� h��Ʌ1\�ð���������ᯛ[4�0L%��w��<�<v����W�}%�@�H:�Dh�g���=A�X�T����H�cN,>R	j�$T�Tj�=��7�hi�k�b��\�V:O7Hq�f�'œ��򗇈������ݖ�=�w�#�߷Ϗ��vO��~Zʜ��A2A�=�����\�Y��jĚ���@K�Vy�0����'�h���H@(�� �)y��T.�j��^$�jx��t��7Q;d��a*�,������p��L�ј�bG��.V5bMRh��@@��,�a�;�f�5<�"���FӀьl��F)}-)}-trJ5�*$��f'��?mV_�G��v������ϙT���pFN�g�Bɓ@�o����������m���'�r2���H ��`I#��@ �Ӗ���@g��A�T���J���Y�g0O�����C	Q![-+ϋ���� #���|���h��r4��6�-I-�F8g�kI& ��<�]���Ո�O�V�bԸY�i��=�����y�(O'�x�0"BF��=s����\�-�Z�_#�6-a|�҉���P��l��͋:Тd��۞�*Y�@[2'{�@���x�S8�(���L�O_�`��ؕ7]�FzR�!����uA�I�؅[,XH鯕\�|N��+�����G�A��-��vR�3��'2E�F�~3�Z�Z�_��ʺb~��p�is\�z$s�u��99%�]v��E0���Yz�Oy/$�����_��?�t87��F�1�*5-٘�Ԭ����:��c�ңN��(bjQ�) w*18��6�FW��\�F�e��X�g)� ".�:��_�L��[��(�PX�=L��鋖���gx��c�L��� � !Z��WB/�ڭk�.�Kqj]���E�aV�'�A��[���a���_��y��y�k�w�~��پ<\BNR�S�9Ԅ2������پ*��@4m.qc��,,0B�iz�y�}��$
�]�~u�̉�7s�Wڬ^0�îO{M8��x@���Y)TuYW=���'I����I�}�� �������*�6/U�~� X`�����`<����S�ed�`�fL�
ϟV��۸=�c�m�罥*#ZU��9Jqw����Kc̀�K�^t��k��*g��B*��G|�I*�n
0T��G@���+���Y|��C��� M{Bh��A����
���dJO��˴�c/J]��û��!O���M(A�J�L�S�J���^�J�89Z%��0�6� P��Y
�H@�Q�m���M4m3k53\���Ӷ��r�}즵�esVAe]���C��Bv3j4%gP�ѿ^�8U%V��b;�%},'����A��VUv(��e	~��'�n1.j��%Ubm��b�1�Ǆ��@w9ñ�G��Z	�54z[����y�A٫7���Fe�>m"�ы����]������ܞV@� ��i�픋�ό��И�ac!v����Ȕ�1��C�U���/��Mb�0�!�GQ���L�\��Z+����]���wd��ty�oǇ���А����������?>    ���~�l�{���h!s�F]��as [n�nO��c�J��.��O���;Cƶ��b/���b��3��_�>ܼ���c����p|�\�Ê�U����r�㥭3���e���l�����.Xt�t�B&�ƪ�� ��� ��YZ��H@���f���&Á@P�9<!i�w��ҰN`�����0���w�%:��@0B��E�%:�Ρ8��e���R�<u��>A��9� ����Z�@� i�E�K8(8Ie
F���]B�;��~�"����N`$�)�9�VϢ���N�M��o�wn���a�H��ݞ����lG��_��9�#+>���dh4hE�1��$y�xh��Q�fǪ���t��H c��"`�4�$��u�>}�|��wy�#>E��K�C U��b<A�5+ň!�w�	�	h�(#�H�X�8+�	��'Un��v�U�iq�j��v���כ���P��x�=ݣ��9y�O���B�ыH��S@�<��(/B�w\�y���z�$�}�Y��S!V�;)ѿ��Z���W/wۇ�3�����=�#�B]�.��(s���y{�����v�Ƥ��ϟ�?O�H�:�������\�=��˭ L������ר��[B��ܢ��:buoW_я���=�����������q��GΛ�(���P�Cj���d�����I���F�Ϳ2C[@
�ǚ8PJc�k�0�%j}�c�ݑn|��9��ޢ�� z�z{O�	��>޹�\d8��+���t��W�կ����>5�?W�����=����#
��~��Q�ޮ��4�1I0^dv�Uɥ
�J�4�8��9,��/~�Ubn��A�,�y"Oό#��?�#�/�#ڠ���_���Y��{��y��0&�����<��阣�41ց�P�DI��K+1UbM��
�{L� a����� (�0�����~�����z������O1罡f�Ǜ���t�(�ʺM��rYЧ��<��V�Z�v���.u�KWZU���c��6Rт� J���}�H��[�,.��|�2�Ti7�9o�C��D'�����N�L��Xqn�}q�7�׻��� ��6׈�/ϔ�H��ٵu�ڏv�%����v�ah"v��/w�m����z<��ufn�2��kT�A3g-Q���B:BAUF-6Ub�q�T�a*�a��j��w���{کGh��Tu{���?���Q`���3�Ӄ�m���F��U��?#o�8H#liݵ�Ir7�A\���8���]���a��8��x2��x�>PKf�B�y��/��Һ������/�{j��WYv�oR�m� ��|x~�[���a8n����l{OQ�>�cR?�^�����?�3t;ծ�P������$�^��-�«�ں0��t$�j�#�C?C#�F)cP1�&���<�m�� P�����F�W���D�v?��L,N�T��/�����pk�&ҟ�����d�	mZ<���J5���Ѳ��V�}7TJ��>)���N*mu�5BO �<�"��>U%�V�E5�GZ�G�!���2K�x�a[�����G�6�`tSR_��q���D��ݽ����(и��a�-�~�l�K�9d���$8��xom�^(�#����B�X[F�XmVz����a�#���2��`�����j��Ĥ̈́�3��_��ۇ_iޟ/�����^�IA2g���e���\ri�s�X��n���>�It��8�9%�є
Ԕ��0�޵�` �"�0���m�5�1���ݪM�_[|�Q�y�3���� �ڣ����bmR��)y`��^���:��4�M�4u�(Q*��m����Q
�uf���y�G�)�L�����Þ��khc�{9Op�h;Ke��>s._��[ZAkC ���s�bmH)�0��h��	�2�!�$e'�M�#%J1�"�9&��3��x������'4 #����o�?�]~E@F\��o9y�} fe�ҮÚt(8�a�F���R*���[�է���< �'0�	W���#Z��IVw�3�j�X�a���v3�q������{�k�]2J�%M�,�=�6��0q���,���+���a�Vz(��d��=P��!m�\���F�I��U*�n��FP�%.n��"0��S���K�F|�L���R��Rjb?xס��9���W��/��T�55�	浑��v��O0�a�" ���4T�IoJa�Q�YP%v�e@8��s�
4j��=a�w�|�A����@%$�xF�c��M���x�	f[?��t��(���A`�c�k��j���P��V02�v�D�к�5-a�.=�XC���M�}�~{�|����ٛ6T�*�U�	[O�2��+M�F#'p�����*��yd�O��K�X}B�z� ��@04VВ�U�\�Sr�]ޮaf��j!}�scIT_����	�J
׭q0������Ub��ݒ�n0ݣ�$Y��� �-:Z��V���	'XP��d��O�'L�=;��4�4�#$1=�(�,W9��d	(N�ANܯ3�U��&6�Q�����PH�Ҧ�*���d�Mj���A��!¨R�I���D��4���C�٣~�yG�>h%~x ��3���a��S.d�F������Q�a��N�8�'TG+���7��Hd��@P��	���	<-��-���XS��_��#u�|90�%Z��;*}��=�l���L�$����J��{$�v��YZ:�җ�����.�����`3T�d�� ��H@Ks�uI���d5��M9���!�J���Ss�T��0� ��.E0� ��<�3��$ at�N*Q�"�i���١A���Ci���X��Ԉ]���T��_��?\�y���i��}w����6Ѻfm���PjH�Z"��=�V9�n4a.�2�$�PF)+0Z�Lݒ%Ub��T�M!Vhd�^�2�x.5oa���!i�����n�\	��_���[Q������i�H�\pzY����8���_ad��$����`�ӬkҨ� �f�5k/���I�q��� TqI�ȍ�����5�|v���L߯^�n	��POT�A�ט��Ӎ�:|�/�T{�X��}{�ZC���*>��(���Ç�OC���Th���G=۸���</j�ø�Y��E�F-��U��U�(0�u9�� �T��rif�Ю��}�S.��
=��x���O��lc������nK�i��gP��7��0T�L�dl�Y��)�=�0�+��n`7�'qF��q�+�k!S�k�	 �@�d9%`9<:�>�D�C�y�!�J���j3���*@��+�L@�e�������2�l�ۧ�>��$�|�ՙD��?��'��|� ��$�J�-�o�4�{`��r����0Nf0䷼�Գ(����*O�nR���s�Mk�|�}�q�L=���
b�K���a��s7d����%Z�If>�~I�dC�<���RW�����=�XL�)S�Yw�}��E�p�G��s��+�{�K��@K��I���PӤK�6���<hf�V�|�����, i�a  ��6��JÚ� `����mJ�jQ**9�t��D�ܼh����}�#B�^�j�i]�*�q3����.��)-��k�	�����;HG��x�C�'R�U�	��/K{�t��M��/2���`�-9��_��'�z�e�-�l.���J`�+Ѓ��CPn�毖����J�]�I�֞g߆6�!��rX�54$��j������<"L������:T�x��PAA/}|UbmS7J7(MT�N��^�`��ZŊ Gm�58�jc1�	i�N4� ��mX]�zB`^��M޺����S1�vz���bgK�4Q1�v���Bw#�7����Ÿ5b����Yky���5���יj7�V�g����7�X'��&�����ۮ��.�w��]����5s���,���5��rT�x�!���^}��l@=���骾"�*���� F���!w�)N���~�
����}���#sTګ ���(He��%\�؅{,����<0vp&�    O��U�k�4x�������~<y�4�G��B�ɪe[j��7jf�o���ܹr�j�@IДԞ0A��!vG0����TTC�<����y�#w?����x�"
��~)*��'B�V��'B �j�}Evx�1|��k�"t���@�d�ȫr�N��&.#`���S7�����@��m�`)����H�i�W�����kRW��^�N�����_��4{�A�������*���iT���T��
ؚZ+��}
�#Zk�J	f<t�Z��V9��AK֣�cL1��rҖ�^sC3=܁T�*^�F)��UXX5vk��ԊQ����J:>�q���q�M�$��84"�)�-H�]�FtImK��`�y�s-J� �<��4�1o#�G'��M��d4k�i�,F��Ǧ:�Ӥ[�h�l&�:Vw8 ���i�Pʨ�5�k�{�Z�Q�y��cD=:hEФ��G�/Y([H6�8�ԗۓ0�O���VT�0����b��T4}��h*}:[kĚ��#z ��w� ʒ쑛P1�m"L{��G���уciV��{@�H@yX���~J����<������`��L�-�`�KԶ��oq�\y,��M��S�C_8W�[��n&��k�C� �h�R�礳�(��hF�D�S��H xaY�䑓�{BO��.%^9�)4�s �����G)!�k�w��8S�H�}�`�x��ڰ�+��4�8��SE^|�4C0C����ib�����Ac�%,����be��ñ�@����` ax� Ƚ$�3��e)��Qd0y�-j��ihc�p|�^�ӼB�u�t<lC�)q�ӡmvF�����`!�u��J����������8}m��ʜ��1�O�8�f^�I���Q�2�]��=j�>�Q�U�Ea������r3�c꫟�6���0x��.�	��F[!�y+���C?+ �p�%z���/���9=��@��m
�6j"��S�{�-�

p��Q91Q�EJ�t�-A^I��n#��3��P��x��"3�dI��9 E�y���72�'� $�څ�M��%dw@k�B[$Y�E�hg���~i	�>��+HQ�.����`�0���5����%x��^�GUj�ڬ1"f��^�6,]ZsD��z-'�����.��k�K�L���`�=w��V�ŊV��Y��F�ч36�'E- ��3�oybӭ��D�����&���7���}��x\}�|���٦+?�����@g�0�����@����i�X��J�Mթ4z4NyyDC��!�"@[n ���5�lCyH �&i
o˒Y>li%E���2㺗SY�<IZ�h�n�G��/7 �JB�X[�Ҫ.%*y{�ȇٞ-<C�w��3��~������J���jXS`B�*��$T��&Y9�������+z?�*�6g�3p�k�6F�����%�UȻ9�v�/��)�xs<�V�cD\�0�[]�E��Rq��b�A��`��*���9�ɇ�s����"�����>��q���?m��ϴ�<BZ��u��u.�)�����!`@�툁�6�nRhj�ڢk���m����<�[�>o�;�{�+3P�֡�`(�g� �	,�]G�v$���<#�u���,yFR�iG@�0
��_�<p��.�;�:Q�,5�8� y�dw��@��Yt_vh9�G����ԁ.�4HRj�D�:i�������֍�N'�Z�:F��˃g\)�K����(�<X�k3�E�� YҮI��ʋ~G1q�(ϔ��A���8馾�B)�c6S�1#��.�˛׫�����4�0�����C�-���w�O�<���L������lҿx���DXP��_�շ;dFoYi�u����%�=zgUm��JL-�j���d4�8@o�	�U�c}�	$�yȔtI_��<hgC
���@\XC�1B�������1�B?B��\��ܧ�����Ӗ��~𔎱�Q0���&�Y_tK�py$dq3_*�eҪ����Ͼ;��x$p~α����x����8�RV�,Yz�g�����x)���/��P5��'���,���+X}�tL���Ɵ{��C��v���R�c�
�
��)\ZԔH���H#�L��V��y4|q�����3c�-
���7�܍3*�O%�m����_�����k2��`�� ��H7�gH�U�Z��B/�*��*	�3�Z(�&�:'!qZ��-iq-M�?J�tUVN��n���t����a8�d>LH�ȃ7�����~D�t�S���*��8���P��	F�AS�֏N@8,�'��d�3��1y�����!����u<2ӄ x�/�?�qp>,~�UbM��bа@�yX��"��-y!�Y^5+am�ć���d-�ۧ��Ï�.:�V�Ē%�h����g�X��E 矧�b��hb����-��آr�QF�?�Z}�ݏ尙a�:N-���L4.��ᘶ3X�U*�8Ls%K�2j�ڼ��H��T��K�f'(����aS������ʸ\^�!co7�W�b�}��ۏ��������l����!�������x�}ܣ�����c��괴C�E9&���'�IY?j'^��k���J�������"�@D����sΧ/���f�  7���>	�  ��'PO8�%*с ����u)�I}jZ�'h��V�7���;<�� h�^e	O��;��=+G6J��/B.?���j˻D�Tȸ�c�	�s}�(�ͻj�_�R�^�0�M]�����)��5k8i�Ev=
��0J�֯y5��\8��i6�pv�BͰx�p�X[W��.m�0CVǃ��Z%�94N����Nto�' (���W�ZX\LBNe)k�DyBgh�[}�s������ď	��V[����<���V��
�qt���k��1nL�0:a����0(7�y�Ì(ouPrr�d#f6RE7�������]lIB��r�)�R;�e�s:9��h��]\�9�kLz?�]R��ƹ�F�����\���B�$�r���-M�_s�=a�ł��a{k
�h|��on��4��'�4C����,]!	�,�:"�������P���k�ڼ6���h�����G��8�Q�x�z�u��&�ar��T���zRF��<���Xv�g6bIQc�g�����J�,�Jµ��`B�L�[|�\��=3_����MZ5��>��j�Xi�Yi��a��І;�zY���V�B#5=m^����*���8�ӛeey%Pӎ�Y鋝9�`�����k������:�T�nY����Ϥ���q�:�RJ�` n�\�!�����,ajz�aim�1R�3�qҔ���l���Q��.'���F쟼�cJ��H�V$>���-�AfV;��4[��\T�sFȹ����s��?�y��N�.��Z)�ŝ�=J��L���[E!zjV�̹*O)I�yT�Ե��F�~�ݔ�	�tr��j~gI7��U��z�+]�M�a�,t
]�	J3{=i�65�r��B�B�X[��
;@
����4�5Zj�8Lcly�k�����s5/�ň���^�P��ͱgdc:��FkkA&2��٘�T?��&�����+����x��fA���6o��i�i�W�ܩG��ǽ����*�� �4B��M��B-�|\(�2MAD�c�g?������{0 +�k�6�%��q���Q��vxww���A&��H�[a���gv>W�T� �ޯ��o�Ԡ�/�J�����O�jY� �VJO��Xj����'j9e���p�ZV H3H��>���/ek��0kȓ�� ��L':��B���5�Ev>V!P��7���jL["h7�5^.^9Q#�V�#P����^TyPγ
7�+':��1��Ѱ+�P�A�6��X��ʠ/�G��]�*ͷ�����d@�I�Cy�>|�9Y�7����/�7xυ3���!W0�C�I��o��y�k C����ԗ�m������]�'�NQ;=�+mq��*m�    �D��*��m��כw�.?lz��/������F������7i�ß6���a�u��ڔR�3���)"��B��P��D�:�,������%�á�9m�d�Y<��^�&�`���ژ����	�2�(�mo�6w���������N5ʂ�\���U�T������|g}��F�o�$�I�.�N˱�R[�0|��2�U��!��#����N�)C�k�ܵI�,W�����J��F���m!#��_��
�3�!\(-ռ,zj�Q�����#��`P.�&�b�J��[��#������y���
��8ۚ��,5=*��|�8���B���g���GL8;q&U6JX�Z��Z+�lc�3����FM�'�� �V�կV��<!K�klWt5菣w���p|�P�=Z��N�no���\�&����͡�4VP�*lT0�l���G�E��C��A%.']C �x$^g���>���T�/���m�$�K_W�mF�;^T���gw��G�;/M��;��n&w%Ր∩������ޑ�+C)� W��=�=����C��O�O�k�U��v�X#z�(J����E��$�c��y�Z"LN������+:��8�7L�.ؑ�Վo�R���v�A� Ӵ�%������h,��Nĵ�	->='��9�^��9���zN�&ˬ��.���Q��^�Y%���dFO	�i�%�u~�˺(^O�!{�5�b6��3fx��μ�Oڙ7PZy^4 ������>�@�s (�"�Dy*�ϩd��5ʽ����<�{\�!4Kӿ'8u9Oߓ��f�5
 �]\ ��U�kF�Ԩ���e��#푀� ���d}�Of3^4����^��T��V���"�0��v|Oq�@��S�t��?�q!uj���S��%��)���|!<��>����x����g�jw�%��[U	u���8�����T%֖��b��h��<wQ�&����B���1�T
�(N�[UX��]yr3\�u��k��0i�s����3n��4�\0��=}��4}f�$8����>����f%�fw��O��%�b*)�R�qe�J�` �r�,m�8�'()Y~��ew�Q�h��mI/
�3����S2��L�K���f$�$�`��,IRf^(��' �V��E�A����e�]_Yz���dA� O	0kB�=2��=3�.�w��i%�3"�1Z�(�h��=r�N�	H!y�H'J8+H+q��!t��xO�8�uO���
�)O�R~8���߬Op�,Q� L�1.� E?�;�ukoF�i�u�ּ@��$��\>�;?!$��jZ'�Rs�ߝ���
i��\���k�90m��G��ܘ!������H�@�x�
��}�	,�5�a�^�v��Z�"�N��ι4�ZI�!哶�Lڭ�nz�e������
�	�A���˃��1����㷌V��/ߗ��������&  ���<<���&O�f\�����\���#�_Ob�嚘�m��=qB�`������_w�X�K��d�<B_$t���|	so��F	������R_��V�$D�p��ɏ�2��?�6����.N򦱮�U���]Z�=Z|L��p��p���5�V1Wɣ��圣q�W����I®	8�hy�ޥ2�Š�����K�!���@ߪ��\���U��B<oc�fT��w���٤R^:uT_:h0!=�Ri�2=N#T��]�ҫ�ڊV���0tfLAL_�,wJK�]�刉f��z;���~�|_i��Ȧ�Lto�6��++%��ˣ�������
���q�Xk�ئN�"2��mi�u�}Z�ڄ��W��ϰ�6����-a3O@��b �p$�~%��X#֖'P*m+&��cƽe�6k��nx���%{��v�z�Mg>�Ц}��y�����ں�{ح�|�q�)��9D�����4�k�'jp=t�[r�������*zҢi[5��be/�4(�or��脑p�(z�ZIx8��D��96X�R�Bb3��A3)�z�Q�!t�H����	k3���@��ާ����Ky�3����2�9�Ou�0��9p�t�J��}�{��s�u��?��v���л�����7�b8�ߨ]O��?����N1ڛ�c�J]ʄ���貤rn��*0w���J�X[���#�1�,(GFV�i'�)CF����bOg�V���W_��<>�g��a��F�7�n��	4J_Z}�G0{�Y˓&�<�F�wAa/�"x��Ӆ�L��KE�J�-�!-i�9�d���@�_�qd��[$Q�h�h�2����� �jj�Z��iܞ��t7�͒{�A0(KiF��~��P#�V#�F��Fx��9DA����[�<��5�k�Ѫլ1���:,�$�f����R@�*�6ya�r��kT�լ��$#�����A2|��Ԣ��AC���	�@���I?��.� �Ur6F����/��wG�C�@%Q#���<����1gi��4 C���A,ͼ���K �i�*���ڒ�Bw��QK���/�@�O��"��������*0��� ShT_�=rO(T_��B0K��3m#zDŔP�r��x�Ak�%�
S���E>Y���Q���eL]p�p�|,����^k=�lA�:ay3�	C���������pr�䪪�����wْ㸶ǩ��IuW5/B�~�)QW��E�j�WO�`"�DnD&/�i}I{P�j���������#<,�8o��]E�"A��fǎ��ކq.�5ٳ�S���>�!c�6U�5��p�R�Y�V4A�P�α8�r��|�dy�����Q��У���CW�4L{6�K�Y�I��|�b�`�T,�kx~6���'wȞ��{Y*�*��kXp��nOK*v�Ճ�LM_�pu���������Ӈ��/��Ð�!'R�h�
�-?~��C��|q���'��:�S�	mw�jw�z��[~��ӮT��R�M���F�!��� h�1=o��ؚ���D�BI �}�O\:�9X����	B�-0"��������f��p��]:g�)�&��Kz��(g3��B�*!��E���6��wS/]eo�7*�~�2���BjY���{{N�M���}j~�nV���Y�ș��"(����:���%4]4�j!P�Xzj��
Vv�ǝ 
$K�W�u	�$�b��% x���^��4@�]�0�	���XkS�骔U�̚{���߮���@9~��ص�H��4�V�ky��g��e̙	2��;��z�6T��=QR�8��na�� ��f���\<n-��T@�q��2H�J9�=_<~�����v���(^��nL���*�E��t3���G;Y�X�eDGY��ćЪ
k��=�O$k����x��3e��$3�x=�q�Fz�L�5soC�xym��dE�BB��7(:��D9(���&���]� �IC>�eU�ɰ�s6T%�j�x�s�<^[tVM��^���������k�����z��f:J���5jkTf�8��aҪ�+)�g��TX���fW�����S$�M>E1�>�Cm�5�|R�yW��W�1�{�1Ztק
"�&eg�}-=�S�b�@��ݠ*��HA.��U%WDp��_����ͷ�K�,���Zk^�2Y&�1�A��T\�U�����ڌW�0@m` ��V ��Z�Ⅰ�dsZ��&5��\�Y9	m�����}=W6���>~C���Ci��W�	��B�n�(
 �4ˉ	+�Zk�:;d D�8�7��,�S�Ǥ��<�8	�
����纰���nq�qʓ��<z��5N�����&�-%K��p"4�
�bB�r�9��Q�1���y�v�gi�|/��z�3h�~���~���z��1�|m����������]�x�jaytʂ��D'��!�AQ��Yfi�CUXӉI��Q��`�OPD�2� ף�M�v����
�o��8y��AO�x���}�Q?�O�s��V0{��f����'$X��ں@l��>�GeP�c\^�py}� %�\��D@�����    mIaB,����G��?}�K�x�]��n҅�XFgE��|�i��L�$��z�_�%�ZPW�E/vU�[<w�4�Q�$�qz�u�[��F�?���p?�� ���V��p*�x[��Z����A���Kw�`�XO--9X7
 O̩��6�&J�0�7u��K;M]ڳ�ԓ\H��	��e�S�P��G]j��*���ͩKr��ʊ6O����)���8gǋ�
-.w���e�_xNQͫ�ݻ}w����N����;y>y9��%��3�v�7��e"E��,��Uam7O5Z����#�L����j<��jP
+ LضBD�s^r x���-5�z�|�R�ޒ����눒���ݤM�]�����S�w�R18-���v�
�Ƌ����*vQ�ׅ9�gq����~a).�p�����}S�����^1����U��%�X�喼&��@�u1��a�/S�%�c�S�av���B���{m���Hm|�?��$zݮ�&��m������A���I��F)$�Jx1I��Zr����myUX[AP��;A�� ^�,�ɬ�I �2�Q����c���)�-�W��u��z��q�&�O_��� �����Z�v�?�����Y�B��l2@������򪰶�b�#�u�����^���iPF^L�χA yQ�6}��0�IU� ͋�N��t�Z�&�xE��3�#w:�7Ն���A��[��:��)V�E����k��Ӌ���z`�4@�#mP&z/��V2�F��^^x��������v�0�?�C��9#9-#s:t/4�G�գ?G���^���n�ZMX}�/��Ɠ��S'>DqjN�9=�@.hn���KK�Dovy_MX[�C��̩Rz��H���$8�`r~�x�>�������g}��~
���)�N'h��l�5H錎Zb"?,��5am'�׾���X����\i�$r�[�T[e"�9�iZĪ�ٛ1�,u���ť�o���8-�=&��2��g6!�E/�%5am��׹�i��k��:9O�d��E{�1�R���|��`�)7o;����7�"�~���q�����c�K�����È&��J�˨���M���O�Ca6*�<��bi�h�rcw0]n��	���	��&�cV'ZE��N�p< '�g�I8T-Y�6��n�����V�h>Ǿ^�s)/TA@�A���ǋ}�!�گ q���̤F/�T �aA �<�1*�(x��!�� X�mV��UvN$�F��6���L!����D^M�`YӠ��NZw��Nk�a0t<��X���#�$-�&"��݆oZ����	!��&�T��ږu舺?M��JwXьO�t
=�� �9+=U}���
���䃈B����d��,V 6<z�5=�߰��(�� Xe�&��|�N�@+`	�����Ҧ��<6�cs��]���9�p���qw|�����aK��e��C@ҧ��0 �qV2Q]�-�)���[�aT��u�鞡��:n�ep�elDy���`�( ��<�B>Q��'P�^�M����B�����`A{�M3�����A�|w|��?n�O��h9?���@�~�y��I�����>���6u(�q�3+���g��G[ƯW�5���>���=�}`�ԙ�&���DL��Q�F&�w��q*�4*ӜahѲl��aT�϶��xsDѧ���_�w7���0fC`��8�[S%�`O�� GK���,�KUam���v�ŀ�$�R%�)1
Q3�X�s�?}�Wߢ	r�q�tp�a�ӎ���V��oOq�����!�?�у)�<�a9��3yL�-�*� �ҩ�U-*1W�5�^q���C����h���%]VS�v1?�-��7��	T����՗����n��Q���L�XO*��`��@�Md�d��XK�i�V˜+Z�1P��c��+�<e5�x�sH�	�=���#ș+ד-�VI�8%4y�ji��7&�V�����A.N=U���J�G�������tz�^9_����q�� ��m�ۥ��곏	m�������YR��<��Tn�w�lDK����bU+|��tҞ
�t
z�{5^��� �8iL�~����Ջ��f�'9��>��ޓ|�ȧ~��!�Iiͥ��P��Ա���D��>Մ�y���Q ���C�-Q.���0��V��Lv0q#�}q]SV+8����7��0]�E���o}'e�PtC�n����v��F�I�m�
�G��7nK�K��d�[z����v\�x���@aR���ט��64;��'��d�z��):���ԡ�U+�N�G�z�(�#ٲ�O�"j��#��~EXcFN�-+�Jz�)Gt7�S2C��n;����!2��{�zIn���y���^���}�&�,L͙��\9e(f�\����&$ ���cMX���T����T"�-P6�mΏ�{v���k1�~2�������f��+�ϊ��*'�Ic�-��˔��iO���V�*���A'i��<���� ��4��|�0�rr�Ŭ��Z���Q.����S�@'qH�.�ۮ ���"AvW��@;��I�$���.k���*[f�o�i3��"3��?^2��td��U�|��$J�>4z����F̐$�S,��ք�Ul���ª�5�y�}���w�9|�(�f8z'-�Q�C��d4�I���3�O�ٻ~C��'�K�l��*���:�1�>qD�,o]����?���m�����}�0`�v�Zx�*��B�;w(ֻ �TO:����vUX��Tf�I04�+��b�կ��ͿOݤYP�@�im|� Մ��+�~�as��0������}���O�Cw�(Β��Lr%���0��}|\���6ǟ�?+zF^G���_/�w
�����X�����~$��ŝ��lP���֪�hK���ǋ5m��f�����)��JP,I_t|㭎Qz�x��*�'��@�Dsu��Ϗo�t׭����)����zY�;�u��UMϣz}t]{;Uam2���r%����n�έ� f����(�+`~\�l������j ��<�G+�:��z�S�k䫳 �|X���ř�j�dC��4ٱ��'�����CWC��Oo���ؽټ��������W'�I���!��R�k��b�Ъ���3yjz �g^J�|2?X7 p��(獓�k1a(����~w$?�l��yK�����-܌�;� �d�PvE����[Ι���t�J�;����[N�:U���j���D��L�\k}�>�<���:������)��?�� h��}�Q��*O����Amt(7���)�MH7�X��K�~� P1^�KM��n��1�M���.<��G`���n'}q
Zr�@�M�]�M�D�{�0�Tn"]m��D��Ʃ ^�Q�T��em�.��+�$,/1�>��*W`3b�����mb�z{w��OO���J/����i?��M�&�qVz�Y$Y��_����	ͧn�<�.Xm9+�k����X���"��8H����W`�	<B�چ6�E��	VŤ�R�ON!&-��}�=	 2y���<N�q�A���1\�ݷ����55�R\�_��8i�\"���w}r�B�JM��L�0�L��jh��_���	k�B:b ^@�-�Ζe#Zx�ܖ�x=��Iڃ�%o��Yڅq��9�Y_R�Y�du���O�1^u����m�����=7 @{8��BL2d�YO'��^��b����3�5aOl�\5[\��%5 ]��.�w���C���z�?<t��n����'#)(��ӷ��>{��M
%��ƨ�fBRF@+��!��n��=�5am�1xAR�&'L���֘�	:��*gX&�����M\ۉo���c�W�ӡ��p�>vO[F&ɏd���k֎��|�ۊ��
@\��苄f��u�a�9��[�i�(�bb����B<��䅣�����T /���h2q�z\Uy�L�q.|�iC�F���ۛ����������+0�d�>�r�7�5    ����^C�e><��bX���	k�.���Өy5���X��ж�_�r�Mֈ�X�ey��C,�3Tڍ���s�����v��q��ve������������%�r�8�
��]Cb�����1ϻ�礘��Yw¢u<�pp#�|l�3��~C^A�]a��yMΕ�+piO���U4�h��1��Q�u��c2��= ��:�Mh�+~`Q�A�p�$&9UE+�L�����V�"o�]��?��s��aFE7/���q��t�UJ��o�. ���
9U�	���-W���{5�y%(��L�������bdP�^7y��N�L��\�8q"М���b.qis���hX���L��Vf�}T�K�'Ff�3��޹&�-!M�.C΢[P���l�}D=��`�y��3��m�k�<���_�Y�ַ�`T%����Oڸ�2Q(0���Ӈ
�y�Q�����:�,vN\Q~�~�f���]��ÿk��7JF4�1K����r <��_�����㊰�w��_K!�2x�D�u.*@�b(�# �j'K
^%c@p��8���3V�5��h0��[�9�0�/�=`	@�Q�{�kE׃3`=��w
��&��Q���`��'�ߠ��. ��)�Qk�*KE��Z�T���B��hC�� P9��������)5�1X�Cd�S��	�/�@�x��.��GV�u�����<fº������)���d2N�b���a�Ae����rB��'` �ّ�c �):&��Sk5a���.�'ް�XX7� �n���G9ߑ/�ڕ 
N��?�q�������Cq��~���۽�t@
	�xsؽ�T#�A���`�t�76һz���@���Uamq��H���lkP~�c�����e[)6L#^[z�O��%U�ck�_"�ٺI����&�8;�?��h�yأ���)��68 �h�\T9�?��Rm�
k�Y��z<L��K�vaX�#�G�V���*��K)���0?` ݚb�Bd1�3�5��@QQS�'�9�̺k�/�h%Lꀂ	�
p�l;RV�v?w	�i@���d�3�+e͝�?�먹|)�[o��YpL*��ք�%�IB�$izYyJ���K$ �'xG��+��^֥R�X>�R]����=���q��N�����.��{��s���J��U2�;����$�E�H���暰����l!&;/h����m���������G<E��Q�1�z;XЮM����u�UhuGNa4��t,t�E����j�	ktw��� L^E^ 
�bV��9C�,����x��V���~me;I3�X������f��r�����l߽? ��ܱ������i; I�y��.h�r�ߒ������ �M�{b��n��̤�������ԣ���iוa��(�I��4qOa���>�&��M^����EM�$���
�!I�3��>!(LO7 ���y0���Rq�O0��)N�<�6�t7�,z���4}Ә��GM�{9�Xh��^+=�j|TE�����,�C�V��^M<\��gf��v�F
ܶ^�`�BgV�������KA��})�U� %P�oz��,�N���QX�������o�?ysz��*<�C�`orQvt��IxS6�+.F�
k�>��eS�Pl���)�X�x�f��>��$�4�w*)y(k�k<�����x�'���hc�DΥ�����]���O#��9J��J�d1�T�܊)�� ���[�-E���쥴�[`�'���Q�m�+s��*��IyA��I6���(�Y /�E7�$јO��8#zw(^_�vY��~l��j����`�@(*up�
�ܳzw��-yi�Y4%oC *~�	�tin�äa�I��
Z�*����<��)�W�-!��܎�
�vK.n��S@�W�u�e�R�p��Op��2����h:�Q�F�B��&�0��,Ū�k��D"6�g�S%��f����jZ ��
h�!ȹ2�L�����n��,�9w��8�nT���.�q��Q�6B\���B(R6�$��sN��Ĕ�S�=�.$���{�ӣ����(���ƻ_ֻ<�6�|�#3��`a�����5V`<�ڜ�IB'�ƕ�dg@ˏj����o���)v�%|2s5��G.�7LN���Y=#iϢX�WP֖����=�(maYQ�����Q�wF���8��(@�'��ڂ&{ 6Җg��Y� ,�	�SUX70~�j����Y������b����]��j��S�3?������eamA��r8I 
�+�ZY(#Y%#�%����H��\}ݢ�x�I���$N�b�4X?2�u���knٿ9<�ܿ�_���n��F�م�D����M;����*�MH�ȺF�>x=���ݰr^��,���> G7��,�SƎ{�=��u�Y�m��_5�ӣ�Hv��a~�v{ؼ�CE��M�$9�riu��ձ�N榯A�E����t��o��8�"��{s��]�h&u �t7Ӵmj4}ؑ��x_lw�J.�ha,��k'����.id�u���{�"�Ǘ�%T���C��81�I��߹�d+&3(X(��H��0�v��L8�K��ˣՓ�pg�1i� �*�q @-�$d�$(ח[ӊ���
%S�=������q%�[�gB��<m����E�?؋����y�&�����/^Ƨ�	���C�r��4:qq��&쉭�)�v[/T���f���ٷ!X����>�+bi+�c�.�'?0� ���.o��	k�	�=����_�����Sѭ�,9�b_�0 ��A4�:a.g�E���8��j�a���O� מ;Z���Y�]Qn��lV�5�Qj<J2Z�:H�yj�V@WR7N�Ѓ<{�ʭ�o+�����l;��~W�𺳄�L?�#�$���'$`�s�Մ��>D̔L�GNJcI8�{*\[
�d�L�m7�t��S��g�<b��
��������H}F#9MF�J�t��8QyF���~9�xM�{x��LV�f^]Vޤ���2��6;��&u�N!�z`��>'��0Q�t'���ކ`�`PР�/�A�z�(#V%��	���~>�*|�"ު{"mu��O�SWB0��͐�ZYaa�mL��UamI7/r*P΁��c�U�e���q0%b7
@�\6�Q5��%�/M���5���?ҡ���ɔ����(`��_n~�g�8c�Esj0!I�o.i�<�(�iW>�dEX[2\�<�e�����X�1T�Ӫ��Ӝ�V�B��OJ�X�7��ТJ�Gǯ��<Z2i���I2���L�ˇլ
�o����1kQ>��!m��U���R�Ρ����k$ɦ0	� i�_/X���⑞���aWm�x�ĺ��Dx3��Z�=�x��@�f{��RV�b�œF(fP�w�K��A��Kgܫ��5���F�Va�Q�aoz�ͻ�g����qvر�[����$�����= Ұn��Μ���A�E��*�s�O�j��e���_Ʊ<�FL*#8ǅ^��+�{i�Y|05a���k�Q�Z�u����X���i| ��k��C�K�5amf^�!5�V!zV����_*)\sH͏�@֯����)�i��'A�?7��Ṷ��N�.k��ѯ
k+�k��s ��_(E?6����P`�m<̹�,^�@��-s��l����;Ή,��s���6���Wi%̢���ǃ�c;�	kL���b{K�W��d�
tF� .�(v�(�A�����ev�\ȅ<Y���{&������|�����}|Z�>oz�� ��2�U�3d;���Q�G�Bl{]�QF!u1�i�;�{
��H1�%�Fe[�Xٹ|��V�.[�̅�6�]�%��I� �n�_�� ��^���w�*��0e�10A��]�S�7�bD�ڈ�e9�<�W�ژ���ݻ����^2KO�Q�"�Ǟ�H;�"��|�2��&��ebM�4P�����O9�n�0�B��#�b��ⳁ�4�xvx���ޡ�y����<\+dOz�O����"�\r r���w��b��*�ɽ5���$�i+BU    �qX��
^O)i��ԑX�� %V��;�됶��&�d1x��X0�RU���<����1OVy%��OOx���9����Je����I	p�ŎeUX�̒'x1���Q�G�_�a�Y7{mɱ4�ciե�����ΐ�#/B1��9As�3��[MX[��n��d̜\ �6�W
X�d北�m�IX=��J_�/O�; ���x�.��}�g,I�7�yJ7�N�dDR�vP��(��j�ںčU� %(����#9��5�frM�Dޗm�Rs�A*��XǉT���.���0ՔB�c���QB�n��L��ŉq1SMX}K�|緉|Md�4�P>ۼF�����2�Uh�Rt��y��t�ʮ62!�X�����z
��1���w��^��UaO����AH�|�L@���7�W�a��'5ܾ9W˗���}�ޔ�},;E�w��En�(YྡA���~y^�&����^"��z��8��;s�߷m��z�58\[����S����&oG�nHn;V�P1� �F��_S��>ηO����Z�)�������� �]�ڿ>l;z����ە��y�=���=\���s����!�����ab�a�oq=�&�����^d�$m!���e�i��m>��_:G9��AY�L�1��@'���F'�C�]�~�t��O�{�	�ş����Kf������ùu@+��>��3��nC��JN��d����c��1<�ݩ� t�Q��1PMX�$?м� �|��!�a3�-�\�Ս=�Z�!��Dp�tE��W���6cRϵ l��69{7-F%O;aJ>o���<LE�y�>��U�+�h+��R^��fi�e�/�sr�SD+N�f/�\q|��X��gt[��,������OV���;
f��NWs�:(��jv�T�s�٣�2����J������W6�T�}:p�Th��q Vm����lC\Ozr�.N�,=ugV�w����(n�3�+��Ш�7Q/鯩	k�W� i�
h��M#Z�Ӓi�6�Ygf�o��!;0y�>���b�MڣO"�e��yVT��2�895�؎l+Z��$v�&8>���l;�u�w��nR�`�&6���0pU�(K�n.���ۘ�{��|{x���.���W=�������EƵ+���#g� F(,�ׄ��!^-X�J�m~���u���;wrli,,a6��>Lo�i�x�9�g̐%*�C�OHf
�xy��X��uq>�MEX}+�����y+/4�$��v��qC?f:�ǳ���P@ab�������J��QwMX[�o��S����0���z����L�����;�U��R���i/��ݘ0�2�14A��z�sR�dVT�=�0p�#�<�4���4����ҷ='�G�^�0�&�������u&�7�=�||����懕}�,�&�
��G�>>�RXd:��>�N�1rqtU����?��G���r`A�/OV����w,�Oh��n�QƵ��.y1��?�ν��n�'�6�?J�ȳe3������l3���B��ˑZ\��
���u�J�&v`���ˡ�8�<�/6V~|x�'w��^�λ��������KZ���M��a�p��wk���Eݹ7Kf�+��l�H��C_C�T2ϝg�xK.����O 7��D�
���(/�f�pK���IR��붗���7KN���puc1�3#&]�[�����p�n6}������Fq�)��xi��*3�l{�$̢�u� D�� O��pQ�<�B�$;%<K�[z;x+���I�jъ�P;�6���Y��OЎu�B�����5�SHY�� 0Y6	��z��X�Ho��r�Deo���	�]8�K�H^�S��:T��T k�#�d��)\4j��L�I���9�f6]g �/�w�7o���˭���,������¡||	����f�*���!��o���֍tJ�a�V cp!�d~-f�Է�=�d��,uvN�aAI+�9:
x��&j����Z���G=`�b遷1CD'Vi�S$!l�J�*G���f-�z:���D��/��u���vw �����Ic��yx��$_�,L�����d (5�A\:�R֦�]$Zi#�5�D�z��3���	�����Y�|z���ߦ�΄�dm�aj����\_����E��d.���޸�
�`�ZDo�D�Վs�z�Z�5��*�yU����������^jK�̿�{��c����  ��{o�q=������MlT���&s��ZMh�ӓ����'l}G`N���l˯�(ň9�A �2�I��¸q�3#�����p9-�tsI�^����`Iv��lX4��ڲb�h�29�ph�73��d6qB3�-�/6vt��6�����9Ҵ�k7��sN��iP�����ɣ6t����.2�	kR!�G_����&=LcH��i���4g��,�q�$y���N@a������O<���ҷ�cs�@U�7�$��Fӿ��2U�Uam6��nJڀ�F�4"�H�FnUO���4B��
O���qpƔ�nԅP�a�'t	A��«�߷�a�şm'�%?elD�w<��d�6�/2*�#-t��J/��� �*�6�rNf[p��`Kܵ�X�0�;��'L
�g-�m���LJq�6 �+��M=�F͓�6nb.pc���~�߿����������������`f7/40��,A��Y𚰶������"G��:�����4~�(�<e��k��x�684�#�X��wtx�ێmU�����as\Y�F���o�Y87-hP����׋ B�yɞ�jqӁ�z���>z�� �a��F^�
���� $.^}.Z�de���djژ��~`����4����S���Wy��u�����	Q����`�2�u#o���JRh�+��@�(@�m4�=���(714ل�PΚ�=�m��:�`�6����3ߍ�[���g2<p(�����AR���^-�F�	��0~�'M���b��7��'o'�����)k
m��X����RH�i�� ��c���5aM6��\]H��0i{T��,��t۔�;� u���_�~sw�}��{�v����H���r��n��?}G��&��ʬ�ёB=^7r�S7V@��.[l>�wU�[7���zJx����8S:l���#~td����XC��s�a�q!�]MX}�/�ZK���d ���#r��1��?�;�$�c�1���}�},pyg�A�!�$0A�C��g�����~
_i���9����D�F����t_l��]�_��ѿ]}��w�+��f\��׽���>J��NjЦ2�,�e�=�ϋmwUX������(	��y��[6d\�A �X#A�d�|pp�)=�@�D8�X����@�`en)r��#%Fab�u{D/�(���4���;F�2�E��DX{ �D�S���ֹB��^��%�?�����{K�\�����E��93�©�d[�.W@>{�b@S�nM�.��0o#y��ۉ ^@K�0Y�A ���wɡv�m�12c1 Ԏ���Q�X#��x�a
���'0�ǅ�q^;B�����8Yx�R�0��D:wY�*0MI+���7����@�@6������2;���'ÒQ������]<Ė_|�T�W��-���LF�����(����t5amf����o��AJy��MaD[C��sc�i�+��I��B�v����>v����_��Q��������1�nr t�5&]D'Y�ǉV�>;�#۵o�&�� ��|��P���L?u�(�D��I��q8�NP�v�����&N53;P Qhw��C��!�Ub*�	�1�e���ⴃ�a��5amn�'��Y�����t�,��(�M��:���=�OL�.� �<7E�J�A ���ml�&�s��6��^E�f�H����R/o<E��������Or�׆)BR�3<}�M1\�����a�������o-P��l���d�0��Щ�$j��<H:���If0k��2�Ht.�&��    ��Y
jyme4�'�������,��\�rW��Ԋg�2�@.�
ŻK�/Ua�����"!Z���=����l����+:Lz�tL��������$3��hD!�'\����n�"P��dQ�ͱ��ЕQM��s�E$t�0�,���6���7��=D�L�hG玐'C �U&�W܇�0GJa;O���=���fY)�&��3V*gBɏ2���	E�F'�?���m���A�j��RL^�x�͞�_��%��ͱ̞���m��F���"��շj�e�y�����{I�^���X�r1�EUX[�B;�ςN�Z�6�v��H��<5B�(=Bgf_�ͩ<>
�y�4�&q������^�rB���Ջ�����.����x�MĳTK|��E��o�ի�ͦ�h�CJ�d�0���F@�@}�
6��/�^�۵n�tyFc��|����{\o� ڽ{O.��t�2m�q|��E��,j�Zx&Vy�f���J�q���'�*�����8d��Ec֑(���A�k��j7�@��ޜN�_T��n eʗڠ�B8�/ࢭ�����o��bs�a���lsܮ��`�@���'YS�H��=�@�͟. >&g,���\>��k�;.yP�)a����a�����6��m���b
fCI�B/¬*�4z���T���lv��S�рU�6SK�v������P�t�=9~`�=�~��;LwZ�H6�4Y����
� ̳t��$���GM̴�������8��)[�^n�������X�h��s3{��́\M���Fh�J��
�cٚ���V� F�L�j��z��7�kmɫ���fn.�y��mi�\[p��n�Q�ÊN>�&�9�C°��-5�^������r{�G���~�j�Y}�=��9V���cj�-�������uJ�9������L�`E�r��4�XjT�9�C�\��8I�]~���H�����˓�Cf1�#K���k��R-���cg�%&�'6�]�^��vGdß����7o�A9��7#�������؛������^����<D&�#�� �$.�%�m��b�%:z�X'�D�N�����z`�Y5~�%�.)e�xlT�,T\���t�= =��{���f��ꑶ�kz��O�<����8c��&���]��y���m�D�&����/U��Б��R�rQ�V@��Ta�R*ͺd�m.� 2��g@]�{���2�m�)71�<s�cMq
�Kϻ�!�0j��NY�@�s�N:Fz[��@�(n�M#9E����
�yS��	�\�Q����
{L,OA+�Q�� ��R� ���h�����"�(}i�}j��X$?�Q�.(z'X�H���r���@W���]0����q� ��(��¸�"�3�����"y�"!3Vz���	�O�����{�v�h� zioZ�)-O�2���I�&��.c������9�b3��S�%�� ������M�9�N��̧Mz�MdǯQi�ct<����DyFՃ�p<���(cVؓ�.P��[A�������jK��"1
 ���2 �]��zf��V��C���&jBWޅ��>�������9~b4�D o8�
UVV�V����u�"���҅�� �mt�^�X��sq�B�D-x{���0��mD:W��w�GZB�2yex�2@��t<=��x39^��W��B��}�8ԥ���?�-��0}$��\p�e���b���9O�&1�� ���:d�u;��b������V�w��5F^���R�`��<m^k������=ܗ����:[E<���m��3�@~�V�L�f�ŝ��L�3����E�#CԚ� �;�^y�"E���7Em����ʍ��VɌ�(J��)�{E���e����vH@$��x~"�Stq�(��E�������⭀<K����xY]44��ͣ��W� ��-O!j�'���M��dx�&�I���'3bڨ�S`�AB�)yz@�wz��E�Z�"�I���y�P�Te�yz��E-2�1*���,=E�|4ϠP�T(��yf(�B��<o������
��YG�FOU�S�S$��*�B �@L_Y�ѤYh&/�#�w��I�̻�B�2�Қ4��H��\i��|e2in\�Bq���c4���yO��e}!�^gr/T,����s
�S,5�2�L �.\�(�<@A��
�U2A�x)g�`�F��byyO���k	�i�\����D�/㸉&Z����G�,Ck�y�R7CQ���ފ<���W.�-�@�.Z/�		�<��X��c^���Z��y�h|��H��0َ�>�Ղ�`�5(��?��m(�,r}y��z��p�Fi|�`$d1f
��<��}�:H���+țUy��:��'ˀC���%@HQ�$�0k,���y��w�#�o&�BB�D,d�uy
�["�@��H���V�,��˻O�KmYv���8�ƕ�Y~B������w�e#��������o������w+)V���5�l4���#��H�B�8��]B>͍zK�%�zy«��l�����q�$r8�M�@'�n?Iz�Y��;��O���h��9PR�7m�W_o�7���jh��m�������_}޵|~z��z<Ig�����J�w�4F/0���~���4&�0Q��G�<��Ϻ�d
��l��\�d�ɺF3���;\�e�p EBL���P��D����kk�����4no�\'��6n�����qL;�����~�gÜ�q2�]@�c�Y:��K���0�%���}S?��"�m��r-Jdx/�pK�K��ne7��o.���ᒖ�鎾�	椟�<��.f@mB��l�1�e������`��/ �"���~�j)^+��kWn����|�xw�f���as�y����?�B�����
����ފ���S�k�Bk�@``���,5am�%��޵��Q����p"@6���%��ƬC���IU�pi����0��7�7۾�<�y2�a�a�C+�4�ڐm֖�Ќ��?����̧��;X�#�yR_�]!���S�Z���  ��^5!��0G� Lr�!M����<�����'��V2_d�"#�eP�3������i�y�m��8o��;�<@��C���o2ۈ���Ah�����~��S^샨	k��1����Ơ /���=ϲ��ke�n�R��s�������|'o��a��`H'���%]x�J��n�a7@��N�MuA���"0j �'*��X�Uam�irB:(g�ek�qC&3X���R�:�~��!�Y����&I�y�#P~ (0��. �s.h� b&"��0�R�+��<w���%��Z�.�A�
�h�%"����0Kd!��O6�7I�,v���� ��O��).�t���#%0����*��β;$_�,K���9�1~��XpC����r�����w�����>���8�V��0� 3L����l�d:Ԅ��D��*�;~0�\�I7���O�Y��<����>81���hTOш�˿z�}�B�+Bz֞oo��z���[9
f���;�k�l=�:������B/�eL0^�
m�r�'��ںq@P� 7����ؘ�}�0Cd��YQY(���n�&�Ų�Z��veZV��϶w7��)�Rm(���j�����6wH[9�x����g�
��8�m��;@��+�f��z�R誰ƶ�ު�H�h��̿�IQ0آ�@/I�.z�$g)��|�I�|�g���̧*#���=���糢� }�O��>�+iqX@X�֡h�g� ����`.-:\�2�T�r�hyؾC��+��?��-]��7�9������ͪ>K��C�W8j&F�W�Θ��� y�^��sYXcOR?8>
�,Xp+:g0�*E7ӣx�r���#��d���K�$�>=����)6$�wH�q@�Q�ڽ��	�?�����R��a��b�h�8�+�IЏa��LUa���M�Z�,1u�w���m����<�f��7Oc5�]�?�� ����1�^ ��b8wiQ�*��g]�&�}�PQs    zO�\+��%+"]��&�}�^w)�/�<��J~�'w���������7���`G8���Y$�o���|B"�(�/��
k��1�2�2f��"Gь�O�5��qcA# �i:�6̕�,��(j)��\U������7����M$ʨ��oiY7��_mn�EL0q?�s�H�I�8R�B  �,^3
I�L"E�b�&T��U�ݐ����>/�E�A�������9�0 �z҆�,��������&����B>:�o�w?����~w��m�����]f6�@KT�u[�ƭþ �:bN#�����*���v��ш��DL�M*��?>��o� nW��ε{��y;�K	=yO4����M�qu=yYL�rz�M��E�b�d?P5am�=2*e׬��i�bF0�+`Ba��W ���EU��K�𫵚���z�y��W��Fܙ�J�Ǉ&r�����F0k��ʐk�i.ҩ�5ર'�m���!]Y@Ua&�t쓒M=���{��߿�ې�w��'"d�/�=#hج��!��<�l�����OMX[�6pݳ����e�<��ha� ��i�.�����q@xЖ�v�q���fM�b�I��ji �ɐ�\��yk��e��ߋ�΁��˽��,�d`@�i�	k+Q������1ƀ�0�
u�:��Ew�k&U8MD)�1�Y���Ϝ{r"H�0C�5�.�`#)��Z/�yT�5�t�� �2(�$�����<�rb	ޮ�I�)�dۿ�6�a�S��l��f��	O&Xӫ�L��j��\ +: i�]��J����&2D-����{B�vrq��x;\d2^��o{F!%�-9���7-P���Z�:��G���O�I��`,8ƚ���#�x���|���m�'̓: ��.��Wi��=�p������=r�m����-�u���'碎+#��>vIZ��A�t�	v�Y_7�9ަ�k��R�6B�� �VVz&���� �G'����V���`�8G|���e���f�}���?��}�}��]<�$�?FU��9���� QiP(�Ź����!6��<f�Q`R�W���Y�7�N�8���v���nw�Hv5����ߢ�U ;3gB6?c(G�o)��WMX[˵��"F�W�ϧ
~���#�}Yҗ�>U]x�}Ț�I^~���L] ��.�6%��R^��-U�� z�y��?�.�E;f�N:����B��Qdv>w:�T~G��
����Y�Y��$��Y1�"����Q�A��"am=��dT#t�mx�҇��X��[Z�Y�kN�>�H�<uS�����)̝�0	���б�\Єރ��4,ӏB�a�)0Nv�'��$��SaM��'�֥��>D���s;~Ne��.صue�e�bs���;�'jн��p�;N���3�0���@;m@��{�5am��r`B%
UL@ןO�\fR^Ô�r����*�I�W�ݳT�6�N���*����(���.����BMX[~E�ڻ����YUa��Jŵ�e�W�iO�_��7w������^^���xD�'؁�ʞ��4�1(`׬aڅ��f�~g,EqK����6���7���dy��r��R�!���d�� zv��0[w
�tI��]Ш��N�.�
�-�}�`�($m�<��G� �b6�(�����a�b�2T���N{�m�,?�e���ڮ��<z�)�'�O#��W�R!-~�� ��v��e6&;��;W�ğ`.k
�n��1�U �9�a��6ab̌2�	��8����+1q�o��I���'��"&�l����6om?\S �ע	sa���U�j2Ӭc��C���w+i��auQN�A�/�C�^���`O^lj����vr,h?5���E椮k�y��77o�o�߬^m�n��z~ù��f&�&R����^�W�4"�/�p�
k�	 g3����w�����g�����e��]~�K,��o��/?�ߣ�|��Rx13
�81:k -���ed�����:�p(�Yp���	kS�a�$ �y �-�%HS(,s��	�e88�1� 8hndGe�0.d��,88g��{ ��iL�wsyӈ����S�4o���݌�ْ�T�8硫�5�^8��L��f|%��@^l�j���haԕ죵�;�׬�=]X�8m�e9L��Lǆ�^2���J�oVDX�P���x�bs@s���5�6�(��<K�YR�[�3�V��7�V��(M1+/�s��=y藶��\?#0��D�U�izr����3�zT�9����A���8@��0�"E9�"�0��t���b�M+Y����c��a�a��Ƌ=��̼�v���ݽ[)��f�o�o �D}�y�'��])JU�J�Ji�6��x����{�蒅��dZ�85����8eE�"�GɧNz��^�k��ZON��(�C[.��ݾ�_�{L��߾}��f���;�~m'G�f�$� ͋H�0=�(x��[t�.45am� �}�(�1jw2��d���"bx�f�x�/.�Y���::����&L��
x��+m�h��lT�B����lq	J�?�q�6+4 ���98�S�* t���C��N��q��\�6�",���Vl1�������+���3&�Qץ�@E�� ��!U%p%yo�	�k���Y`|RD(�"�*�m��\YQ��G�K3�Ƭ "$�mG9�篍^+Y�:�4z�n\���C�{ԜZodΝ�=�s $��#ǳ�-�"�-��� ��cYb���i��<�V�^�A�NG��0W<�K�����uWg��Ϗ�;r1JQ?������;���̛H>��_��ׯߙ��-* ������0�W~m��S���,k���W�L#Qٖ[`���.��ܰn��Qb�a�U�9N��w��U��PM��ln�=�V�� 0���5aMǀ�~xR-x��yQ�h-(ʛ�qq�[�iƧ�d{����{穣~��fH��C�͹=�^
f����_�� ���ܪ��6��b��P<ґ��;]j!���p͈��+ ?Q����ٮF���P%��K\�g�)��5�b����<:䙘��`_��ϴu�6��y��K;���\`T?�~�=|���ۍ o����dn#]��*`H��GNI.��	k{GE�9� ��"G�'5�F)&RR�^ ��!>� l��(���:��Y�2M(�4��`�mw���˫G�����
����}+��� ��n�8}�1�|zw���q:���:恁`���U���*��t��t67O˞b�s� ��01P(6
�$���Ȇ��VU�5=hVHg`�j�ng���5$fz*�������n�.�~��as|�?<$t����o�HeI�ЦC<��:�ߙ��h�0aɜ����y�^�� "Ua�E�<�	�ǚޡH��l�J�4��s�]p���
�{��U���Rc�����#�~�xAFQ��@��sX����P�S��Os�O��.�= �/����!��@���s�_��׎�A7�F�&:�5�q������~B��5o�W@��d�}��Gd�m�J�:�-��~���N���*a5R�;T/v�e?dR!�ZYQ�5�؛��g\|��k��>�(�1��])�#5P���bƊ�6e����5
�<����B{��G��z��DC�U��� �^�V`���w�II��J G�c�E1����=ȹ��������uj���F}ҠoA��ҧ�S�Ȗ���h�v�e]���!	�ڊF�q�P ��O`��J�<P�7{�����ÈQP�tZyLW�T��4�D����°�O���o��우���ha�Ox���<.�\��b�����R���w��i����՜���vġ.�_�<)FH�Ɵ�+#>h����jw���L`�����i�	�8���n��~UX����'�R���	�ŐAs� ��{�s*8#�+p�v�dȶ�V�3��&^=.Q�b<v�@λq�'t��,rL
�d�	�H�'�Ѳ�    0A�,o�O��ld��*%�êr��E J�8YshH/ƻ �i�[�S�x��aFa�Q:F���]�{ \=� ��aTeg3���5n��X�0�끾�IUK��(U��qy�6�A,.��<O���;3*�̬Lr�)����<�0R�� �/��Q��m�%ȩ �&�+���.�c&���轕<��Qdy��F/e�	F]D�e;��W_n���O����n�㞌����J�^�p5o�; ��Ԥ���!9G����S�!0s�t��)E�A��[���	k=��>��0\���a�Q蝋�_<M ���O�!�0�|9?G��`��B=89$����=	Ӥt`$��"\Rf?����ejɋ��&'{�<K����s���~�&��6O7#�U+�Ck^M�>���^4���������<��|�I ��Ns���m�vI^� o���
,hmk�����i���� ����ZS�����U��T�O��䞣7m=~θ�k��J��/3��g�����E�<����p� ��1���<��6�ň����Z{��ZMX}��ܦ�k��q������q�����8��wJ����n�T^����ϊ��~η��v�I����̅%v<�N�?k��@�g"���k���
��~��U�5Y1t�$  �>�OY �de�+�z@������̵�k��9��WC"�7w�G��~��ٽ_����a���ݯ�oo�~J����&!��\��� �Ӂ��Y���	M��Z��T�ؠ��(��P�ڷ�z�QR�:_vY��E���I�K�A/�EV�%�t��\�����bΰ�!"�ma�՟��
�����-���"<�������?������j����l�3��6���-C���j�a�E�4��"��j���Rܭ�4���y횰�&�o��VJ]��3�wq%�u0���W�ߓ���ﷇ�MY��t���>�I퐛Oޒs�z�?�?l>������w8́\:�P���%2�	�ւZ|+JUX��i���^ EK�w1�d����x�U`������\��F��](��Rq���p��i#yג`5&�Ҥ�v�W�x7l�u�k�����?�����b���wo��ѓ�������q��=���	m����݊fF�ɖ�a���O���6ҧa����Z�;�&��R+4�;֛|�}�YjRO܍�c����
C:������a�w����+��<�p8=Q
6O��#IA:Qg�!H�o8tTj�=�2.���,��n bG�fA�D�krf��ސ��U>A}���|�J���D+�x�B|�F�����MEs�f$0vk��_�������]�� P�8<�����Xa9���TA@Nxb[Tav�B][���ި
f� Og�:���7o� "������=n0���{��AH�_��i��*��	�#wz�#)�}9�z��a2�܂��>9��Y ��)+�S�0��@E�8�K��9��3�Z�D�q��`���@ڏ��4�69=.j" �Ԏ��6�ev�
��% �z]Si'����u��� z!l`��bA�=�@�d� �ϣ O�~�`�����s�1��'1E��]�B;ʁ�������2p�>no�^��C�ZU�x����:�<��T�z�G���"!�x�g5a��x{�Nf&>SW_�^��2������nW����v��ns�c^D�������$��ʹ>�>��Iޢ��?@��6�"���j.� Ñr>���׿��o��3��     