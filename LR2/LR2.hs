-- Лабораторна робота №2
-- студента групи АнД-31 
-- Горелик Андрій. Варіант №1

-- Набути досвіду визначення рекурсивних функцій, використання механізму зіставлення зі зразком і роботи з кортежами та списками

-- Завдання 1. Знайти останній елемент списку
ost :: [a] -> a
ost [ ] = error "list is empty"
ost [a] = a
ost (a:as) = ost as

-- Вхідні дані:
-- ghci> ost "wrge"
-- Вихідні дані:
-- 'e'

-- Завдання 2. Видалити зі списку елементи з і-го по к-й включно, напр. при і=2 та к=4
-- "asdfghj" => "aghj" (трохи скоригував, та залишив в кінці індекси)



after:: Int -> [a] -> [a]
after _ [] = []
after 0 xs = xs
after n (_:xs) = after(n-1) xs

before :: Int -> [a] -> [a]
before n _ | n <= 0 = []
before _ [] = []
before n (x:xs)  =  x : before (n-1) xs

divide :: Int -> Int -> [a] -> [a]
divide from to xs = before (from - 1) xs ++ after to xs

-- Вхідні дані:
-- ghci> divide 2 4 "123456789"   
-- Вихідні дані:
-- "156789"

-- Висновок: Під час даної лабораторної роботи розглядали тему рекурсивні функції