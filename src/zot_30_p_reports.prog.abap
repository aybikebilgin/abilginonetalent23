*&---------------------------------------------------------------------*
*& Report zot_30_p_reports
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_30_p_reports.

INCLUDE zot_30_include_reports_top.
INCLUDE zot_30_include_reports_slc.
INCLUDE zot_30_include_reports_class.



IF p_sat = abap_true.

  SELECT eban~banfn,
         eban~bnfpo,
         eban~bsart,
         eban~matnr,
         eban~menge,
         eban~meins
  FROM eban
  INNER JOIN ekpo ON ekpo~banfn = eban~banfn AND ekpo~matkl = eban~matkl
  INTO TABLE @DATA(lt_sat).

ELSEIF p_sas = abap_true.

  SELECT ekpo~ebeln,
         ekpo~ebelp,
         ekpo~matnr,
         ekpo~menge,
         ekpo~meins
  FROM ekpo
  INNER JOIN eban ON ekpo~banfn = eban~banfn AND ekpo~matkl = eban~matkl
  INTO TABLE @DATA(lt_sas).

ENDIF.


END-OF-SELECTION.
*  go_main->display_grid( ).
