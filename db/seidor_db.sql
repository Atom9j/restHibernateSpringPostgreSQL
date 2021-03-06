PGDMP                          u        	   seidor_db    9.4.12    9.4.12 $    <           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            =           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            >           1262    16385 	   seidor_db    DATABASE     {   CREATE DATABASE seidor_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_MX.UTF-8' LC_CTYPE = 'es_MX.UTF-8';
    DROP DATABASE seidor_db;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            @           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    11935    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            A           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16388    clientes    TABLE     �   CREATE TABLE clientes (
    id integer NOT NULL,
    name character varying(100),
    updatedate timestamp without time zone,
    telefono character varying(20),
    mail character varying(40)
);
    DROP TABLE public.clientes;
       public         seidor_user    false    6            �            1259    16386    clientes_id_seq    SEQUENCE     q   CREATE SEQUENCE clientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.clientes_id_seq;
       public       seidor_user    false    6    174            B           0    0    clientes_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE clientes_id_seq OWNED BY clientes.id;
            public       seidor_user    false    173            �            1259    16396 
   directorio    TABLE     �   CREATE TABLE directorio (
    id integer NOT NULL,
    name character varying(100),
    updatedate timestamp without time zone,
    extension character varying(5),
    mail character varying(40)
);
    DROP TABLE public.directorio;
       public         seidor_user    false    6            �            1259    16394    directorio_id_seq    SEQUENCE     s   CREATE SEQUENCE directorio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.directorio_id_seq;
       public       seidor_user    false    6    176            C           0    0    directorio_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE directorio_id_seq OWNED BY directorio.id;
            public       seidor_user    false    175            �            1259    16404    distribuidores    TABLE     �   CREATE TABLE distribuidores (
    id integer NOT NULL,
    name character varying(100),
    updatedate timestamp without time zone,
    estado character varying(20),
    telefono character varying(40)
);
 "   DROP TABLE public.distribuidores;
       public         seidor_user    false    6            �            1259    16402    distribuidores_id_seq    SEQUENCE     w   CREATE SEQUENCE distribuidores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.distribuidores_id_seq;
       public       seidor_user    false    6    178            D           0    0    distribuidores_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE distribuidores_id_seq OWNED BY distribuidores.id;
            public       seidor_user    false    177            �            1259    16412 	   productos    TABLE     �   CREATE TABLE productos (
    id integer NOT NULL,
    name character varying(100),
    updatedate timestamp without time zone,
    clave character varying(10)
);
    DROP TABLE public.productos;
       public         seidor_user    false    6            �            1259    16410    productos_id_seq    SEQUENCE     r   CREATE SEQUENCE productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.productos_id_seq;
       public       seidor_user    false    6    180            E           0    0    productos_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE productos_id_seq OWNED BY productos.id;
            public       seidor_user    false    179            �           2604    16391    id    DEFAULT     \   ALTER TABLE ONLY clientes ALTER COLUMN id SET DEFAULT nextval('clientes_id_seq'::regclass);
 :   ALTER TABLE public.clientes ALTER COLUMN id DROP DEFAULT;
       public       seidor_user    false    174    173    174            �           2604    16399    id    DEFAULT     `   ALTER TABLE ONLY directorio ALTER COLUMN id SET DEFAULT nextval('directorio_id_seq'::regclass);
 <   ALTER TABLE public.directorio ALTER COLUMN id DROP DEFAULT;
       public       seidor_user    false    175    176    176            �           2604    16407    id    DEFAULT     h   ALTER TABLE ONLY distribuidores ALTER COLUMN id SET DEFAULT nextval('distribuidores_id_seq'::regclass);
 @   ALTER TABLE public.distribuidores ALTER COLUMN id DROP DEFAULT;
       public       seidor_user    false    177    178    178            �           2604    16415    id    DEFAULT     ^   ALTER TABLE ONLY productos ALTER COLUMN id SET DEFAULT nextval('productos_id_seq'::regclass);
 ;   ALTER TABLE public.productos ALTER COLUMN id DROP DEFAULT;
       public       seidor_user    false    180    179    180            3          0    16388    clientes 
   TABLE DATA               A   COPY clientes (id, name, updatedate, telefono, mail) FROM stdin;
    public       seidor_user    false    174   $       F           0    0    clientes_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('clientes_id_seq', 6, true);
            public       seidor_user    false    173            5          0    16396 
   directorio 
   TABLE DATA               D   COPY directorio (id, name, updatedate, extension, mail) FROM stdin;
    public       seidor_user    false    176   L%       G           0    0    directorio_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('directorio_id_seq', 7, true);
            public       seidor_user    false    175            7          0    16404    distribuidores 
   TABLE DATA               I   COPY distribuidores (id, name, updatedate, estado, telefono) FROM stdin;
    public       seidor_user    false    178   V&       H           0    0    distribuidores_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('distribuidores_id_seq', 5, true);
            public       seidor_user    false    177            9          0    16412 	   productos 
   TABLE DATA               9   COPY productos (id, name, updatedate, clave) FROM stdin;
    public       seidor_user    false    180   J'       I           0    0    productos_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('productos_id_seq', 7, true);
            public       seidor_user    false    179            �           2606    16393    clientes_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public         seidor_user    false    174    174            �           2606    16401    directorio_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY directorio
    ADD CONSTRAINT directorio_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.directorio DROP CONSTRAINT directorio_pkey;
       public         seidor_user    false    176    176            �           2606    16409    distribuidores_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY distribuidores
    ADD CONSTRAINT distribuidores_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.distribuidores DROP CONSTRAINT distribuidores_pkey;
       public         seidor_user    false    178    178            �           2606    16417    productos_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public         seidor_user    false    180    180            3   7  x�=�=N�0�k��@"��/�]�ZA�
�I��H������\�g�Br�7�if${q��v�@�:��+ɥ�B�+�0 P��d��kR7��c�.S�����n����n�$�K��沲H$I��P�f�����,	���ֺ�on��߆��@R�J�	�Ւ�ZT�D�-�2�Mw�q��mhK�g?M��͍~��[�Fń΅�B[),�)+�5*���oFׇe�}p	�����J���u��K�(���pQZڈU�6B�&C���D*i����g?�5�Du$���
Ì��Q������д�#�ދ,�~��{0      5   �   x�U��n!�g�)x"�Re��u�B��娸S����
'y~�gl1��1��B+e��U-���f�E�O�mC�'�n�ʴ��d y��]H;�5�"2
X��ũ܉[I�s�|Ѻ���0�R�������{}n����'~��K.����%��*�Y�K�u��/o��J��+@�����"�2�h��@|��mϴ,u�BV�x�E?G��^��-��S�n@�l�<P�Du�~����$�7      7   �   x�m�MN1�s�\ �N��ϒ��X�q����h����3E�C��}�`/��Q�T��8�%�z�0\���m�����`<�פ��U�!O��o28����6�0�']�	��p�&��u�J=�Ϲ&�7�5?�{Bx�O�����-o��y.�:k���-9B���氖$ɦl��QN
�9��axH��IoI��o�a��I�v�y����䃏��˝1��N�      9   �   x�5�Mk�0�����Ȱ�U��� =tĬ^a�����#�B>ݯ��f ��^	��`mMg��E�p��0�/�
%�9�X�[;����7>��G���u�V&�RO#��K#����a�X}��p<N~;�=�<S�W!5�pW����(g��k���fkn���6՛̃-us�`a���=�}��h3��2`V�I�A�`]�.wA�����x��יj���o�M������i��_/R�?��W�     