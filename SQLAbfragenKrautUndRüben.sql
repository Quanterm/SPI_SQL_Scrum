
-- SQL Abfragen Kraut und Rüben !!!!!!!!!!!!!!!!!!!!!!!!!!!!



-- 1) Selection of a recipe by recipe name CHECK
SELECT recipeName AS Recipe
FROM Recipe
WHERE recipeName = 'Baked pumpkin';


-- 2) Selection of all recipes of a certain nutrition category CHECK
SELECT Recipe.recipeName AS Recipe, NutriPref.nutriPrefName AS NutriPref	
FROM Recipe
JOIN NutriPref ON Recipe.nutriPrefID = NutriPref.nutriPrefID
WHERE NutriPref.nutriPrefName = 'omnivore';

-- 3) Selection of all recipes that contain a certain ingredient CHECK
SELECT Recipe.recipeName AS Recipe
FROM Recipe 
INNER JOIN RecipeIngredient 
ON Recipe.recipeID=RecipeIngredient.recipeID 
INNER JOIN Ingredient 
ON RecipeIngredient.ingredientID = Ingredient.ingredientID
WHERE Ingredient.ingredientName = 'Potato';


-- 4) calculation of the average nutritional values of all orders of a customer CHECK
SELECT Customer.firstName AS 'Firstname', Customer.lastName AS 'Lastname', AVG(Ingredient.caloriesPer100g) AS 'Ø Calories', AVG(Ingredient.carbsPer100g) AS 'Ø Carbs', AVG(Ingredient.fatPer100g) AS 'Ø Fat', AVG(Ingredient.proteinPer100g) AS 'Ø Protein' 
FROM Customer
INNER JOIN Orders
ON Orders.customerID = Customer.customerID
INNER JOIN RecipeOrder
ON RecipeOrder.orderID = Orders.orderID
INNER JOIN Recipe
ON Recipe.recipeID = RecipeOrder.recipeID
INNER JOIN RecipeIngredient
ON RecipeIngredient.recipeID = Recipe.recipeID
INNER JOIN Ingredient
ON Ingredient.ingredientID = RecipeIngredient.ingredientID
WHERE Customer.firstName = 'Anya' AND Customer.lastName = 'Forger'
GROUP BY Customer.firstName, Customer.lastName;

-- 4b) calculation of the average nutritional values of all orders of ALL customer CHECK
SELECT Customer.firstName AS 'Firstname', Customer.lastName AS 'Lastname', AVG(Ingredient.caloriesPer100g) AS 'Ø Calories', AVG(Ingredient.carbsPer100g) AS 'Ø Carbs', AVG(Ingredient.fatPer100g) AS 'Ø Fat', AVG(Ingredient.proteinPer100g) AS 'Ø Protein' 
FROM Customer
INNER JOIN Orders
ON Orders.customerID = Customer.customerID
INNER JOIN RecipeOrder
ON RecipeOrder.orderID = Orders.orderID
INNER JOIN Recipe
ON Recipe.recipeID = RecipeOrder.recipeID
INNER JOIN RecipeIngredient
ON RecipeIngredient.recipeID = Recipe.recipeID
INNER JOIN Ingredient
ON Ingredient.ingredientID = RecipeIngredient.ingredientID
GROUP BY Customer.firstName, Customer.lastName;



-- 5a) Selection of all ingredients that are not yet assigned to a recipe CHECK
SELECT Ingredient.ingredientName AS Ingredient
FROM Ingredient
LEFT JOIN RecipeIngredient ON Ingredient.ingredientID = RecipeIngredient.ingredientID
WHERE recipeID is null;

-- 5b) Selection of all ingredients that are not yet assigned to a recipe CHECK
SELECT Ingredient.ingredientName AS Ingredient
FROM RecipeIngredient
RIGHT JOIN Ingredient ON RecipeIngredient.ingredientID = Ingredient.ingredientID 
WHERE recipeID is null;


-- 6) Selection of all recipes that do not exceed a certain amount of calories CHECK
SELECT Recipe.recipeName, SUM(Ingredient.caloriesPer100g * RecipeIngredient.quantity) / 100) as calories 
FROM Recipe
JOIN RecipeIngredient
ON RecipeIngredient.recipeID = Recipe.recipeID
JOIN Ingredient
ON Ingredient.ingredientID = RecipeIngredient.ingredientID
where (select (Ingredient.caloriesPer100g * RecipeIngredient.quantity)) / 100 < 100
group by recipeName;
-- 6b) Selection of all recipes with all calories (to proof check 6)
SELECT Recipe.recipeName, SUM(Ingredient.caloriesPer100g * RecipeIngredient.quantity) as calories 
FROM Recipe
JOIN RecipeIngredient
ON RecipeIngredient.recipeID = Recipe.recipeID
JOIN Ingredient
ON Ingredient.ingredientID = RecipeIngredient.ingredientID
where (select (Ingredient.caloriesPer100g * RecipeIngredient.quantity))
group by recipeName;

-- 7) Selection of all recipes that contain less than five ingredients CHECK
SELECT Recipe.recipeName AS name
FROM Recipe
JOIN RecipeIngredient 
ON RecipeIngredient.recipeID = Recipe.recipeID
JOIN Ingredient 
ON Ingredient.ingredientID = RecipeIngredient.ingredientID
GROUP BY Recipe.recipeName
HAVING Count(Ingredient.ingredientName) < 5;


-- 8) Selection of all recipes that contain fewer than five ingredients and meet a specific nutrition category CHECK
SELECT Recipe.recipeName
FROM Recipe
JOIN RecipeIngredient 
ON RecipeIngredient.recipeID = Recipe.recipeID
JOIN Ingredient 
ON Ingredient.ingredientID = RecipeIngredient.ingredientID
WHERE Recipe.nutriPrefID = 3
GROUP BY Recipe.recipeName
HAVING Count(Ingredient.ingredientName) < 5;


--9 show menu CHECK
SELECT recipeName AS 'Name', Recipe.totalPrice AS 'Total Price', NutriPref.nutriPrefName AS ' '
FROM Recipe
JOIN NutriPref 
ON NutriPref.nutriPrefID = Recipe.nutriPrefID;


--10 All "regular" customers, customers with more than 1 order. 

SELECT A.customerID
FROM Customer A
JOIN Orders AB ON (A.customerID = AB.customerID)
GROUP BY (A.customerID)
HAVING COUNT(AB.customerID) > 1;


--11 cheap recipes, for customers who want to eat on a budget

SELECT recipeName from Recipe WHERE totalPrice <= 5;

-- 12 All "popular" recipes that are bought at least 2 times

SELECT A.recipeName
FROM Recipe A
JOIN RecipeOrder AB ON (A.recipeID = AB.recipeID)
GROUP BY (A.recipeName)
HAVING COUNT(AB.recipeID) > 2;