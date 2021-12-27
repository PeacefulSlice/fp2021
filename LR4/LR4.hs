-- Лабораторна робота №4
-- студента групи АнД-31 
-- Горелик Андрій. Варіант №1

-- Завдання 
-- Використовуються такi фiгури, як коло (центр та радiус), прямокутник (координати лiвої верхньої та правої нижньої точок), трикутник 
--(координати вершин) та мiтка — label (координати лiвої нижньої точки, шрифт та рядок).

data Circle = Circle Float Float Float
x :: Circle -> Float
x (Circle x1p _ _ ) = x1p
y :: Circle -> Float
y (Circle _ x2p _ ) = x2p
radius :: Circle -> Float
radius (Circle _ _ r ) = r

circleList :: [Circle]
circleList = [Circle 0 0 3,
              Circle 0 0 4,
              Circle 1 1 2]

squareCircle :: [Circle] -> [Float]
squareCircle [] = []
squareCircle (x : xs) = 3.1415 * radius x * radius x : squareCircle xs


data Rectangle = Rectangle Float Float Float Float
x1 :: Rectangle -> Float
x1 (Rectangle x1p _ _ _ ) = x1p
y1 :: Rectangle -> Float
y1 (Rectangle _ y1p _ _ ) = y1p
x2 :: Rectangle -> Float
x2 (Rectangle _ _ x2p _ ) = x2p
y2 :: Rectangle -> Float
y2 (Rectangle _ _ _ y2p ) = y2p

rectangleList :: [Rectangle]
rectangleList = [
    Rectangle 0 0 1 1,
    Rectangle 2 2 5 5,
    Rectangle 0 (-1) 1 0 ]

squareRectangle :: [Rectangle] -> [Float]
squareRectangle [] = []
squareRectangle (x : xs) = abs(x2 x - x1 x) * abs(y2 x - y1 x) : squareRectangle xs


data Triangle = Triangle Float Float Float
x_1 :: Triangle -> Float
x_1 (Triangle x1p _ _ ) = x1p
x_2 :: Triangle -> Float
x_2 (Triangle _ x2p _ ) = x2p
x_3 :: Triangle -> Float
x_3 (Triangle _ _ x3p ) = x3p

triangleList :: [Triangle]
triangleList = [Triangle 4 3 5,
            Triangle 11 7 12,
            Triangle 12 20 28]

squareTriangle :: [Triangle] -> [Float]
squareTriangle [] = []
squareTriangle (x : xs) = sqrt((x_1 x + x_2 x + x_3 x)*0.5*((x_1 x + x_2 x + x_3 x)*0.5 - x_1 x)*((x_1 x + x_2 x + x_3 x)*0.5 - x_2 x)*((x_1 x + x_2 x + x_3 x)*0.5 - x_3 x)) : squareTriangle xs


-- Вхідні дані:
-- ghci> squareCircle circleList 
-- Вихідні дані:
-- [28.273499,50.264,12.566]
-- Вхідні дані:
-- ghci> squareTriangle triangleList
-- Вихідні дані:
-- [6.0,37.94733,103.92305]
-- Вхідні дані:
-- ghci> squareRectangle rectangleList
-- Вихідні дані:
-- [1.0,9.0,1.0]

-- В ході виконання лабораторної роботи ознаймлено з класами
-- мови Haskell, також було створено клас, який ідентифікує фігури
-- та визначає їхні площі
-- Висновок: під час даної лабораторної ознайомився з класами
-- мови Haskell, також було створено клас, який ідентифікує фігури
-- та визначає їхні площі