import UIKit

// Общие
/*
 1. Написать функцию,которая выводит на экран все натуральные числа из диапазона от А до В в записи которых цифра 7 встречается N раз. При отсутствии чисел с указанными свойствами выдать на экран сообщение "Требуемых чисел нет". Границы диапазона А и В и значение N задаются как параметр функции. Объекты типа String можно рассматривать и как массивы символов.
 */
//Вариант 1
func integerValues(A: Int, B: Int, N: Int) {
    var array = [Int]()
    guard A > 0, B > 0, N > 0 else {
        return
    }
    for integer in A...B {
        var count: Int = 0
        var num: Int = integer
        while num > 0 {
            if num % 10 == 7 {
                count += 1
            }
            num = num / 10
        }
        
        if count == N {
            array.append(integer)
            print(integer)
        }
    }
    if array.count == 0 {
        print("Пусто")
    }
}

integerValues(A: 1, B: 50, N: 1)

//Вариант 2
func natural(a: Int, b: Int, n: Int) {
    
    guard a >= 0, b >= 0, n >= 0 else { return }
    
    let result = (a...b).filter { "\($0)".range(of: "(.*7{1}.*){\(n)}", options: .regularExpression) != nil }
    
    result.isEmpty ? print("Пусто") : print(result)
    //    result.isEmpty ? print("Пусто") : result.forEach({print($0)}) или так
}

natural(a: 1, b:50, n: 1)

/*
 2. Написатьфункцию,принимающуюнатуральноетрехзначноечисло. Вычислить и вывести на экран число, полученное путем "переворота" (123 => 321). Не использовать методы для работы со строками.
 */
//Вариант 1
func revereseSTR(A: Int) {
    guard A >= 100, A <= 999  else {
        print("Число не трехзначное")
        return
    }
    
    var old: Int = A
    var new: Int = 0
    for index in 1...3 {
        let powResult = NSDecimalNumber(decimal: pow(10, 3-index))
        new = new + (old % 10 * Int(truncating: powResult))
        old = old/10
    }
    print(new)
}

revereseSTR(A: 623)

//Вариант 2
func revereseINT(num: Int) {
    guard num >= 100, num <= 999  else {
        print("Число не трехзначное")
        return
    }
    let thirdNum = num % 10
    let secondNum = (num % 100 - thirdNum) / 10
    let firstNum = num / 100
    print("\(thirdNum * 100 + secondNum * 10 + firstNum)")
}

revereseINT(num: 623)

//Вариант 3
class Solution {
    func reverse(_ x: Int) -> Int {
        var x = x
        var reversedX = 0
        while x != 0 {
            reversedX = reversedX * 10 + x % 10
            x /= 10
            if (reversedX < 0 && x != 0 && Int(Int32.min) / 10 > reversedX ) { return 0 }
            if (reversedX > 0 && x != 0 && Int(Int32.max) / 10 < reversedX ) { return 0 }
        }
        return reversedX
    }
}
print(Solution().reverse(623))

/* 3. Написать функцию,которая принимает четырехзначное десятичное число, формирует и выводит на экран признак "счастливого числа" (сумма первых двух цифр равне сумме последних двух). Не использовать методы для работы со строками.
 */

func luckyNumber(a: Double) {
    let toInt: Int = Int(Double(a) * 100)
    guard toInt >= 1000, toInt <= 9999 else {
        print("Неверный формат")
        return
    }
    
    var left: Int = 0
    var right: Int = 0
    left = toInt / 1000 + (toInt / 100 - (toInt / 1000) * 10)
    right = (toInt % 100) / 10 + toInt % 10
    left == right ? print("Билет счастливый") : print("Билет несчастливый")
}

luckyNumber(a: 22.42)

/* 4. Реализовать метод вычисления факториала.
 */
func factorial(a: Int) {
    
    guard a > 0 else {
        print("Значение А не является положительным")
        return
    }
    
    var result: Int = 1
    
    for i in 1 ..< (a + 1) {
        
        result *= i
        
        print(NSString(format:"%0i  %6i", i, result))
    }
}

factorial(a: 3)

//
/* 5. Вычислить значение функции Y=F(X),заданной графиком 
 |0.5 при X <= -0.5 
 | X+1 при -0.5 < X <= 0 Y = < 
 | X * X-1 при 0 < X <= 1 
 |X-1 при X>1 
 Повышенный уровень: написать с использованием конструкции switch
 */

func calculateFunc(a: Double) {
    switch a {
    case _ where (a <= -0.5):
        print("x = -0.5")
    case _ where (a > -0.5 && a <= 0):
        print("x = \(a + 1)")
    case _ where (a > 0 && a <= 1):
        print("x = \(a * a - 1)")
    case _ where (a > 1):
        print("x = \(a - 1)")
    default: return
    }
}

calculateFunc(a: -0.7)
calculateFunc(a: -0.3)
calculateFunc(a: 0.3)
calculateFunc(a: 1.5)

/* 6. Вычислить значение функции G = F(X),заданной графиком 
 | sin(π/2), если X <= 0.5
 G =< 
 | sin((X - 1)*π / 2), если X > 0.5 
 π — представлена в виде глобальной константы M_PI
 sin — глобальная функция*/

func calculateFunc2(A: Double) {

    switch A {
    case _ where (A <= 0.5): print("Y2 = \(sin(Double.pi/2))")
    case _ where (A > 0.5): print("Y2 = \(sin((A-1)*Double.pi/2))")
    default: return
    }
}

calculateFunc2(A: 0.1)
calculateFunc2(A: 5)

