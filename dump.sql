PGDMP     :    8                 {            DiaryTS #   14.5 (Ubuntu 14.5-0ubuntu0.22.04.1) #   14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24944    DiaryTS    DATABASE     ^   CREATE DATABASE "DiaryTS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE "DiaryTS";
                postgres    false            �            1259    24955    entries    TABLE     �   CREATE TABLE public.entries (
    id integer NOT NULL,
    title text NOT NULL,
    text text NOT NULL,
    "viewCount" integer NOT NULL
);
    DROP TABLE public.entries;
       public         heap    postgres    false            �            1259    24954    entries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.entries_id_seq;
       public          postgres    false    210                       0    0    entries_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.entries_id_seq OWNED BY public.entries.id;
          public          postgres    false    209            �           2604    24958 
   entries id    DEFAULT     h   ALTER TABLE ONLY public.entries ALTER COLUMN id SET DEFAULT nextval('public.entries_id_seq'::regclass);
 9   ALTER TABLE public.entries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210                      0    24955    entries 
   TABLE DATA           ?   COPY public.entries (id, title, text, "viewCount") FROM stdin;
    public          postgres    false    210   �
                  0    0    entries_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.entries_id_seq', 5, true);
          public          postgres    false    209            �           2606    24962    entries entries_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.entries
    ADD CONSTRAINT entries_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.entries DROP CONSTRAINT entries_pkey;
       public            postgres    false    210               O   x�3�,I-.I��,.�W8�R�4W"`�e�23�2��)cH*��*��d^~xq>P�)L�	V�e�9�)�0�1z\\\ ��2�     