CREATE DIMENSION DIM_DTemps
LEVEL L_Mois IS (DTemps.Mois)
LEVEL L_Trimestre IS (DTemps.Trimestre)
LEVEL L_Annee IS (DTemps.Annee)
HIERARCHY Temps_Date (L_Mois CHILD OF L_Trimestre CHILD OF L_Annee)
