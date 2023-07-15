*&---------------------------------------------------------------------*
*& Report zot_30_p_fibonacci
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_30_p_fibonacci.

DATA:
      lv_num1 TYPE i value 0,
      lv_num2 TYPE i value 1,
      lv_num3 TYPE i,
      a TYPE i.

SELECTION-SCREEN BEGIN OF BLOCK block1 WITH FRAME TITLE t1.
PARAMETERS: lv_max TYPE i,
            lv_krlm TYPE n.

  WHILE lv_num3 < lv_max.
  lv_num3 = lv_num1 + lv_num2.
  lv_num1 = lv_num2.
  lv_num2 = lv_num3.
  IF lv_num3 > lv_max.
      EXIT.
      ELSE.
  WRITE lv_num3.
  ENDIF.

  a += 1.
  IF a MOD lv_krlm EQ 0.
  WRITE /.
  ENDIF.

  ENDWHILE.

  SELECTION-SCREEN END OF BLOCK block1.
