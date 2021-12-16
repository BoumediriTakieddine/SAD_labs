CREATE DIMENSION DIM_DAssure
LEVEL L_NumAss IS (DAssure.NumAss)
LEVEL L_TypeAss IS (DAssure.TypeAss)
LEVEL L_CodeVille IS (DAssure.CodeVille)
LEVEL L_CodeWilaya IS (DAssure.CodeWilaya)
HIERARCHY Assure_Type (L_NumAss CHILD OF L_TypeAss)
HIERARCHY Geograohy_Ass (L_NumAss CHILD OF L_CodeVille CHILD OF L_CodeWilaya)