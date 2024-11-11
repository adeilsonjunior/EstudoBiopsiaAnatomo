select * from tup.vw_soa_procedimento;

select count(*) from tup.vw_soa_procedimento; --48221

select * from tup.vw_soa_procedimento where dt_vigencia_termino= is null;

select * from tup.vw_soa_procedimento order by dt_vigencia_termino desc;

select * from tup.vw_soa_procedimento where no_procedimento like '%BIOPSIA%';

select * from tup.vw_procedimento;

select dt_vigencia_inicio, dt_vigencia_termino 
from tup.vw_procedimento
group by dt_vigencia_inicio, dt_vigencia_termino 
order by dt_vigencia_inicio, dt_vigencia_termino desc;

select count(*) from tup.vw_procedimento where dt_vigencia_termino is null;

select * from tup.vw_procedimento where no_procedimento like '%BIÓPSIA%' || '%BIOPSIA%' and dt_vigencia_termino is null;

select co_procedimento 
from tup.vw_procedimento 
where no_procedimento like '%BIOPSIA%' and dt_vigencia_termino is null;


SELECT * 
FROM tup.vw_procedimento 
WHERE 
    (no_procedimento LIKE '%BIOPSIA%' OR no_procedimento LIKE '%BIÓPSIA%')
    AND dt_vigencia_termino IS NULL order by co_procedimento;
    
SELECT count(*) 
FROM tup.vw_procedimento 
WHERE 
    REGEXP_LIKE(no_procedimento, 'BIOPSIA|BIÓPSIA', 'i') 
    AND dt_vigencia_termino IS NULL;
    
