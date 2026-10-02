SELECT city, COUNT(type) FROM schools a
WHERE type = 'Public School'
    AND (SELECT COUNT(*) FROM schools b
             WHERE b.type = 'Public School' AND a.city = b.city) <= 3
GROUP BY city
ORDER BY COUNT(type) DESC, city 