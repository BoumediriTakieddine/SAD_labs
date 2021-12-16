--DROP TABLE FSouscription;
create table FSouscription
 (
     NumASS number not null,
     CODEMODELE number not null,
     CodeType number not null,
     CodeComp number not null, 
     CODETEMPS number not null,
     Nbcontrat integer not null,
     CA        integer not null,
     foreign key (CODEMODELE) references DMODELE (CODEMOD),
     foreign key (CodeType) references Dtype(CODETYPE),
     foreign key (NumASS) references DASSURE (NumASS),
     foreign key (CODECOMP) references DCOMPAGNIE(CODECOMP),
     foreign key (CodeTemps) references Dtemps (CODETEMPS),
     primary key (NumASS,CodeModele,CodeType,CodeComp,CodeTemps)
);    



