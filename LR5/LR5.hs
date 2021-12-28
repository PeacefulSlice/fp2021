-- Лабораторна робота №5
-- студента групи АнД-31 
-- Горелик Андрій. Варіант №1

-- Завдання
--  Реалiзувати та скомпiлювати одну з програм, розроблених у
--  лабораторнiй роботi No 3 для Вашого варiанта з введенням даних: 
-- 1) з клавiатури, 
-- 2) з файлу та виведенням результатiв,
-- 3) на екран, 
-- 4) у файл.
-- Функції узяті з ЛР3:
-- Перемішування списку з n елементів: після першого розмістити останній,
-- після другого передостанній тощо. 
-- :load ../lr3/lr3.hs
-- import "../lr3/lr3.hs"
-- import qualified Prelude as P
module LR5 where
import Lab3 as L
-- mix_without :: [a] -> [a]
-- mix_without [] = []
-- mix_without [x] = [x]
-- mix_without (x:xs) = [x] ++ mix_without(Prelude.reverse xs)

-- 1) з клавiатури, 
inConsoletoConsole :: IO()
inConsoletoConsole=do
    putStrLn "Input:"
    str<-getLine
    putStrLn(L.mixWithout str)


-- ghci> inConsoletoConsole
-- Input:
-- 1234567890
-- Output:
-- 1029384756

-- 2) з файлу та виведенням результатiв,
inFiletoConsole :: IO()
inFiletoConsole=do
    str<-readFile "input.txt"
    putStrLn(L.mixWithout str)

-- ghci> inFiletoConsole
-- 0918273645

-- 3) на екран,
inConsoletoFile :: IO()
inConsoletoFile=do
    putStrLn "Input:"
    str<-getLine
    writeFile "output.txt" (L.mixWithout str)

-- ghci> inConsoletoFile
-- Input:
-- 0123456789
-- File: 192837465

-- 4) у файл.
inFiletoFile :: IO()
inFiletoFile=do
    str<-readFile "input.txt"
    writeFile "output.txt" (L.mixWithout str)

-- It works look at the file

-- Висновок:
--  Ознайомились з модульною органiзацiєю програм та засобами введення-виведення.
