1. Gere uma tabela com o id do cliente, a cidade e o 
estado onde ele vive.


SELECT 
	c.customer_id,
	c.customer_city,
	c.customer_state 
FROM customer c 




 2. Gere uma tabela com o id do cliente e a cidade, 
somente dos clientes que vivem em Santa Catarina.

SELECT 
	c.customer_id,
	c.customer_city,
	c.customer_state 
FROM customer c
WHERE c.customer_state = "SC"



3. Gere uma tabela com o id do cliente e o estado, 
somente dos clientes que vivem em Florianópolis.

SELECT 
	clie.customer_id,
	clie.customer_city,
	clie.customer_state 
FROM customer clie
WHERE clie.customer_city = "florianopolis"



4. Gere uma tabela com o estado, latitude e longitude 
do estado de Sã Paulo

SELECT 
	g.geolocation_state,
	g.geolocation_lat,
	g.geolocation_lng 
FROM geolocation g 
WHERE g.geolocation_state = "SP"



# 5. Gere uma tabela com o id do produto, a data limite 
de envio e o preço, somente para produtos acima de 
6300

SELECT oi.product_id , oi.shipping_limit_date, oi.price 
FROM order_items oi 
WHERE oi.price > "3000"



6. Gere uma tabela com o id do pedido, o tipo de 
pagamento e o número de parcelas, somente para 
produtos com parcelas menores que 1.

SELECT op.order_id , op.payment_type , op.payment_installments 
FROM order_payments op  
WHERE op.payment_installments < 1
 


7. Gere uma tabela com o id do pedido, id do cliente, o 
status do pedido e a data de aprovação , somente para 
compras aprovadas até dia 05 de Outubro de 2016

SELECT o.order_id , o.customer_id , o.order_status, o.order_approved_at 
FROM orders o 
WHERE o.order_approved_at < "2016-10-06"
ORDER BY o.order_approved_at DESC;




Qual o número de clientes únicos de todos os estados?

SELECT c.customer_state, COUNT(DISTINCT c.customer_id)  
FROM customer c 
GROUP BY c.customer_state 




#Qual a quantidade de pedidos, a média do valor do pagamento e o número máximo de 
parcelas por tipo de pagamentos?


SELECT op.payment_type, COUNT(op.order_id), AVG(op.payment_value), MAX(op.payment_installments) 
FROM order_payments op 
GROUP BY op.payment_type 



Quantos produtos estão cadastrados na empresa por categoria?



SELECT p.product_category_name, 
COUNT(DISTINCT p.product_id) 
FROM  products p 
GROUP BY p.product_category_name 



1. Gerar uma tabela de dados com 10 linhas, contendo
o id do pedido, o id do cliente, o status do pedido, o id do
produto e o preço do produto.

SELECT 
o.order_id, 
o.customer_id, 
o.order_status ,
oi.product_id ,
oi.price 
FROM orders o INNER JOIN order_items oi ON (o.order_id = oi.order_id)
LIMIT 10;




fazendo um teste para ver se comitar em git hub está dando certo. 26/07/2025


2. Qual a quantidade de cidades únicas dos 
vendedores do estado de Santa Catarina?

SELECT COUNT(DISTINCT s.seller_city) 
FROM sellers s 
WHERE seller_state = 'SC'


 3. Qual a quantidade de cidades únicas de todos os 
vendedores da base?

SELECT COUNT(DISTINCT s.seller_city) 
FROM sellers s

4. Qual o número total de pedidos únicos acima de R$ 
3.500

SELECT COUNT( op.payment_value) 
FROM order_payments op 
WHERE op.payment_value > "3500"


SELECT COUNT(oi.price) 
FROM order_items oi  
WHERE oi.price > "3500"


 5. Qual o valor médio do preço de todos os pedidos?


SELECT AVG(price) 
FROM order_items oi



 6. Qual o maior valor de preço entre todos os pedidos?
 
 SELECT MAX(price) 
 FROM order_items oi 


7. Qual o menor valor de preço entre todos os pedidos?

 SELECT MIN(price) 
 FROM order_items oi 

 8. Qual a quantidade de produtos distintos vendidos 
abaixo do preço de R$ 100.00?

SELECT COUNT(DISTINCT product_id) 
FROM order_items oi 
WHERE price < "100"

9. Qual a quantidade de vendedores distintos que 
receberam algum pedido antes do dia 23 de setembro de 
2016?

SELECT COUNT(DISTINCT seller_id) 
FROM order_items oi 
WHERE shipping_limit_date < '2016-09-23'



SELECT shipping_limit_date 
FROM order_items oi 


10. Quais os tipos de pagamentos existentes?

SELECT DISTINCT payment_type 
FROM order_payments op 

 11. Qual o maior número de parcelas realizado?
 
 SELECT MAX(payment_installments) 
 FROM order_payments op 
 
 12. Qual o menor número de parcelas realizado?
 
 SELECT MIN(payment_installments) 
 FROM order_payments op


  13. Qual a média do valor pago EM cartão de crédito?
  
  SELECT AVG (payment_value)
  FROM order_payments op 
  WHERE payment_type = "credit_card"
  
  14. Quantos tipos de status para um pedido existem?
  
  SELECT COUNT (DISTINCT o.order_status) 
  FROM orders o 
  
  
   15. Quais os tipos de status para um pedido?
   
   SELECT DISTINCT o.order_status 
   FROM orders o 
  
  




















