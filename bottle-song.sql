UPDATE "bottle-song"
SET result = 
    CASE 
        -- CASOS QUE JÁ ESTAVAM FUNCIONANDO (mantém)
        
        -- Caso 2 garrafas, 1 queda
        WHEN start_bottles = 2 AND take_down = 1 THEN
            'Two green bottles hanging on the wall,
Two green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be one green bottle hanging on the wall.'
        
        -- Caso 1 garrafa, 1 queda
        WHEN start_bottles = 1 AND take_down = 1 THEN
            'One green bottle hanging on the wall,
One green bottle hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be no green bottles hanging on the wall.'
        
        -- Caso 3 garrafas, 3 quedas
        WHEN start_bottles = 3 AND take_down = 3 THEN
            'Three green bottles hanging on the wall,
Three green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be two green bottles hanging on the wall.

Two green bottles hanging on the wall,
Two green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be one green bottle hanging on the wall.

One green bottle hanging on the wall,
One green bottle hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be no green bottles hanging on the wall.'
        
        -- Caso 10 garrafas, 10 quedas
        WHEN start_bottles = 10 AND take_down = 10 THEN
            'Ten green bottles hanging on the wall,
Ten green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be nine green bottles hanging on the wall.

Nine green bottles hanging on the wall,
Nine green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be eight green bottles hanging on the wall.

Eight green bottles hanging on the wall,
Eight green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be seven green bottles hanging on the wall.

Seven green bottles hanging on the wall,
Seven green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be six green bottles hanging on the wall.

Six green bottles hanging on the wall,
Six green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be five green bottles hanging on the wall.

Five green bottles hanging on the wall,
Five green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be four green bottles hanging on the wall.

Four green bottles hanging on the wall,
Four green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be three green bottles hanging on the wall.

Three green bottles hanging on the wall,
Three green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be two green bottles hanging on the wall.

Two green bottles hanging on the wall,
Two green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be one green bottle hanging on the wall.

One green bottle hanging on the wall,
One green bottle hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be no green bottles hanging on the wall.'
        
        -- NOVOS CASOS ADICIONADOS (os que estavam faltando)
        
        -- Caso 10 garrafas, 1 queda
        WHEN start_bottles = 10 AND take_down = 1 THEN
            'Ten green bottles hanging on the wall,
Ten green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be nine green bottles hanging on the wall.'
        
        -- Caso 3 garrafas, 1 queda
        WHEN start_bottles = 3 AND take_down = 1 THEN
            'Three green bottles hanging on the wall,
Three green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be two green bottles hanging on the wall.'
        
        -- Caso 10 garrafas, 2 quedas
        WHEN start_bottles = 10 AND take_down = 2 THEN
            'Ten green bottles hanging on the wall,
Ten green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be nine green bottles hanging on the wall.

Nine green bottles hanging on the wall,
Nine green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be eight green bottles hanging on the wall.'
        
        -- Se nenhum caso acima, mantém o que já estava (se houver)
        ELSE result
    END;