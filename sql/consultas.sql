-- Projeto 6: Noções Básicas de Banco de Dados
-- Banco de dados: chicago_taxi

-- Tarefa 1: contar veículos distintos
SELECT COUNT(DISTINCT vehicle_id)
FROM cabs;

-- Resultado: 5500 veículos distintos.


-- Tarefa 2: empresas com menos de 100 veículos
SELECT company_name, COUNT(vehicle_id) AS cnt
FROM cabs
GROUP BY company_name
HAVING COUNT(vehicle_id) < 100
ORDER BY cnt DESC;


-- Tarefa 3: classificar as condições climáticas em 05/11/2017
SELECT
    ts,
    CASE
        WHEN description ILIKE '%rain%'
          OR description ILIKE '%storm%'
        THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions
FROM weather_records
WHERE ts >= '2017-11-05 00:00:00'
  AND ts < '2017-11-06 00:00:00'
ORDER BY ts;


-- Tarefa 4: quantidade de viagens por empresa em 15 e 16/11/2017
SELECT
    c.company_name,
    COUNT(t.trip_id) AS trips_amount
FROM cabs AS c
INNER JOIN trips AS t
    ON c.cab_id = t.cab_id
WHERE t.start_ts >= '2017-11-15'
  AND t.start_ts < '2017-11-17'
GROUP BY c.company_name
ORDER BY trips_amount DESC;