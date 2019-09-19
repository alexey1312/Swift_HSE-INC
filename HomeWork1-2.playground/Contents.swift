import Foundation

//// Циклы
///*
// 7. Написать функцию для сокращения обыкновенной дроби. Дробь передается в виде числителя и знаменателя двумя отдельными целочисленными параметрами. Как вспомогательную функцию определить и использовать метод для вычисления наибольшего общего делителя двух целых чисел.
// */
//
////Вычисляем наибольший общий делитель
//func gcd(_ a: Int, _ b: Int) -> Int {
//
//    return b == 0 ? a : gcd( b, a % b );
//}
//
//func fractReduction(a: Int, b: Int) {
//
//    var x = a
//    var y = b
//    let NOD = gcd(x, y)
//
//    x = a/NOD
//    y = b/NOD
//
//    switch y {
//    case _ where (y > 1) : print("Исходная дробь вида \(a)/\(b) приняла вид после упрощения: \(x)/\(y)")
//    case _ where (y == 1) : print("Исходная дробь вида \(a)/\(b) приняла вид целого числа после упрощения: \(x)")
//    default:
//        return
//    }
//}
//
//// Проверка работы задания 7
//fractReduction(a: 2, b: 20)

/*
 8. Написать функцию,которая находит и распечатывает все натуральные трехзначные числа, равные сумме кубов своих цифр.
 */
//
//func cubeSumSearch() {
//    for i in 100...999 {
//        let firstNum = i / 100
//        let secondNum = (i / 10 - firstNum * 10)
//        let thirdNum = (i - (firstNum * 100 + secondNum * 10))
//
//        let powNum = Int(pow(Double(firstNum), 3) + pow(Double(secondNum), 3) + pow(Double(thirdNum), 3))
//
//        if powNum == i {
//            print("Число, равно сумме кубов своих цифр = \(i)")
//        }
//    }
//}
//
//cubeSumSearch()

/*
 9. Написать функцию, принимающую натуральные числа n и k. Задача функции: определить k-ю справа цифру числа n.
 */

//func findNumberFromRight(n: Int, k: Int) {
//
//    var ost = 0
//    var x = n
//    var y = k
//
//    while y > 0 {
//        ost = x % 10
//        x /= 10
//        y -= 1
//    }
//
//    print("\(k)-ая цифра справа равна \(ost)")
//}
//
//findNumberFromRight(n: 989, k: 1)

/*
 10. Написать функцию, вычисляющую k-ое число Фибоначчи.
 */
//
//func fibo(a: Int) -> Int{
//    var fb = 0
//    if a == 0 {
//        fb = 0
//    } else if (a > 0 && a <= 2) {
//        fb = 1
//    } else {
//        fb = (fibo(a: a - 1) + fibo(a: a - 2))
//    }
//    return fb
//}
//
//fibo(a: 3)


