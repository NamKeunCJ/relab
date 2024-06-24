PGDMP     ,                    |            relab    14.8    14.8 %               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    41138    relab    DATABASE     d   CREATE DATABASE relab WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE relab;
                postgres    false            �            1259    41168    dato_demanda    TABLE     R  CREATE TABLE public.dato_demanda (
    id_dem integer NOT NULL,
    dat_dem double precision NOT NULL,
    status boolean NOT NULL,
    created_at timestamp without time zone NOT NULL,
    update_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp without time zone,
    id_usu integer NOT NULL
);
     DROP TABLE public.dato_demanda;
       public         heap    postgres    false            �            1259    41167    dato_demanda_id_dem_seq    SEQUENCE     �   CREATE SEQUENCE public.dato_demanda_id_dem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.dato_demanda_id_dem_seq;
       public          postgres    false    214                       0    0    dato_demanda_id_dem_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.dato_demanda_id_dem_seq OWNED BY public.dato_demanda.id_dem;
          public          postgres    false    213            �            1259    41181    dato_irradiancia    TABLE     ~  CREATE TABLE public.dato_irradiancia (
    id_irr integer NOT NULL,
    prom_irr double precision NOT NULL,
    max_irr double precision NOT NULL,
    status boolean NOT NULL,
    created_at timestamp without time zone NOT NULL,
    update_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp without time zone,
    id_usu integer NOT NULL
);
 $   DROP TABLE public.dato_irradiancia;
       public         heap    postgres    false            �            1259    41180    dato_irradiancia_id_irr_seq    SEQUENCE     �   CREATE SEQUENCE public.dato_irradiancia_id_irr_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.dato_irradiancia_id_irr_seq;
       public          postgres    false    216                       0    0    dato_irradiancia_id_irr_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.dato_irradiancia_id_irr_seq OWNED BY public.dato_irradiancia.id_irr;
          public          postgres    false    215            �            1259    41141    roles    TABLE     M  CREATE TABLE public.roles (
    id_rol integer NOT NULL,
    tip_rol character varying(30) NOT NULL,
    status boolean NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    update_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp without time zone
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    41140    roles_id_rol_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.roles_id_rol_seq;
       public          postgres    false    210                       0    0    roles_id_rol_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.roles_id_rol_seq OWNED BY public.roles.id_rol;
          public          postgres    false    209            �            1259    41150    usuario    TABLE     I  CREATE TABLE public.usuario (
    id_usu integer NOT NULL,
    nom_usu character varying(50) NOT NULL,
    ape_usu character varying(50) NOT NULL,
    cor_usu character varying(100) NOT NULL,
    per_usu character varying(15) NOT NULL,
    doc_usu character varying(10) NOT NULL,
    con_usu character varying(10) NOT NULL,
    status boolean NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    update_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp without time zone,
    id_rol integer NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    41149    usuario_id_usu_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_usu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.usuario_id_usu_seq;
       public          postgres    false    212                        0    0    usuario_id_usu_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.usuario_id_usu_seq OWNED BY public.usuario.id_usu;
          public          postgres    false    211            q           2604    41171    dato_demanda id_dem    DEFAULT     z   ALTER TABLE ONLY public.dato_demanda ALTER COLUMN id_dem SET DEFAULT nextval('public.dato_demanda_id_dem_seq'::regclass);
 B   ALTER TABLE public.dato_demanda ALTER COLUMN id_dem DROP DEFAULT;
       public          postgres    false    213    214    214            s           2604    41184    dato_irradiancia id_irr    DEFAULT     �   ALTER TABLE ONLY public.dato_irradiancia ALTER COLUMN id_irr SET DEFAULT nextval('public.dato_irradiancia_id_irr_seq'::regclass);
 F   ALTER TABLE public.dato_irradiancia ALTER COLUMN id_irr DROP DEFAULT;
       public          postgres    false    216    215    216            k           2604    41144    roles id_rol    DEFAULT     l   ALTER TABLE ONLY public.roles ALTER COLUMN id_rol SET DEFAULT nextval('public.roles_id_rol_seq'::regclass);
 ;   ALTER TABLE public.roles ALTER COLUMN id_rol DROP DEFAULT;
       public          postgres    false    209    210    210            n           2604    41153    usuario id_usu    DEFAULT     p   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usu SET DEFAULT nextval('public.usuario_id_usu_seq'::regclass);
 =   ALTER TABLE public.usuario ALTER COLUMN id_usu DROP DEFAULT;
       public          postgres    false    211    212    212                      0    41168    dato_demanda 
   TABLE DATA           j   COPY public.dato_demanda (id_dem, dat_dem, status, created_at, update_at, deleted_at, id_usu) FROM stdin;
    public          postgres    false    214   8.                 0    41181    dato_irradiancia 
   TABLE DATA           x   COPY public.dato_irradiancia (id_irr, prom_irr, max_irr, status, created_at, update_at, deleted_at, id_usu) FROM stdin;
    public          postgres    false    216   U.                 0    41141    roles 
   TABLE DATA           [   COPY public.roles (id_rol, tip_rol, status, created_at, update_at, deleted_at) FROM stdin;
    public          postgres    false    210   r.                 0    41150    usuario 
   TABLE DATA           �   COPY public.usuario (id_usu, nom_usu, ape_usu, cor_usu, per_usu, doc_usu, con_usu, status, created_at, update_at, deleted_at, id_rol) FROM stdin;
    public          postgres    false    212   �.       !           0    0    dato_demanda_id_dem_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.dato_demanda_id_dem_seq', 1, false);
          public          postgres    false    213            "           0    0    dato_irradiancia_id_irr_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.dato_irradiancia_id_irr_seq', 1, false);
          public          postgres    false    215            #           0    0    roles_id_rol_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.roles_id_rol_seq', 1, false);
          public          postgres    false    209            $           0    0    usuario_id_usu_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.usuario_id_usu_seq', 1, false);
          public          postgres    false    211            ~           2606    41174    dato_demanda dato_demanda_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dato_demanda
    ADD CONSTRAINT dato_demanda_pkey PRIMARY KEY (id_dem);
 H   ALTER TABLE ONLY public.dato_demanda DROP CONSTRAINT dato_demanda_pkey;
       public            postgres    false    214            �           2606    41187 &   dato_irradiancia dato_irradiancia_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.dato_irradiancia
    ADD CONSTRAINT dato_irradiancia_pkey PRIMARY KEY (id_irr);
 P   ALTER TABLE ONLY public.dato_irradiancia DROP CONSTRAINT dato_irradiancia_pkey;
       public            postgres    false    216            v           2606    41148    roles roles_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id_rol);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    210            x           2606    41159    usuario usuario_cor_usu_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_cor_usu_key UNIQUE (cor_usu);
 E   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_cor_usu_key;
       public            postgres    false    212            z           2606    41161    usuario usuario_doc_usu_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_doc_usu_key UNIQUE (doc_usu);
 E   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_doc_usu_key;
       public            postgres    false    212            |           2606    41157    usuario usuario_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usu);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    212            �           2606    41175 %   dato_demanda dato_demanda_id_usu_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dato_demanda
    ADD CONSTRAINT dato_demanda_id_usu_fkey FOREIGN KEY (id_usu) REFERENCES public.usuario(id_usu);
 O   ALTER TABLE ONLY public.dato_demanda DROP CONSTRAINT dato_demanda_id_usu_fkey;
       public          postgres    false    214    3196    212            �           2606    41188 -   dato_irradiancia dato_irradiancia_id_usu_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dato_irradiancia
    ADD CONSTRAINT dato_irradiancia_id_usu_fkey FOREIGN KEY (id_usu) REFERENCES public.usuario(id_usu);
 W   ALTER TABLE ONLY public.dato_irradiancia DROP CONSTRAINT dato_irradiancia_id_usu_fkey;
       public          postgres    false    3196    216    212            �           2606    41162    usuario usuario_id_rol_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.roles(id_rol);
 E   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_id_rol_fkey;
       public          postgres    false    212    210    3190                  x������ � �            x������ � �            x������ � �            x������ � �     