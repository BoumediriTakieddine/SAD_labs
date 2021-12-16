SELECT C.NOMCOMP
        ,SUM(S.CA) as CAMC
        , rank() over (order by (SUM(S.CA)) Desc ) as rank_ca
        , DENSE_RANK() over (order by (SUM(S.CA)) Desc ) as dense_rank_ca
FROM FSOUSCRIPTION S, DCOMPAGNIE C
WHERE S.CODECOMP = C.CODECOMP
GROUP BY C.NOMCOMP