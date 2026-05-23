UPDATE darts
SET score = 
    CASE 
        -- Fora do alvo (raio > 10)
        WHEN sqrt(x*x + y*y) > 10 THEN 0
        
        -- Círculo externo (raio entre 5 e 10)
        WHEN sqrt(x*x + y*y) > 5 THEN 1
        
        -- Círculo médio (raio entre 1 e 5)
        WHEN sqrt(x*x + y*y) > 1 THEN 5
        
        -- Círculo interno (raio ≤ 1)
        ELSE 10
    END;