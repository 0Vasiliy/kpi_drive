DELETE FROM indicator_to_mo_fact  
WHERE fact_time = '2024-09-10'    
AND indicator_to_mo_id IN (       
    SELECT indicator_to_mo_id     
    FROM indicator_to_mo         
    WHERE indicator_id = 273    
);