*&---------------------------------------------------------------------*
*& Include zot_30_include_reports_slc
*&---------------------------------------------------------------------*

TABLES: eban , ekpo.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_sat TYPE char1 RADIOBUTTON GROUP gr1,
              p_sas TYPE char1 RADIOBUTTON GROUP gr1.
SELECTION-SCREEN END OF BLOCK b1.


SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  SELECT-OPTIONS: s_satno FOR eban-banfn,
                  s_bturu FOR eban-bnfpo.
SELECTION-SCREEN END OF BLOCK b2.


SELECTION-SCREEN BEGIN OF BLOCK b3 WITH FRAME TITLE TEXT-003.
  SELECT-OPTIONS : s_sasno FOR ekpo-ebeln,
                   s_malg FOR ekpo-matkl.
SELECTION-SCREEN END OF BLOCK b3.
