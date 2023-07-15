*&---------------------------------------------------------------------*
*& Report zot_30_p_sirali
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_30_p_sirali.

Data: lv_num1 TYPE i.
      SELECTION-SCREEN BEGIN OF BLOCK block1 WITH FRAME TITLE t1.
      PARAMETERS: lv_max TYPE i,
                  lv_krlm TYPE n.
      SELECTION-SCREEN END OF BLOCK block1.

      START-OF-SELECTION.

      DO lv_max TIMES.
      lv_num1 += 1.
      WRITE: lv_num1.
      IF lv_num1 MOD lv_krlm EQ 0.
      WRITE /.
  ENDIF.
  ENDDO.
