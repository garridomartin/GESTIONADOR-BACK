PGDMP          	            |            negocio    16.0    16.0 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    861465    negocio    DATABASE     ~   CREATE DATABASE negocio WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Argentina.1252';
    DROP DATABASE negocio;
                postgres    false            �            1259    918109 
   Categories    TABLE     h   CREATE TABLE public."Categories" (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);
     DROP TABLE public."Categories";
       public         heap    postgres    false            �            1259    918108    Categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Categories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Categories_id_seq";
       public          postgres    false    216                       0    0    Categories_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Categories_id_seq" OWNED BY public."Categories".id;
          public          postgres    false    215                       2604    918112    Categories id    DEFAULT     r   ALTER TABLE ONLY public."Categories" ALTER COLUMN id SET DEFAULT nextval('public."Categories_id_seq"'::regclass);
 >   ALTER TABLE public."Categories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216                      0    918109 
   Categories 
   TABLE DATA           0   COPY public."Categories" (id, name) FROM stdin;
    public          postgres    false    216   4�                  0    0    Categories_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Categories_id_seq"', 4, false);
          public          postgres    false    215            �           2606    1019952    Categories Categories_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key" UNIQUE (name);
 L   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key";
       public            postgres    false    216            �           2606    1019954    Categories Categories_name_key1 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key1" UNIQUE (name);
 M   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key1";
       public            postgres    false    216            �           2606    1019942     Categories Categories_name_key10 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key10" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key10";
       public            postgres    false    216            �           2606    1019830 !   Categories Categories_name_key100 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key100" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key100";
       public            postgres    false    216            �           2606    1019828 !   Categories Categories_name_key101 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key101" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key101";
       public            postgres    false    216            �           2606    1019826 !   Categories Categories_name_key102 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key102" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key102";
       public            postgres    false    216            �           2606    1019824 !   Categories Categories_name_key103 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key103" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key103";
       public            postgres    false    216            �           2606    1019822 !   Categories Categories_name_key104 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key104" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key104";
       public            postgres    false    216            �           2606    1019820 !   Categories Categories_name_key105 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key105" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key105";
       public            postgres    false    216            �           2606    1019818 !   Categories Categories_name_key106 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key106" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key106";
       public            postgres    false    216            �           2606    1020032 !   Categories Categories_name_key107 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key107" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key107";
       public            postgres    false    216            �           2606    1019816 !   Categories Categories_name_key108 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key108" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key108";
       public            postgres    false    216            �           2606    1019814 !   Categories Categories_name_key109 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key109" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key109";
       public            postgres    false    216            �           2606    1019940     Categories Categories_name_key11 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key11" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key11";
       public            postgres    false    216            �           2606    1019812 !   Categories Categories_name_key110 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key110" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key110";
       public            postgres    false    216            �           2606    1019810 !   Categories Categories_name_key111 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key111" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key111";
       public            postgres    false    216            �           2606    1019808 !   Categories Categories_name_key112 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key112" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key112";
       public            postgres    false    216            �           2606    1019806 !   Categories Categories_name_key113 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key113" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key113";
       public            postgres    false    216            �           2606    1019804 !   Categories Categories_name_key114 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key114" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key114";
       public            postgres    false    216            �           2606    1019802 !   Categories Categories_name_key115 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key115" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key115";
       public            postgres    false    216            �           2606    1019800 !   Categories Categories_name_key116 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key116" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key116";
       public            postgres    false    216            �           2606    1019798 !   Categories Categories_name_key117 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key117" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key117";
       public            postgres    false    216            �           2606    1019796 !   Categories Categories_name_key118 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key118" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key118";
       public            postgres    false    216            �           2606    1019794 !   Categories Categories_name_key119 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key119" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key119";
       public            postgres    false    216            �           2606    1019964     Categories Categories_name_key12 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key12" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key12";
       public            postgres    false    216            �           2606    1019792 !   Categories Categories_name_key120 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key120" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key120";
       public            postgres    false    216            �           2606    1019790 !   Categories Categories_name_key121 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key121" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key121";
       public            postgres    false    216            �           2606    1019788 !   Categories Categories_name_key122 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key122" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key122";
       public            postgres    false    216            �           2606    1019786 !   Categories Categories_name_key123 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key123" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key123";
       public            postgres    false    216            �           2606    1020034 !   Categories Categories_name_key124 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key124" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key124";
       public            postgres    false    216            �           2606    1020036 !   Categories Categories_name_key125 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key125" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key125";
       public            postgres    false    216            �           2606    1020038 !   Categories Categories_name_key126 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key126" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key126";
       public            postgres    false    216            �           2606    1019784 !   Categories Categories_name_key127 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key127" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key127";
       public            postgres    false    216            �           2606    1019782 !   Categories Categories_name_key128 
   CONSTRAINT     `   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key128" UNIQUE (name);
 O   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key128";
       public            postgres    false    216            �           2606    1019966     Categories Categories_name_key13 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key13" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key13";
       public            postgres    false    216            �           2606    1019938     Categories Categories_name_key14 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key14" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key14";
       public            postgres    false    216            �           2606    1019968     Categories Categories_name_key15 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key15" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key15";
       public            postgres    false    216            �           2606    1019970     Categories Categories_name_key16 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key16" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key16";
       public            postgres    false    216            �           2606    1019936     Categories Categories_name_key17 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key17" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key17";
       public            postgres    false    216            �           2606    1019934     Categories Categories_name_key18 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key18" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key18";
       public            postgres    false    216            �           2606    1019972     Categories Categories_name_key19 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key19" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key19";
       public            postgres    false    216            �           2606    1019956    Categories Categories_name_key2 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key2" UNIQUE (name);
 M   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key2";
       public            postgres    false    216            �           2606    1019932     Categories Categories_name_key20 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key20" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key20";
       public            postgres    false    216            �           2606    1019974     Categories Categories_name_key21 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key21" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key21";
       public            postgres    false    216            �           2606    1019930     Categories Categories_name_key22 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key22" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key22";
       public            postgres    false    216            �           2606    1019976     Categories Categories_name_key23 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key23" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key23";
       public            postgres    false    216            �           2606    1019928     Categories Categories_name_key24 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key24" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key24";
       public            postgres    false    216            �           2606    1019926     Categories Categories_name_key25 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key25" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key25";
       public            postgres    false    216            �           2606    1019978     Categories Categories_name_key26 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key26" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key26";
       public            postgres    false    216            �           2606    1019924     Categories Categories_name_key27 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key27" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key27";
       public            postgres    false    216            �           2606    1019980     Categories Categories_name_key28 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key28" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key28";
       public            postgres    false    216            �           2606    1019982     Categories Categories_name_key29 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key29" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key29";
       public            postgres    false    216            �           2606    1019950    Categories Categories_name_key3 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key3" UNIQUE (name);
 M   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key3";
       public            postgres    false    216            �           2606    1019922     Categories Categories_name_key30 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key30" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key30";
       public            postgres    false    216            �           2606    1019984     Categories Categories_name_key31 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key31" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key31";
       public            postgres    false    216            �           2606    1019920     Categories Categories_name_key32 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key32" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key32";
       public            postgres    false    216            �           2606    1019986     Categories Categories_name_key33 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key33" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key33";
       public            postgres    false    216            �           2606    1019918     Categories Categories_name_key34 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key34" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key34";
       public            postgres    false    216            �           2606    1019988     Categories Categories_name_key35 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key35" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key35";
       public            postgres    false    216            �           2606    1019916     Categories Categories_name_key36 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key36" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key36";
       public            postgres    false    216            �           2606    1019990     Categories Categories_name_key37 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key37" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key37";
       public            postgres    false    216            �           2606    1019914     Categories Categories_name_key38 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key38" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key38";
       public            postgres    false    216            �           2606    1019992     Categories Categories_name_key39 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key39" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key39";
       public            postgres    false    216            �           2606    1019958    Categories Categories_name_key4 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key4" UNIQUE (name);
 M   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key4";
       public            postgres    false    216                       2606    1019912     Categories Categories_name_key40 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key40" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key40";
       public            postgres    false    216                       2606    1019994     Categories Categories_name_key41 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key41" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key41";
       public            postgres    false    216                       2606    1019910     Categories Categories_name_key42 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key42" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key42";
       public            postgres    false    216                       2606    1019996     Categories Categories_name_key43 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key43" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key43";
       public            postgres    false    216            	           2606    1019908     Categories Categories_name_key44 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key44" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key44";
       public            postgres    false    216                       2606    1019998     Categories Categories_name_key45 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key45" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key45";
       public            postgres    false    216                       2606    1019906     Categories Categories_name_key46 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key46" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key46";
       public            postgres    false    216                       2606    1019904     Categories Categories_name_key47 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key47" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key47";
       public            postgres    false    216                       2606    1019902     Categories Categories_name_key48 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key48" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key48";
       public            postgres    false    216                       2606    1019900     Categories Categories_name_key49 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key49" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key49";
       public            postgres    false    216                       2606    1019960    Categories Categories_name_key5 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key5" UNIQUE (name);
 M   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key5";
       public            postgres    false    216                       2606    1019898     Categories Categories_name_key50 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key50" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key50";
       public            postgres    false    216                       2606    1019896     Categories Categories_name_key51 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key51" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key51";
       public            postgres    false    216                       2606    1020000     Categories Categories_name_key52 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key52" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key52";
       public            postgres    false    216                       2606    1019894     Categories Categories_name_key53 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key53" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key53";
       public            postgres    false    216                       2606    1020002     Categories Categories_name_key54 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key54" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key54";
       public            postgres    false    216            !           2606    1020004     Categories Categories_name_key55 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key55" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key55";
       public            postgres    false    216            #           2606    1020006     Categories Categories_name_key56 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key56" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key56";
       public            postgres    false    216            %           2606    1020008     Categories Categories_name_key57 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key57" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key57";
       public            postgres    false    216            '           2606    1019892     Categories Categories_name_key58 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key58" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key58";
       public            postgres    false    216            )           2606    1020010     Categories Categories_name_key59 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key59" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key59";
       public            postgres    false    216            +           2606    1019948    Categories Categories_name_key6 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key6" UNIQUE (name);
 M   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key6";
       public            postgres    false    216            -           2606    1019890     Categories Categories_name_key60 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key60" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key60";
       public            postgres    false    216            /           2606    1020012     Categories Categories_name_key61 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key61" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key61";
       public            postgres    false    216            1           2606    1020014     Categories Categories_name_key62 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key62" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key62";
       public            postgres    false    216            3           2606    1019888     Categories Categories_name_key63 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key63" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key63";
       public            postgres    false    216            5           2606    1019886     Categories Categories_name_key64 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key64" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key64";
       public            postgres    false    216            7           2606    1019884     Categories Categories_name_key65 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key65" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key65";
       public            postgres    false    216            9           2606    1020016     Categories Categories_name_key66 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key66" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key66";
       public            postgres    false    216            ;           2606    1019882     Categories Categories_name_key67 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key67" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key67";
       public            postgres    false    216            =           2606    1019880     Categories Categories_name_key68 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key68" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key68";
       public            postgres    false    216            ?           2606    1019878     Categories Categories_name_key69 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key69" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key69";
       public            postgres    false    216            A           2606    1019946    Categories Categories_name_key7 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key7" UNIQUE (name);
 M   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key7";
       public            postgres    false    216            C           2606    1019876     Categories Categories_name_key70 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key70" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key70";
       public            postgres    false    216            E           2606    1019874     Categories Categories_name_key71 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key71" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key71";
       public            postgres    false    216            G           2606    1020018     Categories Categories_name_key72 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key72" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key72";
       public            postgres    false    216            I           2606    1019872     Categories Categories_name_key73 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key73" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key73";
       public            postgres    false    216            K           2606    1019870     Categories Categories_name_key74 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key74" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key74";
       public            postgres    false    216            M           2606    1019868     Categories Categories_name_key75 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key75" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key75";
       public            postgres    false    216            O           2606    1019866     Categories Categories_name_key76 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key76" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key76";
       public            postgres    false    216            Q           2606    1019864     Categories Categories_name_key77 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key77" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key77";
       public            postgres    false    216            S           2606    1019862     Categories Categories_name_key78 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key78" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key78";
       public            postgres    false    216            U           2606    1020020     Categories Categories_name_key79 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key79" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key79";
       public            postgres    false    216            W           2606    1019944    Categories Categories_name_key8 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key8" UNIQUE (name);
 M   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key8";
       public            postgres    false    216            Y           2606    1019860     Categories Categories_name_key80 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key80" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key80";
       public            postgres    false    216            [           2606    1019858     Categories Categories_name_key81 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key81" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key81";
       public            postgres    false    216            ]           2606    1019856     Categories Categories_name_key82 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key82" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key82";
       public            postgres    false    216            _           2606    1019854     Categories Categories_name_key83 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key83" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key83";
       public            postgres    false    216            a           2606    1019852     Categories Categories_name_key84 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key84" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key84";
       public            postgres    false    216            c           2606    1020022     Categories Categories_name_key85 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key85" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key85";
       public            postgres    false    216            e           2606    1019850     Categories Categories_name_key86 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key86" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key86";
       public            postgres    false    216            g           2606    1019848     Categories Categories_name_key87 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key87" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key87";
       public            postgres    false    216            i           2606    1019846     Categories Categories_name_key88 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key88" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key88";
       public            postgres    false    216            k           2606    1019844     Categories Categories_name_key89 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key89" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key89";
       public            postgres    false    216            m           2606    1019962    Categories Categories_name_key9 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key9" UNIQUE (name);
 M   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key9";
       public            postgres    false    216            o           2606    1019842     Categories Categories_name_key90 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key90" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key90";
       public            postgres    false    216            q           2606    1020024     Categories Categories_name_key91 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key91" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key91";
       public            postgres    false    216            s           2606    1019840     Categories Categories_name_key92 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key92" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key92";
       public            postgres    false    216            u           2606    1019838     Categories Categories_name_key93 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key93" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key93";
       public            postgres    false    216            w           2606    1019836     Categories Categories_name_key94 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key94" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key94";
       public            postgres    false    216            y           2606    1020026     Categories Categories_name_key95 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key95" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key95";
       public            postgres    false    216            {           2606    1019834     Categories Categories_name_key96 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key96" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key96";
       public            postgres    false    216            }           2606    1020028     Categories Categories_name_key97 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key97" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key97";
       public            postgres    false    216                       2606    1019832     Categories Categories_name_key98 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key98" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key98";
       public            postgres    false    216            �           2606    1020030     Categories Categories_name_key99 
   CONSTRAINT     _   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_name_key99" UNIQUE (name);
 N   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_name_key99";
       public            postgres    false    216            �           2606    918114    Categories Categories_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_pkey";
       public            postgres    false    216               -   x�3�L���M�+�/�2�,IM����O�L�2�,�/H����� �9     