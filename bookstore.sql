PGDMP      "        
        |        	   bookstore    16.3    16.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16712 	   bookstore    DATABASE     }   CREATE DATABASE bookstore WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Canada.1252';
    DROP DATABASE bookstore;
                postgres    false            �            1259    16713    authors    TABLE     �   CREATE TABLE public.authors (
    author_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100) NOT NULL
);
    DROP TABLE public.authors;
       public         heap    postgres    false            �            1259    16718    books    TABLE     �   CREATE TABLE public.books (
    book_id integer NOT NULL,
    title character varying(100) NOT NULL,
    author_id integer NOT NULL,
    publication_date date NOT NULL,
    price numeric(10,2) NOT NULL
);
    DROP TABLE public.books;
       public         heap    postgres    false                      0    16713    authors 
   TABLE DATA           J   COPY public.authors (author_id, first_name, last_name, email) FROM stdin;
    public          postgres    false    215   �                 0    16718    books 
   TABLE DATA           S   COPY public.books (book_id, title, author_id, publication_date, price) FROM stdin;
    public          postgres    false    216   �       �           2606    16717    authors authors_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (author_id);
 >   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_pkey;
       public            postgres    false    215            �           2606    16722    books books_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            postgres    false    216            �           2606    16723    books books_author_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.authors(author_id);
 D   ALTER TABLE ONLY public.books DROP CONSTRAINT books_author_id_fkey;
       public          postgres    false    4739    215    216                  x������ � �            x������ � �     