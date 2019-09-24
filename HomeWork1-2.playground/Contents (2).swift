import UIKit

// Общие
/*
 7. Написать функцию для сокращения обыкновенной дроби. Дробь передается в виде числителя и знаменателя двумя отдельными целочисленными параметрами. Как вспомогательную функцию определить и использовать метод для вычисления наибольшего общего делителя двух целых чисел.
 */

func searchNOD(A: Int, B: Int) -> Int {
    
    var NOD = 0;
    var x = A;
    var y = B
    
    while x != y {
        if x > y {
            x = x - y
        } else {
            y = y - x
        }
    }
    
    NOD = x
    return NOD
}

func fractReduction(A: Int, B: Int) {
    
    var x = A
    var y = B
    let NOD = searchNOD(A: A, B: B)
    x = A/NOD
    y = B/NOD
    
    switch y {
    case _ where (y > 1) : print("Исходная дробь вида \(A)/\(B) приняла вид после упрощения: \(x)/\(y)")
    case _ where (y == 1) : print("Исходная дробь вида \(A)/\(B) приняла вид целого числа после упрощения: \(x)")
    default:
        return
    }
}

// Проверка работы задания 7
fractReduction(A: 1000, B: 25)
