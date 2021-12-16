CREATE DIMENSION DIM_DModele
LEVEL L_CodeMod IS (DModele.CodeMod)
LEVEL L_CodeMarque IS (DModele.CodeMarque)
HIERARCHY Modele_Marque (L_CodeMod CHILD OF L_CodeMarque)
