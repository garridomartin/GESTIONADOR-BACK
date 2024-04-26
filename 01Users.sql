PGDMP  )        	            |            negocio    16.0    16.0               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    861465    negocio    DATABASE     ~   CREATE DATABASE negocio WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Argentina.1252';
    DROP DATABASE negocio;
                postgres    false            �            1259    918118    Users    TABLE     �  CREATE TABLE public."Users" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    password character varying(255),
    "resetToken" character varying(255),
    "cellPhone" bigint,
    "birthDay" timestamp with time zone,
    cuil bigint,
    email character varying(255) NOT NULL,
    "profilePict" character varying(255),
    "isEmailConfirmed" boolean DEFAULT false,
    "isAdmin" boolean DEFAULT false,
    "isSeller" boolean DEFAULT false,
    "isDeleted" boolean DEFAULT false,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �            1259    918117    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public          postgres    false    218            "           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
          public          postgres    false    217                       2604    918121    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218                      0    918118    Users 
   TABLE DATA           �   COPY public."Users" (id, username, name, password, "resetToken", "cellPhone", "birthDay", cuil, email, "profilePict", "isEmailConfirmed", "isAdmin", "isSeller", "isDeleted", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    218   S      #           0    0    Users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Users_id_seq"', 7, true);
          public          postgres    false    217            �           2606    1020365    Users Users_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key";
       public            postgres    false    218            �           2606    1020367    Users Users_email_key1 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key1" UNIQUE (email);
 D   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key1";
       public            postgres    false    218            �           2606    1020413    Users Users_email_key10 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key10" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key10";
       public            postgres    false    218            �           2606    1020327    Users Users_email_key100 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key100" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key100";
       public            postgres    false    218            �           2606    1020529    Users Users_email_key101 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key101" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key101";
       public            postgres    false    218            �           2606    1020325    Users Users_email_key102 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key102" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key102";
       public            postgres    false    218            �           2606    1020531    Users Users_email_key103 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key103" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key103";
       public            postgres    false    218            �           2606    1020323    Users Users_email_key104 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key104" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key104";
       public            postgres    false    218            �           2606    1020533    Users Users_email_key105 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key105" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key105";
       public            postgres    false    218            �           2606    1020321    Users Users_email_key106 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key106" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key106";
       public            postgres    false    218            �           2606    1020535    Users Users_email_key107 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key107" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key107";
       public            postgres    false    218            �           2606    1020319    Users Users_email_key108 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key108" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key108";
       public            postgres    false    218            �           2606    1020537    Users Users_email_key109 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key109" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key109";
       public            postgres    false    218            �           2606    1020411    Users Users_email_key11 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key11" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key11";
       public            postgres    false    218            �           2606    1020317    Users Users_email_key110 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key110" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key110";
       public            postgres    false    218            �           2606    1020539    Users Users_email_key111 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key111" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key111";
       public            postgres    false    218            �           2606    1020315    Users Users_email_key112 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key112" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key112";
       public            postgres    false    218            �           2606    1020541    Users Users_email_key113 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key113" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key113";
       public            postgres    false    218            �           2606    1020313    Users Users_email_key114 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key114" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key114";
       public            postgres    false    218            �           2606    1020543    Users Users_email_key115 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key115" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key115";
       public            postgres    false    218            �           2606    1020311    Users Users_email_key116 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key116" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key116";
       public            postgres    false    218            �           2606    1020545    Users Users_email_key117 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key117" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key117";
       public            postgres    false    218            �           2606    1020309    Users Users_email_key118 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key118" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key118";
       public            postgres    false    218            �           2606    1020547    Users Users_email_key119 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key119" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key119";
       public            postgres    false    218            �           2606    1020399    Users Users_email_key12 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key12" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key12";
       public            postgres    false    218            �           2606    1020307    Users Users_email_key120 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key120" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key120";
       public            postgres    false    218            �           2606    1020549    Users Users_email_key121 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key121" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key121";
       public            postgres    false    218            �           2606    1020305    Users Users_email_key122 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key122" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key122";
       public            postgres    false    218            �           2606    1020551    Users Users_email_key123 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key123" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key123";
       public            postgres    false    218            �           2606    1020553    Users Users_email_key124 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key124" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key124";
       public            postgres    false    218            �           2606    1020555    Users Users_email_key125 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key125" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key125";
       public            postgres    false    218            �           2606    1020557    Users Users_email_key126 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key126" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key126";
       public            postgres    false    218            �           2606    1020303    Users Users_email_key127 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key127" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key127";
       public            postgres    false    218            �           2606    1020559    Users Users_email_key128 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key128" UNIQUE (email);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key128";
       public            postgres    false    218            �           2606    1020401    Users Users_email_key13 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key13" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key13";
       public            postgres    false    218            �           2606    1020409    Users Users_email_key14 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key14" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key14";
       public            postgres    false    218            �           2606    1020403    Users Users_email_key15 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key15" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key15";
       public            postgres    false    218            �           2606    1020405    Users Users_email_key16 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key16" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key16";
       public            postgres    false    218            �           2606    1020407    Users Users_email_key17 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key17" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key17";
       public            postgres    false    218            �           2606    1020397    Users Users_email_key18 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key18" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key18";
       public            postgres    false    218            �           2606    1020379    Users Users_email_key19 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key19" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key19";
       public            postgres    false    218            �           2606    1020369    Users Users_email_key2 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key2" UNIQUE (email);
 D   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key2";
       public            postgres    false    218            �           2606    1020395    Users Users_email_key20 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key20" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key20";
       public            postgres    false    218            �           2606    1020381    Users Users_email_key21 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key21" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key21";
       public            postgres    false    218            �           2606    1020393    Users Users_email_key22 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key22" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key22";
       public            postgres    false    218            �           2606    1020383    Users Users_email_key23 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key23" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key23";
       public            postgres    false    218            �           2606    1020391    Users Users_email_key24 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key24" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key24";
       public            postgres    false    218            �           2606    1020389    Users Users_email_key25 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key25" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key25";
       public            postgres    false    218            �           2606    1020385    Users Users_email_key26 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key26" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key26";
       public            postgres    false    218            �           2606    1020387    Users Users_email_key27 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key27" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key27";
       public            postgres    false    218            �           2606    1020449    Users Users_email_key28 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key28" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key28";
       public            postgres    false    218            �           2606    1020451    Users Users_email_key29 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key29" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key29";
       public            postgres    false    218            �           2606    1020363    Users Users_email_key3 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key3" UNIQUE (email);
 D   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key3";
       public            postgres    false    218            �           2606    1020355    Users Users_email_key30 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key30" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key30";
       public            postgres    false    218            �           2606    1020453    Users Users_email_key31 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key31" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key31";
       public            postgres    false    218            �           2606    1020499    Users Users_email_key32 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key32" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key32";
       public            postgres    false    218            �           2606    1020455    Users Users_email_key33 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key33" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key33";
       public            postgres    false    218            �           2606    1020497    Users Users_email_key34 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key34" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key34";
       public            postgres    false    218            �           2606    1020457    Users Users_email_key35 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key35" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key35";
       public            postgres    false    218            �           2606    1020495    Users Users_email_key36 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key36" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key36";
       public            postgres    false    218            �           2606    1020459    Users Users_email_key37 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key37" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key37";
       public            postgres    false    218            �           2606    1020483    Users Users_email_key38 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key38" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key38";
       public            postgres    false    218                       2606    1020485    Users Users_email_key39 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key39" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key39";
       public            postgres    false    218                       2606    1020371    Users Users_email_key4 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key4" UNIQUE (email);
 D   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key4";
       public            postgres    false    218                       2606    1020493    Users Users_email_key40 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key40" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key40";
       public            postgres    false    218                       2606    1020487    Users Users_email_key41 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key41" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key41";
       public            postgres    false    218            	           2606    1020491    Users Users_email_key42 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key42" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key42";
       public            postgres    false    218                       2606    1020489    Users Users_email_key43 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key43" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key43";
       public            postgres    false    218                       2606    1020361    Users Users_email_key44 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key44" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key44";
       public            postgres    false    218                       2606    1020419    Users Users_email_key45 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key45" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key45";
       public            postgres    false    218                       2606    1020359    Users Users_email_key46 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key46" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key46";
       public            postgres    false    218                       2606    1020421    Users Users_email_key47 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key47" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key47";
       public            postgres    false    218                       2606    1020357    Users Users_email_key48 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key48" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key48";
       public            postgres    false    218                       2606    1020423    Users Users_email_key49 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key49" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key49";
       public            postgres    false    218                       2606    1020417    Users Users_email_key5 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key5" UNIQUE (email);
 D   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key5";
       public            postgres    false    218                       2606    1020447    Users Users_email_key50 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key50" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key50";
       public            postgres    false    218                       2606    1020425    Users Users_email_key51 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key51" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key51";
       public            postgres    false    218                       2606    1020427    Users Users_email_key52 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key52" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key52";
       public            postgres    false    218            !           2606    1020445    Users Users_email_key53 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key53" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key53";
       public            postgres    false    218            #           2606    1020429    Users Users_email_key54 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key54" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key54";
       public            postgres    false    218            %           2606    1020443    Users Users_email_key55 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key55" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key55";
       public            postgres    false    218            '           2606    1020431    Users Users_email_key56 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key56" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key56";
       public            postgres    false    218            )           2606    1020433    Users Users_email_key57 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key57" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key57";
       public            postgres    false    218            +           2606    1020441    Users Users_email_key58 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key58" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key58";
       public            postgres    false    218            -           2606    1020435    Users Users_email_key59 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key59" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key59";
       public            postgres    false    218            /           2606    1020373    Users Users_email_key6 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key6" UNIQUE (email);
 D   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key6";
       public            postgres    false    218            1           2606    1020439    Users Users_email_key60 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key60" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key60";
       public            postgres    false    218            3           2606    1020437    Users Users_email_key61 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key61" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key61";
       public            postgres    false    218            5           2606    1020461    Users Users_email_key62 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key62" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key62";
       public            postgres    false    218            7           2606    1020481    Users Users_email_key63 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key63" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key63";
       public            postgres    false    218            9           2606    1020463    Users Users_email_key64 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key64" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key64";
       public            postgres    false    218            ;           2606    1020479    Users Users_email_key65 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key65" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key65";
       public            postgres    false    218            =           2606    1020465    Users Users_email_key66 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key66" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key66";
       public            postgres    false    218            ?           2606    1020477    Users Users_email_key67 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key67" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key67";
       public            postgres    false    218            A           2606    1020467    Users Users_email_key68 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key68" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key68";
       public            postgres    false    218            C           2606    1020475    Users Users_email_key69 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key69" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key69";
       public            postgres    false    218            E           2606    1020375    Users Users_email_key7 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key7" UNIQUE (email);
 D   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key7";
       public            postgres    false    218            G           2606    1020469    Users Users_email_key70 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key70" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key70";
       public            postgres    false    218            I           2606    1020473    Users Users_email_key71 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key71" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key71";
       public            postgres    false    218            K           2606    1020471    Users Users_email_key72 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key72" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key72";
       public            postgres    false    218            M           2606    1020353    Users Users_email_key73 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key73" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key73";
       public            postgres    false    218            O           2606    1020501    Users Users_email_key74 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key74" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key74";
       public            postgres    false    218            Q           2606    1020351    Users Users_email_key75 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key75" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key75";
       public            postgres    false    218            S           2606    1020503    Users Users_email_key76 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key76" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key76";
       public            postgres    false    218            U           2606    1020349    Users Users_email_key77 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key77" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key77";
       public            postgres    false    218            W           2606    1020505    Users Users_email_key78 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key78" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key78";
       public            postgres    false    218            Y           2606    1020507    Users Users_email_key79 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key79" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key79";
       public            postgres    false    218            [           2606    1020415    Users Users_email_key8 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key8" UNIQUE (email);
 D   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key8";
       public            postgres    false    218            ]           2606    1020347    Users Users_email_key80 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key80" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key80";
       public            postgres    false    218            _           2606    1020509    Users Users_email_key81 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key81" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key81";
       public            postgres    false    218            a           2606    1020345    Users Users_email_key82 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key82" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key82";
       public            postgres    false    218            c           2606    1020511    Users Users_email_key83 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key83" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key83";
       public            postgres    false    218            e           2606    1020343    Users Users_email_key84 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key84" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key84";
       public            postgres    false    218            g           2606    1020513    Users Users_email_key85 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key85" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key85";
       public            postgres    false    218            i           2606    1020341    Users Users_email_key86 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key86" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key86";
       public            postgres    false    218            k           2606    1020515    Users Users_email_key87 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key87" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key87";
       public            postgres    false    218            m           2606    1020339    Users Users_email_key88 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key88" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key88";
       public            postgres    false    218            o           2606    1020517    Users Users_email_key89 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key89" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key89";
       public            postgres    false    218            q           2606    1020377    Users Users_email_key9 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key9" UNIQUE (email);
 D   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key9";
       public            postgres    false    218            s           2606    1020337    Users Users_email_key90 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key90" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key90";
       public            postgres    false    218            u           2606    1020519    Users Users_email_key91 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key91" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key91";
       public            postgres    false    218            w           2606    1020335    Users Users_email_key92 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key92" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key92";
       public            postgres    false    218            y           2606    1020521    Users Users_email_key93 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key93" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key93";
       public            postgres    false    218            {           2606    1020333    Users Users_email_key94 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key94" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key94";
       public            postgres    false    218            }           2606    1020523    Users Users_email_key95 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key95" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key95";
       public            postgres    false    218                       2606    1020331    Users Users_email_key96 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key96" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key96";
       public            postgres    false    218            �           2606    1020525    Users Users_email_key97 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key97" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key97";
       public            postgres    false    218            �           2606    1020329    Users Users_email_key98 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key98" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key98";
       public            postgres    false    218            �           2606    1020527    Users Users_email_key99 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key99" UNIQUE (email);
 E   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key99";
       public            postgres    false    218            �           2606    918129    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    218            �           2606    1020178    Users Users_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key" UNIQUE (username);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key";
       public            postgres    false    218            �           2606    1020180    Users Users_username_key1 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key1" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key1";
       public            postgres    false    218            �           2606    1020126    Users Users_username_key10 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key10" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key10";
       public            postgres    false    218            �           2606    1020092    Users Users_username_key100 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key100" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key100";
       public            postgres    false    218            �           2606    1020078    Users Users_username_key101 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key101" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key101";
       public            postgres    false    218            �           2606    1020090    Users Users_username_key102 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key102" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key102";
       public            postgres    false    218            �           2606    1020080    Users Users_username_key103 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key103" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key103";
       public            postgres    false    218            �           2606    1020088    Users Users_username_key104 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key104" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key104";
       public            postgres    false    218            �           2606    1020082    Users Users_username_key105 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key105" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key105";
       public            postgres    false    218            �           2606    1020086    Users Users_username_key106 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key106" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key106";
       public            postgres    false    218            �           2606    1020084    Users Users_username_key107 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key107" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key107";
       public            postgres    false    218            �           2606    1020058    Users Users_username_key108 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key108" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key108";
       public            postgres    false    218            �           2606    1020276    Users Users_username_key109 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key109" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key109";
       public            postgres    false    218            �           2606    1020124    Users Users_username_key11 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key11" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key11";
       public            postgres    false    218            �           2606    1020056    Users Users_username_key110 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key110" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key110";
       public            postgres    false    218            �           2606    1020278    Users Users_username_key111 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key111" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key111";
       public            postgres    false    218            �           2606    1020054    Users Users_username_key112 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key112" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key112";
       public            postgres    false    218            �           2606    1020280    Users Users_username_key113 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key113" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key113";
       public            postgres    false    218            �           2606    1020052    Users Users_username_key114 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key114" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key114";
       public            postgres    false    218            �           2606    1020282    Users Users_username_key115 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key115" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key115";
       public            postgres    false    218            �           2606    1020050    Users Users_username_key116 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key116" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key116";
       public            postgres    false    218            �           2606    1020284    Users Users_username_key117 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key117" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key117";
       public            postgres    false    218            �           2606    1020048    Users Users_username_key118 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key118" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key118";
       public            postgres    false    218            �           2606    1020286    Users Users_username_key119 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key119" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key119";
       public            postgres    false    218            �           2606    1020242    Users Users_username_key12 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key12" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key12";
       public            postgres    false    218            �           2606    1020046    Users Users_username_key120 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key120" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key120";
       public            postgres    false    218            �           2606    1020288    Users Users_username_key121 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key121" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key121";
       public            postgres    false    218            �           2606    1020044    Users Users_username_key122 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key122" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key122";
       public            postgres    false    218            �           2606    1020290    Users Users_username_key123 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key123" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key123";
       public            postgres    false    218            �           2606    1020292    Users Users_username_key124 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key124" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key124";
       public            postgres    false    218            �           2606    1020294    Users Users_username_key125 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key125" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key125";
       public            postgres    false    218            �           2606    1020296    Users Users_username_key126 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key126" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key126";
       public            postgres    false    218            �           2606    1020042    Users Users_username_key127 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key127" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key127";
       public            postgres    false    218            �           2606    1020298    Users Users_username_key128 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key128" UNIQUE (username);
 I   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key128";
       public            postgres    false    218            �           2606    1020244    Users Users_username_key13 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key13" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key13";
       public            postgres    false    218            �           2606    1020122    Users Users_username_key14 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key14" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key14";
       public            postgres    false    218            �           2606    1020112    Users Users_username_key15 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key15" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key15";
       public            postgres    false    218            �           2606    1020114    Users Users_username_key16 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key16" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key16";
       public            postgres    false    218            �           2606    1020120    Users Users_username_key17 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key17" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key17";
       public            postgres    false    218            �           2606    1020116    Users Users_username_key18 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key18" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key18";
       public            postgres    false    218            �           2606    1020118    Users Users_username_key19 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key19" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key19";
       public            postgres    false    218            �           2606    1020182    Users Users_username_key2 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key2" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key2";
       public            postgres    false    218            �           2606    1020220    Users Users_username_key20 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key20" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key20";
       public            postgres    false    218            �           2606    1020186    Users Users_username_key21 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key21" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key21";
       public            postgres    false    218            �           2606    1020218    Users Users_username_key22 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key22" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key22";
       public            postgres    false    218            �           2606    1020188    Users Users_username_key23 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key23" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key23";
       public            postgres    false    218            �           2606    1020198    Users Users_username_key24 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key24" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key24";
       public            postgres    false    218            �           2606    1020196    Users Users_username_key25 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key25" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key25";
       public            postgres    false    218            �           2606    1020190    Users Users_username_key26 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key26" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key26";
       public            postgres    false    218            �           2606    1020194    Users Users_username_key27 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key27" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key27";
       public            postgres    false    218            �           2606    1020192    Users Users_username_key28 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key28" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key28";
       public            postgres    false    218            �           2606    1020228    Users Users_username_key29 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key29" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key29";
       public            postgres    false    218            �           2606    1020176    Users Users_username_key3 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key3" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key3";
       public            postgres    false    218            �           2606    1020240    Users Users_username_key30 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key30" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key30";
       public            postgres    false    218            �           2606    1020230    Users Users_username_key31 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key31" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key31";
       public            postgres    false    218            �           2606    1020238    Users Users_username_key32 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key32" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key32";
       public            postgres    false    218            �           2606    1020232    Users Users_username_key33 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key33" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key33";
       public            postgres    false    218            �           2606    1020236    Users Users_username_key34 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key34" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key34";
       public            postgres    false    218            �           2606    1020234    Users Users_username_key35 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key35" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key35";
       public            postgres    false    218            �           2606    1020216    Users Users_username_key36 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key36" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key36";
       public            postgres    false    218                       2606    1020200    Users Users_username_key37 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key37" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key37";
       public            postgres    false    218                       2606    1020214    Users Users_username_key38 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key38" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key38";
       public            postgres    false    218                       2606    1020136    Users Users_username_key39 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key39" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key39";
       public            postgres    false    218                       2606    1020184    Users Users_username_key4 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key4" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key4";
       public            postgres    false    218            	           2606    1020212    Users Users_username_key40 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key40" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key40";
       public            postgres    false    218                       2606    1020138    Users Users_username_key41 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key41" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key41";
       public            postgres    false    218                       2606    1020210    Users Users_username_key42 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key42" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key42";
       public            postgres    false    218                       2606    1020140    Users Users_username_key43 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key43" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key43";
       public            postgres    false    218                       2606    1020208    Users Users_username_key44 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key44" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key44";
       public            postgres    false    218                       2606    1020142    Users Users_username_key45 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key45" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key45";
       public            postgres    false    218                       2606    1020206    Users Users_username_key46 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key46" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key46";
       public            postgres    false    218                       2606    1020144    Users Users_username_key47 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key47" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key47";
       public            postgres    false    218                       2606    1020204    Users Users_username_key48 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key48" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key48";
       public            postgres    false    218                       2606    1020146    Users Users_username_key49 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key49" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key49";
       public            postgres    false    218                       2606    1020174    Users Users_username_key5 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key5" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key5";
       public            postgres    false    218                       2606    1020202    Users Users_username_key50 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key50" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key50";
       public            postgres    false    218            !           2606    1020148    Users Users_username_key51 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key51" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key51";
       public            postgres    false    218            #           2606    1020150    Users Users_username_key52 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key52" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key52";
       public            postgres    false    218            %           2606    1020156    Users Users_username_key53 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key53" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key53";
       public            postgres    false    218            '           2606    1020152    Users Users_username_key54 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key54" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key54";
       public            postgres    false    218            )           2606    1020154    Users Users_username_key55 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key55" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key55";
       public            postgres    false    218            +           2606    1020246    Users Users_username_key56 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key56" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key56";
       public            postgres    false    218            -           2606    1020248    Users Users_username_key57 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key57" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key57";
       public            postgres    false    218            /           2606    1020110    Users Users_username_key58 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key58" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key58";
       public            postgres    false    218            1           2606    1020250    Users Users_username_key59 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key59" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key59";
       public            postgres    false    218            3           2606    1020222    Users Users_username_key6 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key6" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key6";
       public            postgres    false    218            5           2606    1020108    Users Users_username_key60 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key60" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key60";
       public            postgres    false    218            7           2606    1020252    Users Users_username_key61 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key61" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key61";
       public            postgres    false    218            9           2606    1020254    Users Users_username_key62 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key62" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key62";
       public            postgres    false    218            ;           2606    1020172    Users Users_username_key63 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key63" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key63";
       public            postgres    false    218            =           2606    1020256    Users Users_username_key64 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key64" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key64";
       public            postgres    false    218            ?           2606    1020170    Users Users_username_key65 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key65" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key65";
       public            postgres    false    218            A           2606    1020258    Users Users_username_key66 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key66" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key66";
       public            postgres    false    218            C           2606    1020168    Users Users_username_key67 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key67" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key67";
       public            postgres    false    218            E           2606    1020260    Users Users_username_key68 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key68" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key68";
       public            postgres    false    218            G           2606    1020166    Users Users_username_key69 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key69" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key69";
       public            postgres    false    218            I           2606    1020224    Users Users_username_key7 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key7" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key7";
       public            postgres    false    218            K           2606    1020262    Users Users_username_key70 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key70" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key70";
       public            postgres    false    218            M           2606    1020164    Users Users_username_key71 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key71" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key71";
       public            postgres    false    218            O           2606    1020264    Users Users_username_key72 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key72" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key72";
       public            postgres    false    218            Q           2606    1020162    Users Users_username_key73 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key73" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key73";
       public            postgres    false    218            S           2606    1020266    Users Users_username_key74 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key74" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key74";
       public            postgres    false    218            U           2606    1020160    Users Users_username_key75 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key75" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key75";
       public            postgres    false    218            W           2606    1020268    Users Users_username_key76 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key76" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key76";
       public            postgres    false    218            Y           2606    1020158    Users Users_username_key77 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key77" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key77";
       public            postgres    false    218            [           2606    1020270    Users Users_username_key78 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key78" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key78";
       public            postgres    false    218            ]           2606    1020272    Users Users_username_key79 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key79" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key79";
       public            postgres    false    218            _           2606    1020128    Users Users_username_key8 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key8" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key8";
       public            postgres    false    218            a           2606    1020134    Users Users_username_key80 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key80" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key80";
       public            postgres    false    218            c           2606    1020274    Users Users_username_key81 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key81" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key81";
       public            postgres    false    218            e           2606    1020132    Users Users_username_key82 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key82" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key82";
       public            postgres    false    218            g           2606    1020060    Users Users_username_key83 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key83" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key83";
       public            postgres    false    218            i           2606    1020130    Users Users_username_key84 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key84" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key84";
       public            postgres    false    218            k           2606    1020062    Users Users_username_key85 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key85" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key85";
       public            postgres    false    218            m           2606    1020106    Users Users_username_key86 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key86" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key86";
       public            postgres    false    218            o           2606    1020064    Users Users_username_key87 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key87" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key87";
       public            postgres    false    218            q           2606    1020104    Users Users_username_key88 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key88" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key88";
       public            postgres    false    218            s           2606    1020066    Users Users_username_key89 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key89" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key89";
       public            postgres    false    218            u           2606    1020226    Users Users_username_key9 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key9" UNIQUE (username);
 G   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key9";
       public            postgres    false    218            w           2606    1020102    Users Users_username_key90 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key90" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key90";
       public            postgres    false    218            y           2606    1020068    Users Users_username_key91 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key91" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key91";
       public            postgres    false    218            {           2606    1020100    Users Users_username_key92 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key92" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key92";
       public            postgres    false    218            }           2606    1020070    Users Users_username_key93 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key93" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key93";
       public            postgres    false    218                       2606    1020098    Users Users_username_key94 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key94" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key94";
       public            postgres    false    218            �           2606    1020072    Users Users_username_key95 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key95" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key95";
       public            postgres    false    218            �           2606    1020096    Users Users_username_key96 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key96" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key96";
       public            postgres    false    218            �           2606    1020074    Users Users_username_key97 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key97" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key97";
       public            postgres    false    218            �           2606    1020094    Users Users_username_key98 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key98" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key98";
       public            postgres    false    218            �           2606    1020076    Users Users_username_key99 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key99" UNIQUE (username);
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key99";
       public            postgres    false    218            �           1259    1020560    users_username_email    INDEX     Z   CREATE UNIQUE INDEX users_username_email ON public."Users" USING btree (username, email);
 (   DROP INDEX public.users_username_email;
       public            postgres    false    218    218               �  x��Vi��H������/+p&7�Z۾el�ϲ5R+I��@b���I�����^igV3Z�> ґｈ�%�X��ʳ���"H��e�C����"�_ �r.Ӏ�;�~	�q���$�d�lr;L�KY�������z��\(I�{�"���,��V�Fn$+�8�ϻ���lRzd����G�[��Ȟ8�a/��ڂ|:��-ܯ8�lЧ��*�(��󫽮��y9�ad�4�b�n�`�@����q�;�:��lU���z��5[�ٿ���yx���л�O���fi�tp>�c;آr:������d(��#�>�gڂPPY�d�uU� ���. l��� Y�%��R�D^����&�0�h��ͧE����4n�E���N�2b�����ޣԋJ���ֹ���q..����#�i�Ң1��l�/Ί�	���O�_(*���	�?
z"�WŖ����9IpDi�搫�����*��[G'r@k���ԕD^��k�MZ@^�dfz�mbӰ5��(@	mO2���	o����ww{����U�grq?�l˴t'�RE������n2��d�ؚog3Ɗ�.�]�M� ����׋���f��߼\4�~
�����e��
����� 5�f�Y�l[�K^�+m�$(���<0��A���)���<\�� z��n��\�em6��:T	.Mq[�~�����{��!�75�Ԛ�[�x�<�Ｃ��jJ}�L�y�2�܋�8�1����e��0[��$c��5���1�� ��KQP�]ؿR�d��(�j�(�
��I�?�n����F��`�酉E��t��$v%��H��UpIo_�VFq@�1�U��P�8��cSeZ/�t����:�G����~>TJ���~<l�
���'l3��SW~�����y�����LE�EQ��ɶ��T��T!g#�]Yr�M��A(�m�v��R�W���� t���
�!��*�ʸe^Xu�i{�"�y�C����̍��i��u��,�pF��$+���D��6���`o��/����qj��~t��קi䣉~���,�e;�~�R]��.[K�̈L{�"�֐���!Z�Q��#h�nd��p��,�u��s���e/��~�/���8,�K�Sʘ�/��_�_2Ab4B^�w�Y��m�4�+��5��˲r�Rk�f����FH���/���k���&��&2��<�b��t��գ�=��a]-r0@�9��d(��h��/�%�z����p�SH;P���K��)�O��"Z�����:�7�f���ͼU�SI:�uO.K�0^,��MCG�ˌ ���3�|=�	�����*�99<�%گ�O����G���Ve�V�n�ڏz��!�7V�ڏB^�Ҵ�.盳�^��N���_f6��=�W){�?�~�R����_P����i +]	���׌�A��e�Ȏ�:C~�~��c�     