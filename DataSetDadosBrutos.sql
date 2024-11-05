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