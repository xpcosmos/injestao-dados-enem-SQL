-- Criação de tabela de Unidade Federativa (UF)

CREATE TABLE IF NOT EXISTS enem2020.UF(
    COD_UF INT NOT NULL PRIMARY KEY,
    SIGLA_UF VARCHAR(2)
);

CREATE TABLE IF NOT EXISTS enem2020.MUNICIPIO(
    COD_MUN INT NOT NULL PRIMARY KEY,
    NOME_MUNICIPIO VARCHAR(150)
);

--  Criação da tabela escolas

CREATE TABLE IF NOT EXISTS enem2020.ESCOLAS(
    ID_ESCOLA INT NOT NULL PRIMARY KEY,
    FK_COD_MUN INT NOT NULL,
    FK_COD_UF INT NOT NULL,
    DEPENDENCIA_ADM INT NOT NULL,
    TIPO_LOC_ESCOLA INT NOT NULL,
    SITUACAO_ESCOLA INT NOT NULL
);

-- Criação da tabela participante

-- (,,,,,'',1,3,2,1,0,0)
CREATE TABLE IF NOT EXISTS enem2020.PARTICIPANTE(
    PK_ID_PARTICIPANTE INT NOT NULL PRIMARY KEY,
    FK_ID_ESCOLA_ENSINO_MEDIO INT, 
    FK_COD_UF_PARTICIPANTE INT, 
    FK_COD_MUN_PARTICIPANTE INT, 
    FAIXA_ETARIA INT, 
    SEXO CHAR(1), 
    ESTADO_CIVIL INT,
    RACA_COR INT, 
    NACIONALIDADE INT, 
    CONCLUSAO_ENSINO_MEDIO INT, 
    ANO_CONCLUSAO_ENSINO_MEDIO INT, 
    TREINEIRO INT 
);


-- CRIAÇÃO DA TABELAS DE PROVAS


CREATE TABLE IF NOT EXISTS enem2020.PROVAS(
    FK_ID_PARTICIPANTE INT NOT NULL,
    FK_COD_ESCOLA_APLICACAO INT NOT NULL,
    ANO_ENEM INT NOT NULL,
    PRESENCA_CIENCIA_NATURAL INT NOT NULL,
    PRESENCA_CIENCIA_HUMANAS INT NOT NULL,
    PRESENCA_LINGUAGENS INT NOT NULL,
    PRESENCA_MATEMATICA INT NOT NULL,
    COD_CIENCIA_NATURAL INT NOT NULL,
    COD_CIENCIA_HUMANAS INT NOT NULL,
    COD_LINGUAGENS INT NOT NULL,
    COD_MATEMATICA INT NOT NULL,
    NOTA_CIENCIA_NATURAL INT, 
    NOTA_CIENCIA_HUMANAS INT, 
    NOTA_LINGUAGENS INT, 
    NOTA_MATEMATICA INT, 
    STATUS_REDACAO INT,
    REDACAO_COMP1 INT,
    REDACAO_COMP2 INT,
    REDACAO_COMP3 INT, 
    REDACAO_COMP4 INT,
    REDACAO_COMP5 INT, 
    LINGUAGEM_ESCOLHIDA INT, 
    TREINEIRO INT
);

-- DADOS SOCIOECONÔMICOS DOS PARTICIPANTES

CREATE TABLE IF NOT EXISTS enem2020.SOCIOECONOMICOS(
    FK_ID_PARTICIPANTE INT NOT NULL,
    Q1 VARCHAR(2),
    Q2 VARCHAR(2),
    Q3 VARCHAR(2),
    Q4 VARCHAR(2),
    Q5 VARCHAR(2),
    Q6 VARCHAR(2),
    Q7 VARCHAR(2),
    Q8 VARCHAR(2),
    Q9 VARCHAR(2),
    Q10 VARCHAR(2),
    Q11 VARCHAR(2),
    Q12 VARCHAR(2),
    Q13 VARCHAR(2),
    Q14 VARCHAR(2),
    Q15 VARCHAR(2),
    Q16 VARCHAR(2),
    Q17 VARCHAR(2),
    Q18 VARCHAR(2),
    Q19 VARCHAR(2),
    Q20 VARCHAR(2),
    Q21 VARCHAR(2),
    Q22 VARCHAR(2),
    Q23 VARCHAR(2),
    Q24 VARCHAR(2),
    Q25 VARCHAR(2)
);