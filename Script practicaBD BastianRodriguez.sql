SELECT
    carrera,
    COUNT(*)                AS cantidad_estudiantes,
    ROUND(AVG(promedio), 2) AS promedio_general,
    ROUND(AVG(edad), 1)     AS edad_promedio
FROM estudiantes
GROUP BY carrera
HAVING COUNT(*) > 2;