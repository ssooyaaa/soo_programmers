-- 코드를 입력하세요
SELECT A.PRODUCT_ID, A.PRODUCT_NAME, A.PRICE*B.AMOUNT AS TOTAL_SALES
FROM FOOD_PRODUCT AS A
JOIN (SELECT PRODUCT_ID,SUM(AMOUNT) AS AMOUNT
     FROM FOOD_ORDER
     WHERE MONTH(PRODUCE_DATE)=05 AND YEAR(PRODUCE_DATE)=2022
     GROUP BY PRODUCT_ID) 
AS B
ON A.PRODUCT_ID = B.PRODUCT_ID
ORDER BY TOTAL_SALES DESC, A.PRODUCT_ID