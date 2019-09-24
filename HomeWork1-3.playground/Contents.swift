import Foundation

//// Циклы
/*
 Задание 11
 Написать функцию, принимающую натуральное число N. Одномерный массив размером N заполнить случайными числами.
 Вывести на экран количество простых чисел в массиве (Для удобства проверки дополнительно вывести сгенерированный массив). 
 Для генерации простого числа можно использовать глобальную функцию arc4random(). Следует обратить внимание, что функция возвращает значение
 типа UInt32 (потребуется преобразование), а также работает на всем диапазоне (можно применить arc4random() % 100 для получения чисел в
 промежутке [0, 100) )
 */
func completeArrayWithCount(N: Int) -> Array<Int> {
    var array: [Int] = []
    for _ in 0...(N - 1) {
        array.append(Int(arc4random() % 100))
    }
    print("Массив состоит из \(array.count) элементов и включает следующий порядок значений: \(array)")
    return array
}
completeArrayWithCount(N: 7)

/* Задание 12
Написать функцию, заполняющую случайными числами целочисленный массив длиной N. Найти в нем два наименьших элемента (и вывести на экран) 
*/
func find2MinElementsInArrayWithCount(A: Int) {
    let array: [Int] = completeArrayWithCount(N: A)
    var min1 = array[0]
    var min2 = 0
    print("Массив состоит из \(array.count) элементов и включает следующий порядок значений: \(array).\nНайдем 2 минимальные значения среди его элементов")
    
    for item in array {
        if item < min1 {
            min1 = item
        }
    }
    if array[0] == min1 {
        min2 = array[1]
    } else {
        min2 = array[0]
    }
    
    for item in array {
        if item > min1 && item < min2 {
            min2 = item
        }
    }
    
    print("Самыми минимальными значениями в массиве являются \(min1) и \(min2)")
}
find2MinElementsInArrayWithCount(A: 3)

/*13
 Сгенерировать (и вывести) двумерную матрицу размером N*N (N<20). Найти сумму ее элементов, находящихся на диагонали, и сумму элементов на
 диагонали, "ортогональной" главной.
*/

func multidimensionalArray() {
    let random = arc4random_uniform(20)
    let NumColumns = Int(random)
    let NumRows = Int(random)
    var array = Array<Array<Int>>()
    var i: Int = 0
    // Наполнение массива
    for _ in 0...NumColumns {
        var columnArray = Array<Int>()
        for _ in 0...NumRows {
            i = Int(arc4random_uniform(1000))
            columnArray.append(i)
        }
        array.append(columnArray)
        print("column \(columnArray)")
    }
    
    print("array \(array)")
    var sum = 0
    var sum2 = 0
    // Сумма значений главной диагонали
    for i in 0...NumColumns {
        sum += array[i][i]
        //print("\(sum)")
    }
    print("Сумма значений главной диагонали равна: \(sum)")
    // Сумма значений ортогональной диагонали
    for i in 0...NumColumns {
        sum2 += array[i][NumColumns-i]
        //print("\(sum2)")
    }
    print("Сумма значений ортогональной диагонали равна: \(sum2)")
    
    
}

multidimensionalArray()

/* 14
 Сформировать целочисленный массив A(75), элементами которого являются случайные числа из диапазона [-5, 20]. Найти среди его элементов два,
 разность которых имеет наибольшее значение.
*/
func arrayWithElements75() {
    var array75 = Array<Int>()
    var max = 0
    var value1 = 0
    var value2 = 0
    
    for _ in 0...75 {
        let random = Int(arc4random_uniform(26))-5
        array75.append(random)
        //print(random)
    }
    print(array75)
    for i in 0..<array75.count {
        for j in 0..<array75.count {
            let temp = array75[i] - array75[j]
            //print("\(array75[i]) - \(array75[j])")
            if temp > max {
                max = temp
                value1 = array75[i]
                value2 = array75[j]
            }
        }
    }
    print("Максимальной разницей элементов \(value1) и \(value2) является значение \(max)")
}

arrayWithElements75()

/*15
Найти наибольший общий делитель (НОД) двух введенных натуральных чисел, используя алгоритм Евклида. Алгоритм Евклида: вычитаем из большего
числа меньшее до тех пор, пока они не сравняются; полученное в результате число и есть НОД.
*/
func NOD(A: Int, B: Int) {
    var a = A
    var b = B
    var tmp = 0
    
    guard (a > 0 && b > 0) else {
        print("Значения должны быть больше 0!")
        return
    }
    
    if a == b {
        print("НОД равен \(b)")
    } else if b > a {
        tmp = a
        a = b
        b = tmp
    }
    
    while a > b {
        a = a - b
    }
    
    print("НОД равен \(a)")
}

NOD(A: 64, B: 48)




