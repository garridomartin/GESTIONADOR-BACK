PGDMP  5        	            |            negocio    16.0    16.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    861465    negocio    DATABASE     ~   CREATE DATABASE negocio WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Argentina.1252';
    DROP DATABASE negocio;
                postgres    false            �            1259    918255 	   Suppliers    TABLE     �   CREATE TABLE public."Suppliers" (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    description character varying(255),
    address character varying(255),
    cellphone bigint
);
    DROP TABLE public."Suppliers";
       public         heap    postgres    false            �            1259    918254    Suppliers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Suppliers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Suppliers_id_seq";
       public          postgres    false    235                       0    0    Suppliers_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Suppliers_id_seq" OWNED BY public."Suppliers".id;
          public          postgres    false    234                       2604    918258    Suppliers id    DEFAULT     p   ALTER TABLE ONLY public."Suppliers" ALTER COLUMN id SET DEFAULT nextval('public."Suppliers_id_seq"'::regclass);
 =   ALTER TABLE public."Suppliers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235                      0    918255 	   Suppliers 
   TABLE DATA           W   COPY public."Suppliers" (id, name, email, description, address, cellphone) FROM stdin;
    public          postgres    false    235   4                  0    0    Suppliers_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Suppliers_id_seq"', 5, false);
          public          postgres    false    234            �           2606    918262    Suppliers Suppliers_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Suppliers"
    ADD CONSTRAINT "Suppliers_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Suppliers" DROP CONSTRAINT "Suppliers_pkey";
       public            postgres    false    235               �   x�]�M�0���)�����������}���^��Y}�d��`��M���D�}��S5�E3Y� �����z���:��Ւ�.7�`�ޢCӛ���|ԫCJ��Z=�dQì]O�'�q�f��;'^s!�%��b�^-�����3n�f2�Βk2�A�S���PU-eY���?&�`�     