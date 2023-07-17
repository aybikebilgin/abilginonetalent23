*&---------------------------------------------------------------------*
*& Report zot_30_p_internal_tables
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_30_p_internal_tables.

TYPES:  BEGIN OF lty_material,
         matnr TYPE matnr,
         maktx TYPE maktx,
         matkl TYPE matkl,
         menge TYPE menge_d,
         meins TYPE meins,
       END OF lty_material.

 TYPES: BEGIN OF lty_collect,
            matkl TYPE zot_00_t_materia-matkl,
            menge TYPE zot_00_t_materia-menge,
            END OF lty_collect.

Data:  lt_material type TABLE of zot_00_t_materia,
       ls_material TYPE zot_00_t_materia,
       lt_collect  TYPE TABLE OF lty_collect,
       ls_collect  TYPE lty_collect.

SELECT * FROM zot_00_t_materia  into table lt_material.


Data lt_material2 type SORTED TABLE OF zot_00_t_materia WITH UNIQUE key matkl.
lt_material2 = VALUE #( base lt_material2
                                    ( matnr = 11
                                      maktx = 'Vida'
                                      matkl = 'C'
                                      menge =  5
                                      meins = 'ST'
                                    )
                                    ( matnr = 12
                                      maktx = 'Çekiç'
                                      matkl = 'C'
                                      menge =  10
                                      meins = 'ST'
                                    )
                                    ( matnr = 13
                                      maktx = 'Çivi'
                                      matkl = 'C'
                                      menge =  15
                                      meins = 'ST'
                                    )
                                    ( matnr = 14
                                      maktx = 'Klavye'
                                      matkl = 'C'
                                      menge =  20
                                      meins = 'ST'
                                    )
                                    (  matnr = 15
                                      maktx = 'Tornavida'
                                      matkl = 'C'
                                      menge =  25
                                      meins = 'ST'
                                      ) ).

END-OF-SELECTION.
cl_demo_output=>display( lt_material2 ).
