SELECT C.NOMCOMP, M.LIBMARQUE, SUM(S.CA) as CAMC, 
DECODE(GROUPING_ID(C.NOMCOMP), 1, 'Total_Compagnie', C.NOMCOMP)  as GID_Compagnie, 
DECODE(GROUPING_ID(M.LIBMARQUE), 1, 'Total_Marque', M.LIBMARQUE)  as GID_Marque
FROM DMODELE M, DCOMPAGNIE C, FSOUSCRIPTION S
WHERE S.CODECOMP = C.CODECOMP
AND S.CODEMODELE = M.CODEMOD
GROUP BY ROLLUP(C.NOMCOMP, M.LIBMARQUE)