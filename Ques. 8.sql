-- Join relevent tables to find the category-wise distribution of pizzas.

select Category, count(category) as Count  from pizza_types
group by category;