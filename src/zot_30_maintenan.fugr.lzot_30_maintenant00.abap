*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZOT_30_T_P_A_TNO................................*
DATA:  BEGIN OF STATUS_ZOT_30_T_P_A_TNO              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_30_T_P_A_TNO              .
CONTROLS: TCTRL_ZOT_30_T_P_A_TNO
            TYPE TABLEVIEW USING SCREEN '0004'.
*...processing: ZOT_30_T_P_EGTM.................................*
DATA:  BEGIN OF STATUS_ZOT_30_T_P_EGTM               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_30_T_P_EGTM               .
CONTROLS: TCTRL_ZOT_30_T_P_EGTM
            TYPE TABLEVIEW USING SCREEN '0003'.
*...processing: ZOT_30_T_P_ITUR.................................*
DATA:  BEGIN OF STATUS_ZOT_30_T_P_ITUR               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_30_T_P_ITUR               .
*...processing: ZOT_30_T_P_MAST.................................*
DATA:  BEGIN OF STATUS_ZOT_30_T_P_MAST               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_30_T_P_MAST               .
CONTROLS: TCTRL_ZOT_30_T_P_MAST
            TYPE TABLEVIEW USING SCREEN '0002'.
*...processing: ZOT_30_T_UNVAN..................................*
DATA:  BEGIN OF STATUS_ZOT_30_T_UNVAN                .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_30_T_UNVAN                .
CONTROLS: TCTRL_ZOT_30_T_UNVAN
            TYPE TABLEVIEW USING SCREEN '0005'.
*.........table declarations:.................................*
TABLES: *ZOT_30_T_P_A_TNO              .
TABLES: *ZOT_30_T_P_EGTM               .
TABLES: *ZOT_30_T_P_ITUR               .
TABLES: *ZOT_30_T_P_MAST               .
TABLES: *ZOT_30_T_UNVAN                .
TABLES: ZOT_30_T_P_A_TNO               .
TABLES: ZOT_30_T_P_EGTM                .
TABLES: ZOT_30_T_P_ITUR                .
TABLES: ZOT_30_T_P_MAST                .
TABLES: ZOT_30_T_UNVAN                 .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
