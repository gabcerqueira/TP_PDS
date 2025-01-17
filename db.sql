PGDMP                     
    z         	   DB_TP_PDS    14.4    14.4 "                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    32778 	   DB_TP_PDS    DATABASE     k   CREATE DATABASE "DB_TP_PDS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "DB_TP_PDS";
                postgres    false                        2615    2200    public2    SCHEMA        CREATE SCHEMA public2;
    DROP SCHEMA public2;
                postgres    false            $           0    0    SCHEMA public2    COMMENT     7   COMMENT ON SCHEMA public2 IS 'standard public schema';
                   postgres    false    3            �            1259    32819 	   CATEGORIA    TABLE     �   CREATE TABLE public2."CATEGORIA" (
    "ID_CATEGORIA" integer NOT NULL,
    "NOME_CATEGORIA" character(50),
    "DESCRICAO_CATEGORIA" character(100)
);
     DROP TABLE public2."CATEGORIA";
       public2         heap    postgres    false    3            �            1259    32779    USUARIO    TABLE     h   CREATE TABLE public2."USUARIO" (
    "ID_USUARIO" integer NOT NULL,
    "NOME_USUARIO" character(50)
);
    DROP TABLE public2."USUARIO";
       public2         heap    postgres    false    3            �            1259    32834    CLIENTE    TABLE     c   CREATE TABLE public2."CLIENTE" (
    "ID_CLIENTE" integer NOT NULL
)
INHERITS (public2."USUARIO");
    DROP TABLE public2."CLIENTE";
       public2         heap    postgres    false    3    209            �            1259    32799    COLECAO    TABLE     �   CREATE TABLE public2."COLECAO" (
    "ID_COLECAO" integer NOT NULL,
    "ID_LOJA" integer NOT NULL,
    "NOME_COLECAO" character(50),
    "ID_PRODUTO" integer NOT NULL
);
    DROP TABLE public2."COLECAO";
       public2         heap    postgres    false    3            �            1259    32784    LOJA    TABLE     z   CREATE TABLE public2."LOJA" (
    "ID_LOJA" integer NOT NULL,
    "NOME_LOJA" character(50),
    "ID_SEGMENTO" integer
);
    DROP TABLE public2."LOJA";
       public2         heap    postgres    false    3            �            1259    32809    PRODUTO    TABLE       CREATE TABLE public2."PRODUTO" (
    "ID_PRODUTO" integer NOT NULL,
    "NOME_PRODUTO" character(50),
    "ID_CATEGORIA" integer,
    "DESCRICAO" character(100),
    "DESCONTO" numeric(10,2),
    "ESTOQUE" integer,
    "PRECO" numeric(10,2),
    "URL_PRODUTO" character(300)
);
    DROP TABLE public2."PRODUTO";
       public2         heap    postgres    false    3            �            1259    32789    SEGMENTO    TABLE     k   CREATE TABLE public2."SEGMENTO" (
    "ID_SEGMENTO" integer NOT NULL,
    "NOME_SEGMENTO" character(50)
);
    DROP TABLE public2."SEGMENTO";
       public2         heap    postgres    false    3            �            1259    32829    VENDEDOR    TABLE     e   CREATE TABLE public2."VENDEDOR" (
    "ID_VENDEDOR" integer NOT NULL
)
INHERITS (public2."USUARIO");
    DROP TABLE public2."VENDEDOR";
       public2         heap    postgres    false    3    209                      0    32819 	   CATEGORIA 
   TABLE DATA           _   COPY public2."CATEGORIA" ("ID_CATEGORIA", "NOME_CATEGORIA", "DESCRICAO_CATEGORIA") FROM stdin;
    public2          postgres    false    214   �%                 0    32834    CLIENTE 
   TABLE DATA           P   COPY public2."CLIENTE" ("ID_USUARIO", "NOME_USUARIO", "ID_CLIENTE") FROM stdin;
    public2          postgres    false    216   �&                 0    32799    COLECAO 
   TABLE DATA           [   COPY public2."COLECAO" ("ID_COLECAO", "ID_LOJA", "NOME_COLECAO", "ID_PRODUTO") FROM stdin;
    public2          postgres    false    212   P'                 0    32784    LOJA 
   TABLE DATA           H   COPY public2."LOJA" ("ID_LOJA", "NOME_LOJA", "ID_SEGMENTO") FROM stdin;
    public2          postgres    false    210   �)                 0    32809    PRODUTO 
   TABLE DATA           �   COPY public2."PRODUTO" ("ID_PRODUTO", "NOME_PRODUTO", "ID_CATEGORIA", "DESCRICAO", "DESCONTO", "ESTOQUE", "PRECO", "URL_PRODUTO") FROM stdin;
    public2          postgres    false    213   Q*                 0    32789    SEGMENTO 
   TABLE DATA           E   COPY public2."SEGMENTO" ("ID_SEGMENTO", "NOME_SEGMENTO") FROM stdin;
    public2          postgres    false    211   >                 0    32779    USUARIO 
   TABLE DATA           B   COPY public2."USUARIO" ("ID_USUARIO", "NOME_USUARIO") FROM stdin;
    public2          postgres    false    209   �>                 0    32829    VENDEDOR 
   TABLE DATA           R   COPY public2."VENDEDOR" ("ID_USUARIO", "NOME_USUARIO", "ID_VENDEDOR") FROM stdin;
    public2          postgres    false    215   �>       �           2606    32823    CATEGORIA CATEGORIA_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public2."CATEGORIA"
    ADD CONSTRAINT "CATEGORIA_pkey" PRIMARY KEY ("ID_CATEGORIA");
 G   ALTER TABLE ONLY public2."CATEGORIA" DROP CONSTRAINT "CATEGORIA_pkey";
       public2            postgres    false    214            �           2606    32838    CLIENTE CLIENTE_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public2."CLIENTE"
    ADD CONSTRAINT "CLIENTE_pkey" PRIMARY KEY ("ID_CLIENTE");
 C   ALTER TABLE ONLY public2."CLIENTE" DROP CONSTRAINT "CLIENTE_pkey";
       public2            postgres    false    216            ~           2606    32870    COLECAO COLECAO_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public2."COLECAO"
    ADD CONSTRAINT "COLECAO_pkey" PRIMARY KEY ("ID_COLECAO", "ID_LOJA", "ID_PRODUTO");
 C   ALTER TABLE ONLY public2."COLECAO" DROP CONSTRAINT "COLECAO_pkey";
       public2            postgres    false    212    212    212            z           2606    32788    LOJA LOJA_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public2."LOJA"
    ADD CONSTRAINT "LOJA_pkey" PRIMARY KEY ("ID_LOJA");
 =   ALTER TABLE ONLY public2."LOJA" DROP CONSTRAINT "LOJA_pkey";
       public2            postgres    false    210            �           2606    32813    PRODUTO PRODUTO_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public2."PRODUTO"
    ADD CONSTRAINT "PRODUTO_pkey" PRIMARY KEY ("ID_PRODUTO");
 C   ALTER TABLE ONLY public2."PRODUTO" DROP CONSTRAINT "PRODUTO_pkey";
       public2            postgres    false    213            |           2606    32793    SEGMENTO SEGMENTO_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public2."SEGMENTO"
    ADD CONSTRAINT "SEGMENTO_pkey" PRIMARY KEY ("ID_SEGMENTO");
 E   ALTER TABLE ONLY public2."SEGMENTO" DROP CONSTRAINT "SEGMENTO_pkey";
       public2            postgres    false    211            x           2606    32783    USUARIO USUARIO_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public2."USUARIO"
    ADD CONSTRAINT "USUARIO_pkey" PRIMARY KEY ("ID_USUARIO");
 C   ALTER TABLE ONLY public2."USUARIO" DROP CONSTRAINT "USUARIO_pkey";
       public2            postgres    false    209            �           2606    32833    VENDEDOR VENDEDOR_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public2."VENDEDOR"
    ADD CONSTRAINT "VENDEDOR_pkey" PRIMARY KEY ("ID_VENDEDOR");
 E   ALTER TABLE ONLY public2."VENDEDOR" DROP CONSTRAINT "VENDEDOR_pkey";
       public2            postgres    false    215            �           2606    32824    PRODUTO ID_CATEGORIA    FK CONSTRAINT     �   ALTER TABLE ONLY public2."PRODUTO"
    ADD CONSTRAINT "ID_CATEGORIA" FOREIGN KEY ("ID_CATEGORIA") REFERENCES public2."CATEGORIA"("ID_CATEGORIA");
 C   ALTER TABLE ONLY public2."PRODUTO" DROP CONSTRAINT "ID_CATEGORIA";
       public2          postgres    false    214    213    3202            �           2606    32804    COLECAO ID_LOJA    FK CONSTRAINT     ~   ALTER TABLE ONLY public2."COLECAO"
    ADD CONSTRAINT "ID_LOJA" FOREIGN KEY ("ID_LOJA") REFERENCES public2."LOJA"("ID_LOJA");
 >   ALTER TABLE ONLY public2."COLECAO" DROP CONSTRAINT "ID_LOJA";
       public2          postgres    false    212    210    3194            �           2606    32843    COLECAO ID_PRODUTO    FK CONSTRAINT     �   ALTER TABLE ONLY public2."COLECAO"
    ADD CONSTRAINT "ID_PRODUTO" FOREIGN KEY ("ID_PRODUTO") REFERENCES public2."PRODUTO"("ID_PRODUTO") NOT VALID;
 A   ALTER TABLE ONLY public2."COLECAO" DROP CONSTRAINT "ID_PRODUTO";
       public2          postgres    false    213    3200    212            �           2606    32794    LOJA ID_SEGMENTO    FK CONSTRAINT     �   ALTER TABLE ONLY public2."LOJA"
    ADD CONSTRAINT "ID_SEGMENTO" FOREIGN KEY ("ID_SEGMENTO") REFERENCES public2."SEGMENTO"("ID_SEGMENTO");
 ?   ALTER TABLE ONLY public2."LOJA" DROP CONSTRAINT "ID_SEGMENTO";
       public2          postgres    false    210    3196    211               ;  x���KN�0��9�}[�
!��hŊ�PO����>�E+��/��TݒX�ُ�i��-Ž�K����b�}����4�	;fY��9�����UhϦjFI�%*4F���bf�r����<qc+z����6I��8Qm�YK�����W�|b��Z�)�nѱ�ΓlWdP�v��.�~�dzu�q[���$��nB�d:H)�+���F��:����Z�̗d^��N
n��
�=��n�𞗨xr(��m�]�=��,�F)��5�<��8�c|tL���%�l�;��bAN�p�Д�O�6>	�?O �Ţ��         a   x�3�tOL*�L�QpN-*,M�,JT 8���ڼJ�R��i3�2�t��/K���Tp��+���'B�1�	�Kj^fNq~��obQIf^1�L�b���� �+�         L  x���=�A��x�>�j����;D"@"&�k�fV;v�7��s�b�	��lP�G�F�U���.v��a���|�6�q��4�Χi޼���f�ץ�T���i쁍�f`��	t7�z�o����̆�`��,`&�(��͠G�B��A�2�삂�삂]P����Ȫ��
����
�����������ԥ��8<O_Wm����������X�c��\�z�F#��H g!K��9�J@V�-�߂�T�J�����
�HA�o{T@�dU@VF��`6�k�Q� ��ط���q��~=�lV���6�У��o�o�sN���p�ϧW���
�
�[�m~+�Gr����d��#i�+��~�>���t�F??�~�~j~Z����Ʀ>������i~���&�>仩�i����X�TQE� k��`����ڍ�p[�y9�	XV�-~�=� �婷v������7��U`�
l�[9��j�k+���q���i>^~����3��3�	iA� mH7�en(5C�b(sC�[�_�F֮����r;�u,#�HW��߀�H�(sC�ʼ���]�_�*�         �   x�3��MLO�)U prq:�&V�瑨͘�;1�4�]
�F\&��9��%�j3��LL�(M��'^�1�90HRR�I�̈́��-�(J�͒�pgA~r��s~q��%����Dh4�24��K,)%�"$}f�~�%���DX�f����� m\E            x���n�Ț��ŧ��k/2@��;�v����E�(��"s�e�M�� ���'���TQ�-�Kv����b��*~��ZQkK�q)��<��"O���}��Pk+/^�
U�w��҂[����q�V����+ێ�n'ɏeY�,SE'�ӎ_�q�R�cS�bd'��*��q���"��Xx�5�YW��=�q(�{��f!�`y\5V[��;�5�:e/�+5ŉ���$ND�#$r}���(�>"����J��b�!VU}�䔬N[5V[|k�5\���ˆki#1�l#j��<������<}���r�1���Y^��@,�+�*u�1�e%�8��z�J��~�z����(� �ƛU!�ʖ��	��(E�bX���>v}*��BΡ	?x26�bk��ZYYK�p������q7�db�#����RYu��_�q A���8I(�B��\�Ȥ��2����j��?e�Xɬ��bݸ��%Nc%���{��f���X�Sx���8��������*�<���J�LC�1��\ q  3��<OQc���o�q	uً_�|�(�Qqt��ԭ��zsEC3�<�]�3[��Yv1�ǫ��n�����7�v�~/�w�bl�����6��sہ�����&����.�F���8:ABO'���1X�D2����ȝW��;w����I����}�҆nD6��)�법��m��]����y�TӮyy� ڜa�u�6���FI%�i}Ŝ1�S7T>C��I.�\J���܍s��P���?��lyqg��XZdHv+�.�����e��O���
��X�,T:�-Ҽ.@/?+@�'3M���) ��l3f<�LN��b�o�w�-�!��47d9�"���~�)0R�:��k�[���i��0�/ +/����TE�^��1��Ⲓv��&�-���Q(��aPD��gJJ�N?{4�l!2!+�Z�箎�Q�`��\&'��J����i�i�����BR4a����1��,�Q'¥�è�\@����,D�,iq�vA�����?�����$~�l��8PY%�"�#Od*�^h���	��
Df��>��X��e~�+�L�$�<���
U�8Z:G�NIL�	}�Rń$�8�}i�\K��Xo���i��]9��h	�v�+&u��y.��r���2��������7�:QB��<	=��s�l_�U5�1ٿ)��]g�R�Ca�H|B���Xj%��4�^�-��k'rכ,������bi��"%q?J������.��bAMw����w]T"��a{����Nm�T������_ұ05�j@��S���Ӆ�¨��W���vW����*�_��*��5]Վ�N%�o���f�_w�N^��{�q�tw���a}��p{��M4�::4ֈ���eG�h��e/�c�eRG��Q�Ik��<���>b�V�0^o�l��<�]P,LNVh���^��h?}���67h��fag!���'�f�����Ɓ�d���y'ίZ�!�!l�e�P0ȉ���D>��I����+�u�SgwFD��e~�R������/��66\1㋫�ހ�x�:�����r��~��u����ޛEnz��d�i�ͅ��K���U�����f��%\י۹,�I��N��Fؖ6��v ��ӟ�Ov,k�����g�w������xi`�-f-�C��dM���t��ǀ��,+��}�P���8Ym;��L򮽷k
L�>8��>l�<�Q*<�a��caaא��d���T2��D�����R�e�5�<v\�ڣ�v������O3�N��;���LU\��4Q!0g��W #�	��?1�� q�����Ⱥ-],m�4ُoKF&d����2$�KHf���ir��؁p�8��T�� c����ð
}�/0g�� ���Ԫ��d�t�( �2.+�cD@@/Lc�A]��~t䥩w_J�jï�47T
c�JI#���*�*?r\�\�w���֞<�a^,2x܌a�� e�^�ݓ�{��D�A�d��<��k�,�\cE��L���&k:��3�{�EHC��ڥ
�;C�堝��b��l��k�{�DI��-A�@��}Y�i#�a:q�����bW-�kMv�7��}&��X��=�,Z���L��ƈ��Q�¸���ٙ**U St�	�X> ��B� t��� yy#rB����FHE>W.BJU�HD��U�����d��U�kGyY����-g�,to�O�#3�*QAU�I=h��HVU����a�G;�z�jY�i6�,H=3߲�֪T�λ����o1N�0��YD<,q���j�f�Yc�{Z1'ښ�0����L�@=e"#Da@C䆾
���0%��Q��Vv��"���:hn0��% (RJ2G׀ ��:��.u<����"�Y��v�����!˄�4�m��v?�Ő	��4��T�2���C2#/��>����n�j�ʲ���k3�|�Z�X��d1[�a�,�m7�5���Q��!ǈ�'���-���"v�E�5����_~Gf�¥��a��"�	b0ed�4���5U���H��,��Y��+}Dvk��J��ұW��L<��h�d�)��7`ҡH{ m���t�r1!X����(j�W�lk��2��|��nk'/RY����p�N�r!��8�RQ�':�=��SG�`����ť�C����� HA�_�4�T�{���
^�R�a���>�Pʢ��d�<�s�ׂ2l76jK'�C\�B�N�-��5S��4�J��)�$�#����G�֢����XG�q֛�&ی[|/�b�ɶ���5ƭ�jh���O.F�>.�p�G�>ЦW%�z��F&{ ��O`�P���$@3�V�8�]�3��i�b���]�Pc<v�Հ^�k};�Ы�~���pujJ��}�� �H��ڹ*�DYH}(�B��M���s��p�r�1�_&��/����5z�^�]�%y�zgggywbq�(��b3����Ӫm1�_cSg���g����k�YW�p�E66�0����~��=	͵(o�ѷ�ںzŷ��x�	�����+5�24�������pߛ�@WK�C ��a15�0�t%�1_'� ��8��~v�оJi%n�+W;i uL��G�ڢ�����v�*���/�Fq
��0L�U>j��Z9]9�z{��θ��|��7XXԹ7Z�R��s�%G�����]�K,ܺ�E�܅d�j˴��'�!�4��I�S��zTh�9I йxtR�߀���Nku�8�~T�#�},�-n��G{�3Z����Jzy&�E�(��V�����b�l�i�x���.�l8�q�㼳�����u�p��mly�{HS�~:�l1��dM�{��X�<�'U�͵ˑa��X(�����*�Cӕ+������B�6�Qt��L2�(S�;�b�:X��^ۀEp�o���>��Dc�ϩ��a`�"�\/*�3gk���7��������޷�H�2���瀘vz�a��Z���3�u���R�y 6���+����d���e&.��,C�w{�����	Y�s�sE6J�\�y�s�An�,�K{5��y�1Eř����~�٭���dͤ����3١X^����9�e�,ZYӴ��VY��5>�H����ց*�:U�85�exwd�Bf�2�.s[�����g�U��L��3��ƻ5�0��~?κ�����^m��np�og۟������t\�٪���OGm_l��߷��C��G�uG�{�6I��c���i�����f^���������<���2� ��λ?��GΎR������%�r|��~Q����[o�|�n����epd���V�Υ��8�o�F�V�e��B�2��d�q%k�-_�q��JM���AS#�C�=� ��؋��˒3A($.}���p�8���_��������x�yY���1f5;�����/?�n2U�����Wp�������{�u�7T�aw㣍8̥;v���8��aMPa����x����ړefd�3����du\�k<�@;'ٓr{�����*=r����,>m�?#��ȭ=�� �  ��1�f���6d9D�7�r�Y����?R,�[[y���XN�[� j���К~`���hǻ㍝�f��>�
����Gu�AS�f?�.����^�0�f9e:�t�:�Y�V����v�7K��f�$�C����D]J�Ip���B3u?�eh�7����<3��e��ŭ��W��zy�}����gfŞ���Yi3����a\�yΔ�n� �g���T��GS�8 3˖ J"H��ӏF+Z�������Z�B����i��Bf:���\Ka;�p\���eD{V�(k9Q�+m{�r����*N�K�:��_Dq����,,�C�F���C�_�����r�(��k�������b	x_����Njh�
?l�t㯿���6e��ɷ�:��[s�[�lYM�s�$�Ѳ�Y|Z�i�US|;H˫pנok�W����3o�79����>�%�m��$7�z&�}�Ys��Y��p����Jd^�R���e���j����[G���$�V��!;����q���7�+�
�S�K'�?u�
�/��O�������o�3g����]p2j�"��::[5-Q��%����y�Ϯ(��؛�	�lA(W�R �D!p#W�9�a�(D �'
�f�o����@��JUf��ޅL�B���_K�~���;���W?.��<���<?:�\հ������}�9>x��t��9B����#���P;>�ʹ�v��]�,b���>�m���#;���P[P���h�,�ː��r@"��}��os7AW%�ـ�Odp2��+x�,�?Y�8���?�*��7�w��GUD��]�}.v��l����;�m���_G1���
RB=⾼����'{c�3ٻ�����4m�]���s��yn�3�F�l�� &�6����؏��;�e�9��         |   x�3�K,J��W ps�$+�*$'�^���_LX�	����e�� m�%�y�
) �ŉxu�r:��V%5����&e���d�隓ZRtxK^fr>ȾT7?%?�����6m1z\\\ I?=U            x������ � �         �   x���=�@�z�{��Oia�����͈�l�aنx+k����e�����ɋ`gXAWjs�C.ꚭ;�T��|L W�>ٖΦs�0��}(�o��]�l�I����1�UN,B�ͭT�Y)F�(��\��CA���Ћ���f�܇���er��Yr)� ����i�7U9eB�<��F��e���{xZ!�˟h#     