


SELECT co_procedimento
FROM tup.vw_procedimento 
WHERE 
    (no_procedimento LIKE '%BIOPSIA%' OR no_procedimento LIKE '%BIÓPSIA%')
    AND dt_vigencia_termino IS NULL order by co_procedimento;
    
    
    
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
            ( no_procedimento LIKE '%BIOPSIA%'
              OR no_procedimento LIKE '%BIÓPSIA%' )
            AND dt_vigencia_termino IS NULL        
    )
    AND pa.co_pa_mvm BETWEEN '202301' AND '202312'
    AND pa.co_pa_ufmun = '355030';