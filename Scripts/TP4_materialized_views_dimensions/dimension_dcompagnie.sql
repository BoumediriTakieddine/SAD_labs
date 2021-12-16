CREATE DIMENSION DIM_DCompagnie
LEVEL L_CodeComp IS (DCompagnie.CodeComp)
LEVEL L_TypeComp IS (DCompagnie.TypeComp)
HIERARCHY Compagnie_Type (L_CodeComp CHILD OF L_TypeComp)
