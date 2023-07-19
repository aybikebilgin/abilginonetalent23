*&---------------------------------------------------------------------*
*& Report zot_30_p_sports
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_30_p_sports.

DATA: gv_random LIKE qf00-ran_int.

  TYPES: BEGIN OF gty_sports,
         id        TYPE i,
         takim_adi TYPE c LENGTH 15,
         ulke_adi  TYPE c LENGTH 15,
         torba     TYPE i,
         END OF gty_sports.

  DATA:
       gt_sports TYPE TABLE OF gty_sports.

  TYPES : BEGIN OF gty_grup,
          takim_ad TYPE c LENGTH 15,
          END OF gty_grup.

   DATA: gt_Agrup TYPE TABLE OF gty_grup,
         gt_Bgrup TYPE TABLE OF gty_grup,
         gt_Cgrup TYPE TABLE OF gty_grup,
         gt_Dgrup TYPE TABLE OF gty_grup,

         gt_final TYPE TABLE OF gty_grup.

   gt_sports = VALUE #( BASE gt_sports ( id = 1
                                      takim_adi = 'Liverpool'
                                      ulke_adi = 'EN'
                                      torba = 1
                                      )
                                      ( id = 2
                                      takim_adi = 'Bayern Münih'
                                      ulke_adi = 'DE'
                                      torba = 1
                                      )
                                      ( id = 3
                                      takim_adi = 'Inter'
                                      ulke_adi = 'IT'
                                      torba = 1
                                      )
                                      ( id = 4
                                      takim_adi = 'PSG'
                                      ulke_adi = 'FR'
                                      torba = 1
                                       )
                                      ( id = 5
                                      takim_adi = 'Manchester City'
                                      ulke_adi = 'EN'
                                      torba = 2
                                      )
                                      ( id = 6
                                      takim_adi = 'PSV'
                                      ulke_adi = 'NE'
                                      torba = 2
                                       )
                                       ( id = 7
                                      takim_adi = 'Porto'
                                      ulke_adi = 'PO'
                                      torba = 2
                                       )
                                       ( id = 8
                                      takim_adi = 'Real Madrid'
                                      ulke_adi = 'ES'
                                      torba = 2
                                       )
                                       ( id = 9
                                      takim_adi = 'Dortmund'
                                      ulke_adi = 'DE'
                                      torba = 3
                                       )
                                       ( id = 10
                                      takim_adi = 'Galatasaray'
                                      ulke_adi = 'TR'
                                      torba = 3
                                       )
                                       ( id = 11
                                      takim_adi = 'Marsilya'
                                      ulke_adi = 'FR'
                                      torba = 3
                                       )
                                       ( id = 12
                                      takim_adi = 'Ajax'
                                      ulke_adi = 'NL'
                                      torba = 3
                                       )
                                       ( id = 13
                                      takim_adi = 'AEK'
                                      ulke_adi = 'GR'
                                      torba = 4
                                       )
                                       ( id = 14
                                      takim_adi = 'Roma'
                                      ulke_adi = 'IT'
                                      torba = 4
                                       )
                                       ( id = 15
                                      takim_adi = 'Steaua Bükreş'
                                      ulke_adi = 'RO'
                                      torba = 4
                                       )
                                       ( id = 16
                                      takim_adi = 'Atletico Madrid'
                                      ulke_adi = 'ES'
                                      torba = 4
                                       ) ).


*DATA(r) = cl_abap_random_int=>create( seed = CONV i( sy-uzeit )
*                                      min  = 1
*                                      max = 16 ).

*  DATA(lv_count)  = 16.
* if lv_count > 0 .

DO 35 TIMES.
LOOP AT gt_sports INTO DATA(ls_sports).
  DATA:
    lv_ran_int       TYPE qf00-ran_int,
    lv_invalid_input TYPE qf00.

   CALL FUNCTION 'QF05_RANDOM_INTEGER'
    EXPORTING
      ran_int_max   = 16
      ran_int_min   = 1
    IMPORTING
      ran_int       = gv_random


    EXCEPTIONS
      invalid_input = 1
      OTHERS        = 2.

      READ TABLE gt_sports INTO DATA(ls_read) WITH KEY id = gv_random.
  IF sy-subrc = 0.
