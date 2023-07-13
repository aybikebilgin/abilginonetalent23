*&---------------------------------------------------------------------*
*& Report zot_30_p_open_sql
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_30_p_open_sql.

DATA gv_banfn TYPE eban-banfn.

DATA gs_eban TYPE eban.

DATA gt_eban TYPE TABLE OF eban.

*START-OF-SELECTION.
*    SELECT SINGLE banfn
*  FROM eban
*     WHERE bsart EQ 'NB'
*     INTO @gv_banfn.
*
*     SELECT SINGLE loekz
*     FROM eban
*  WHERE banfn = '0010000023'
*     AND   bnfpo = '0020'
*     INTO @DATA(lv_loekz).
*
*    SELECT SINGLE loekz
*     FROM eban
*     WHERE banfn = '0010000023'
*     AND   bnfpo = '0020'
*     INTO @lv_loekz.

*     IF sy-subrc = 0.
*    WRITE :/ lv_loekz.
*    ELSE.
*      WRITE :/ 'Error'
*      ENDIF.
*     SELECT SINGLE id
*     FROM zot_30_t_main
*     WHERE age GT 10
*     INTO @DATA(lv_id).


  SELECT SINGLE banfn, bsart
  FROM eban
      WHERE banfn = '0010000023'
      AND   bnfpo = '0020'
     INTO CORRESPONDING FIELDS OF @gs_eban.

     break otabilgin.
