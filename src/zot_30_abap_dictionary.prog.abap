*&---------------------------------------------------------------------*
*& Report zot_30_abap_dictionary
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_30_abap_dictionary.

*TYPES : BEGIN OF lty_personel,
*       id        TYPE zot_30_e_id,
*        ad        TYPE zot_30_e_ad,
*        yas       TYPE zot_30_e_yas,
*       departman TYPE zot_30_e_departman,
*       unvan     TYPE zot_30_e_unvan,
*        END OF lty_personel.
*
*       DATA: ls_personel_1 TYPE lty_personel,
*             ls_personel_2 TYPE zot_30_s_personel,

  DATA: ls_personel TYPE zot_30_s_personel,
        lt_personel TYPE TABLE OF zot_30_s_personel,
        lt_personel2 TYPE zot_30_tt_personel,
        lt_personel3 TYPE TABLE OF zot_30_tt_personel.

        BREAK  abilgin.
