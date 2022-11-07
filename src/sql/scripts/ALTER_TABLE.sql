alter table enem2020.participante 
	add constraint FK_ID_ESCOLA_ENSINO_MEDIO foreign key (FK_ID_ESCOLA_ENSINO_MEDIO) references enem2020.ESCOLAS(ID_ESCOLA);
	
alter table ENEM2020.participante 
	add constraint FK_COD_UF_PARTICIPANTE foreign key (FK_COD_UF_PARTICIPANTE) references ENEM2020.UF(COD_UF);
	
alter table ENEM2020.PROVAS 
	add constraint FK_ID_PARTICIPANTE foreign key (FK_ID_PARTICIPANTE) references ENEM2020.PARTICIPANTE(PK_ID_PARTICIPANTE);

alter table ENEM2020.socioeconomicos  
	add constraint FK_ID_PARTICIPANTE foreign key (FK_ID_PARTICIPANTE) references ENEM2020.PARTICIPANTE(PK_ID_PARTICIPANTE);