if sy-index MOD 4 = 0.
            IF ls_read-torba NE ls_sports-torba.
       if ls_read-ulke_adi NE ls_sports-ulke_adi.
             if lines( gt_Agrup ) < 4.
                APPEND ls_read-takim_adi TO gt_Agrup.
                DELETE gt_sports WHERE id = ls_read-id.
             endif.
       endif.
    ENDIF.
       endif.
ENDIF.
ENDLOOP.

LOOP AT gt_sports INTO DATA(ls_ssports_b).

  CALL FUNCTION 'QF05_RANDOM_INTEGER'
    EXPORTING
      ran_int_max   = 16
      ran_int_min   = 1
    IMPORTING
      ran_int       = gv_random
    EXCEPTIONS
      invalid_input = 1
      OTHERS        = 2.
  READ TABLE gt_sports INTO DATA(ls_readd_b) WITH KEY id = gv_random.
  IF sy-subrc = 0.
if sy-index MOD 4 = 0.
            IF ls_readd_b-torba NE ls_ssports_b-torba.
       if ls_readd_b-ulke_adi NE ls_ssports_b-ulke_adi.
             if lines( gt_Bgrup ) < 4.
                APPEND ls_readd_b-takim_adi TO gt_Bgrup.
                DELETE gt_sports WHERE id = ls_readd_b-id.
             endif.
       endif.
    ENDIF.
       endif.
ENDIF.
ENDLOOP.

LOOP AT gt_sports INTO DATA(ls_ssports_c).
  CALL FUNCTION 'QF05_RANDOM_INTEGER'
    EXPORTING
      ran_int_max   = 16
      ran_int_min   = 1
    IMPORTING
      ran_int       = gv_random
    EXCEPTIONS
      invalid_input = 1
      OTHERS        = 2.
  READ TABLE gt_sports INTO DATA(ls_readd_c) WITH KEY id = gv_random.
  IF sy-subrc = 0.
if sy-index MOD 4 = 0.
            IF ls_readd_c-torba NE ls_ssports_c-torba.
       if ls_readd_c-ulke_adi NE ls_ssports_c-ulke_adi.
             if lines( gt_Cgrup ) < 4.
                APPEND ls_readd_c-takim_adi TO gt_Cgrup.
                DELETE gt_sports WHERE id = ls_readd_c-id.
             endif.
       endif.
    ENDIF.
       endif.
       ENDIF.
ENDLOOP.

LOOP AT gt_sports INTO DATA(ls_ssports_d).
  CALL FUNCTION 'QF05_RANDOM_INTEGER'
    EXPORTING
      ran_int_max   = 16
      ran_int_min   = 1
    IMPORTING
      ran_int       = gv_random
    EXCEPTIONS
      invalid_input = 1
      OTHERS        = 2.
  READ TABLE gt_sports INTO DATA(ls_readd_d) WITH KEY id = gv_random.
  IF sy-subrc = 0.
  if sy-index MOD 4 = 0.
            IF ls_readd_d-torba NE ls_ssports_d-torba.
       if ls_readd_d-ulke_adi NE ls_ssports_d-ulke_adi.
             if lines( gt_Dgrup ) < 4.
                APPEND ls_readd_d-takim_adi TO gt_Dgrup.
                DELETE gt_sports WHERE id = ls_readd_d-id.
             endif.
       endif.
    ENDIF.
  endif.
       ENDIF.
ENDLOOP.
ENDDO.


cl_demo_output=>write( gt_Agrup ).
cl_demo_output=>write( gt_Bgrup ).
cl_demo_output=>write( gt_Cgrup ).
cl_demo_output=>write( gt_Dgrup ).
cl_demo_output=>display( ).
