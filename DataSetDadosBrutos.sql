/*
Pesquisa SIA
Município de São Paulo
Ano de 2023

1 - Base de dados Bruta - 02.01.01.041-0 - BIÓPSIA DE PRÓSTATA
1182 registros
*/

SELECT
    *
FROM
    sia.tb_pa pa
WHERE
    pa.co_pa_proc_id in ('0201010410','0203020030')
    AND pa.co_pa_mvm BETWEEN '202301' AND '202312'
    AND pa.co_pa_ufmun = '355030';
    
/* 
2 - Base de dados Bruta - 02.03.02.003-0 - EXAME ANATOMO-PATOLÓGICO PARA CONGELAMENTO / PARAFINA POR PEÇA CIRURGICA OU POR BIOPSIA (EXCETO COLO UTERINO E MAMA)
78044 registros
*/   

SELECT
    *
FROM
    sia.tb_pa pa
WHERE
    pa.co_pa_proc_id = '0203020030'
    AND pa.co_pa_mvm BETWEEN '202301' AND '202312'
    AND pa.co_pa_ufmun = '355030';
    
    
/**
05/11/24 - Aumentando o rol de procedimentos
*/    


SELECT
    *
FROM
    sia.tb_pa pa
WHERE
    pa.co_pa_proc_id IN (
        SELECT
            co_procedimento
        FROM
            tup.vw_procedimento
        WHERE
            no_procedimento LIKE '%BIOPSIA%'
            AND dt_vigencia_termino IS NULL
    )
    AND pa.co_pa_mvm BETWEEN '202301' AND '202312'
    AND pa.co_pa_ufmun = '355030';

    
    
    
    
    
    
    
    
    
    
    
    
    
select co_pa_docorig, co_pa_autoriz 
from sia.tb_pa pa where CO_PA_CMP = '202407'
group by co_pa_docorig, co_pa_autoriz;

select co_pa_docorig
from sia.tb_pa pa where CO_PA_CMP = '202407'
group by co_pa_docorig;

SELECT * FROM sia.TB_PA where CO_PA_CMP = 202407 AND CO_PA_DOCORIG IN ('P','S');

SELECT co_pa_autoriz 
FROM sia.TB_PA 
where CO_PA_CMP = 202407 AND 
CO_PA_DOCORIG IN ('P','S')
group by co_pa_autoriz;


SELECT
    *
FROM
    sia.tb_pa pa;
    
    
SELECT co_pa_docorig, case co_pa_cnspac
FROM sia.TB_PA 
where CO_PA_CMP = 202407 
--AND CO_PA_DOCORIG IN ('P','S')
group by co_pa_docorig, co_pa_cnspac;


