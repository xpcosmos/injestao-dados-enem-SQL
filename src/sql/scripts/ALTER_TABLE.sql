
-- Participante: 
alter table enem2020.participante 
	add constraint FK_ID_ESCOLA_ENSINO_MEDIO foreign key (FK_ID_ESCOLA_ENSINO_MEDIO) references enem2020.ESCOLAS(ID_ESCOLA);
	


alter table enem2020.participante 
	add constraint fk_cod_mun_participante foreign key (fk_cod_mun_participante) references enem2020.regiao(cod_mun)


-- Provas:
alter table ENEM2020.PROVAS 
	add constraint FK_ID_PARTICIPANTE foreign key (FK_ID_PARTICIPANTE) references ENEM2020.PARTICIPANTE(PK_ID_PARTICIPANTE);

-- Socioecocômicos:
alter table ENEM2020.socioeconomicos  
	add constraint FK_ID_PARTICIPANTE foreign key (FK_ID_PARTICIPANTE) references ENEM2020.PARTICIPANTE(PK_ID_PARTICIPANTE);



-- Escolas:
alter table enem2020.escolas 
	add constraint fk_cod_uf foreign key (fk_cod_uf) references enem2020.uf(cod_uf);
	
alter table enem2020.escolas 
	add constraint fk_cod_mun foreign key (fk_cod_mun) references enem2020.regiao(cod_mun)
	
	
alter table enem2020.regiao 
	drop column uf;

alter table enem2020.regiao 
	drop column nome_uf;
