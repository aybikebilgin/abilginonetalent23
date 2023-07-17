*&---------------------------------------------------------------------*
*& Report zot_30_p_zmn
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_30_p_zmn.
DATA : ls_zaman  TYPE zot_30_t_zmn,

       lt_zaman  TYPE TABLE OF zot_30_t_zmn,
       lv_gun    TYPE i,
       lv_ay     TYPE i,
       lv_yil    TYPE i,
       lv_saat   TYPE i,
       lv_dakika TYPE i,
       lv_saniye TYPE i.

APPEND VALUE #( indx        = 1
                bas_tarih = '20230201'
                bas_saat    = '090000'
                bit_tarih   = '20230401'
                bit_saat     =  '080000' ) TO lt_zaman.
APPEND VALUE #( indx        = 2
                bas_tarih = '20230201'
                bas_saat    = '101010'
                bit_tarih   = '20250405'
                bit_saat     =  '111111' ) TO lt_zaman.
APPEND VALUE #( indx        = 3
                bas_tarih = '20230201'
                bas_saat    = '121212'
                bit_tarih   = '20240101'
                bit_saat     =  '181210' ) TO lt_zaman.
APPEND VALUE #( indx        = 4
                bas_tarih = '20230201'
                bas_saat    = '151315'
                bit_tarih   = '20230228'
                bit_saat     =  '151015' ) TO lt_zaman.


SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  SELECT-OPTIONS : s_index FOR ls_zaman-indx .

SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.

    SELECT indx,
           bas_tarih,
           bas_saat,
           bit_tarih,
           bit_saat
     FROM zot_30_t_zmn
     INTO TABLE @DATA(t_zaman).



  cl_demo_output=>display(  ).
