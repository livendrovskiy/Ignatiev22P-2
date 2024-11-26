#1. Построить таблицу с номерами изделий и городов, где они изготавливаются, такие, что второй буквой названия города является "О"
SELECT number_product, city FROM product WHERE city LIKE '_О%';

#2. Увеличить на 10 рейтинг тех поставщиков, объем поставки которых выше среднего
UPDATE providers
SET rating = rating + 10
WHERE number_provider IN (
    SELECT number_provider
    FROM delivery
    GROUP BY number_provider
    HAVING SUM(count) > (
        SELECT AVG(total_count)
        FROM (
            SELECT SUM(count) AS total_count
            FROM delivery
            GROUP BY number_provider
        ) AS avg_count
    )
);

#3. Построить таблицу с упорядоченным списком номеров и фамилиями поставщиков, поставляющих детали для изделия с номером J1
SELECT DISTINCT p.number_provider, p.surname FROM providers p JOIN delivery d ON p.number_provider = d.number_provider WHERE d.number_product = 'J1'
ORDER BY p.number_provider;

#4. Выдать список всех поставок, в которых количество деталей находится в диапазоне от 300 до 750 включительно
SELECT * FROM delivery WHERE count BETWEEN 300 AND 750;

#5. Получить номера изделий, использующих по крайней мере одну деталь, поставляемую поставщиком S6
SELECT DISTINCT number_product FROM delivery WHERE number_provider = 'S6';

#6. Выдать цвета деталей, поставляемых поставщиком S6
SELECT DISTINCT d.color FROM detalies d JOIN delivery del ON d.number_detali = del.number_detali WHERE del.number_provider = 'S6';

#7. Получить номера и фамилии поставщиков, поставляющих деталь Р1 для какого-либо изделия в количестве
# большем среднего объема поставок детали Р1 для этого изделия
SELECT p.number_provider, p.surname FROM providers p JOIN delivery d ON p.number_provider = d.number_provider WHERE d.number_detali = 'P1'
AND d.count > (
    SELECT AVG(count)
    FROM delivery
    WHERE number_detali = 'P1'
    AND number_product = d.number_product
);

#8. Выдать названия изделий, для которых поставляются детали поставщиком S6
SELECT DISTINCT pr.name FROM product pr JOIN delivery d ON pr.number_product = d.number_product WHERE d.number_provider = 'S6';

#9. Получить номера и названия изделий, для которых поставщик S6 поставляет несколько деталей каждого из поставляемых им типов
SELECT p.number_product, p.name FROM product p JOIN delivery d ON p.number_product = d.number_product WHERE d.number_provider = 'S6'
GROUP BY p.number_product, p.name
HAVING COUNT(DISTINCT d.number_detali) = (
    SELECT COUNT(DISTINCT number_detali)
    FROM delivery
    WHERE number_provider = 'S6'
);

#10. Для каждой поставляемой для некоторого изделия детали выдать ее номер, номер изделия и соответствующее общее количество деталей
SELECT number_detali, number_product, SUM(count) AS total_count FROM delivery GROUP BY number_detali, number_product;

#11. Получить номера изделий, для которых детали полностью поставляет поставщик S6
SELECT DISTINCT d.number_product FROM delivery d
WHERE NOT EXISTS (
    SELECT 1
    FROM delivery d2
    WHERE d2.number_product = d.number_product
    AND d2.number_provider <> 'S6'
);

#12. Выдать номера и фамилии поставщиков, поставляющих детали 
# для какого-либо изделия с деталью P1 в количестве, большем, чем средний объем поставок детали P1 для этого изделия
SELECT p.number_provider, p.surname FROM providers p JOIN delivery d ON p.number_provider = d.number_provider WHERE d.number_detali = 'P1'
AND d.count > (
    SELECT AVG(count)
    FROM delivery
    WHERE number_detali = 'P1'
    AND number_product = d.number_product
);