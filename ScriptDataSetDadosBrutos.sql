/*Base de dados Bruta - 	02.01.01.041-0 - BIÓPSIA DE PRÓSTATA*/

SELECT
    *
FROM
    sia.tb_pa pa
WHERE
    pa.co_pa_proc_id = '0201010410'
    AND pa.co_pa_mvm BETWEEN '202301' AND '202312'
    AND pa.co_pa_ufmun = '355030';