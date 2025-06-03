/*:
 # 함수란 ?
 함수는 특정 작업을 수행하기 위해 호출할 수 있게 이름 붙여진 코드블럭을 의미한다.
 
 작업을 수행하기 위한 데이터가 제공될 수 있고 작업의 결과를 호출한 코드로 반환할 수도 있다.
 
 함수는 매개변수(parameter)를 받아서 함수에 전달하여,코드 블럭을 실행시켜서 원하는 값을 반환하게할 수 있다.
 
 함수에서 호출할 때 쓰이는 매개변수에 데이터 즉, 인자를 넣어서 함수로 전달할 수 있다.
 
 
 # 메서드란 ?
 특정 클래스나 구조체 또는 열거형에 연관된 함수이다.
 예를들어, 스위프트 클래스에서 함수를 선언하면 메서드이다.
 */
//: 스위프트 함수를 선언하는 방법

func swiftFunc(name: String, count: Int) -> String {
    return("\(name), you are customer Number \(count)")
}

// 호출하는 방법
print(swiftFunc(name: "Kim", count: 1))

//: 단일 표현식에서의 암묵적 반환

func testFunc(welcomeMsg: String, count: Int) -> String {
    // return 생략가능
    ("\(welcomeMsg), you are customer Number \(count)")
}

print(testFunc(welcomeMsg: "Hello", count: 2))

//: 컴파일 에러 예시

//func testFunc(welcomeMsg: String, count: Int) -> String {
//    let upperName = name.uppercased()
//    ("\(welcomeMsg), you are customer Number \(count)")
//}

//: 반환값 처리하기

let message: String = testFunc(welcomeMsg: "Hello", count: 2)
print(message)

// 메서드나 함수 호출하여 반환된 결과값 사용하지 않는 경우
_ = testFunc(welcomeMsg: "Hello", count: 2)


/*:
 ### 지역 매개변수와 외부 매개변수명이란 ?
 
 지역 매개변수와 외부 매개변수로 사용하는 case
 */
func testFunc2(welcomeMsg: String, count: Int) -> String {
    return ("\(welcomeMsg), you are customer Number \(count)")
}

print(testFunc2(welcomeMsg: "Hello", count: 3))

//: 외부 매개변수명 없애고 지역 매개변수명으로만 사용하는 법

func testFunc3(_ name: String,_ count: Int) -> Void {
    print("\(name), your number is \(count)")
}

testFunc3("유경모",100)

//: 외부 매개변수와 지역 매개변수를 둘 다 사용하는 법

func testFunc4(userName name: String, userCount count: Int) -> String{
    return ("\(name)은 \(count)번쨰 사람이야. ")
}

print(testFunc4(userName: "한건희", userCount: 200))

//: 디폴트 매개변수 사용하는 법

func testFunc5(_ name: String = "손님", userCount count: Int) -> String {
    return("\(name)은 \(count)번쨰 사람이야.")
}

// 디폴트로 바꾸거나 입력이 안들어오면 디폴트값으로 나온다.
print(testFunc5("유경모",userCount: 1000))
print(testFunc5(userCount: 2000))

//: 튜플로 여러 결괏값 반환하기

func testFunc6(_ length: Float) -> (yards: Float, centimeters: Float, meters: Float) {
    let yards = length * 0.0277778
    let centimeters = length * 2.54
    let meters = length * 0.0254
    
    return (yards, centimeters, meters)
}

let lengthTuple = testFunc6(20)

print(lengthTuple.yards)
print(lengthTuple.centimeters)
print(lengthTuple.meters)

//: 가변 매개변수 개수

// 0 또는 그 이상을 받는다.

func displayStrings(_ strings: String...) {
    for string in strings {
        print(string)
    }
}

displayStrings("one", "two", "three", "four", "five")


//: 매개변수는 상수로 취급, 인자를 매개변수로 직접받아서 직접 계산을 원할 시에는 변수 Shadow copy를 생성.

func calculateArea(length: Float, width: Float) -> Float {
    
    var length = length
    var width = width
    
    length = length * 2.54
    width = width * 2.54
    return length * width
}

print(calculateArea(length: 10, width: 20))

//: 입출력 매개변수로 작업하기

// 복사본으로 연산 수행해서 결과값이 바뀌지않음.

var myValue = 10

func doubleValue (_ value: Int) -> Int {
    var value = value
    value += value
    return(value)
}

print("Before Function Call \(myValue)")
print("doubleValue Call Return \(doubleValue(myValue))")
print("After function call myValue = \(myValue)")

// In Out 연산

func doubleValueInOut(_ value:inout Int) -> Int {
    value += value
    return value
}
// 값이 변경됨

print("doubleValueInOut Call returned \(doubleValueInOut(&myValue))")

//: 매개변수 함수

func inchesToFeet(_ inches: Float) -> Float {
    return inches * 0.0833333
}

// 상수에 함수를 넣어서 사용가능
let toFeet = inchesToFeet

let result = toFeet(10)

func inchesToFeet2(_ inches: Float) -> Float {
    return inches * 0.0833333
}

func inchesToYards2(_ inches: Float) -> Float {
    return inches * 0.0277778
}

let toFeet2 = inchesToFeet2
let toYards2 = inchesToYards2

func outputConversion(_ conveterFunc: (Float)-> Float, value: Float) {
    let result = conveterFunc(value)
    
    print("Result of Conversion is \(result)")
}

outputConversion(inchesToFeet2, value: 10)
outputConversion(inchesToYards2, value: 10)

func decideFunction(_ feet: Bool) -> (Float) -> Float {
    if feet {
        return toFeet2
    } else {
        return toYards2
    }
}


/*:
 클로저 표현식이란
 
 클로저 표현식은 독립적인 코드 블록이다.
 */

let sayHello = { print("Hello")}

sayHello()

let multiply = {(_ val1: Int, _ val2: Int) -> Int in
    return val1 * val2
}

let result2 = multiply(10,20)

/*:
 약식 인수 이름
 
 선언부에서 매개변수 이름과 in 키워드를 생략할 수 있게함.
 */

let join = {(string1: String, string2: String) -> String in
    return string1 + string2
}

let join2: (String, String) -> String = {
    return $0 + $1
}


/*:
 # 클로저란 ?
 클로저는 함수나 클로저 표현식과 같은 독립적인 코드 블록과 코드블록 주변에 있는 하나 이상의 변수가 결합된 것을 의미.
 */

func functionA() -> () -> Int {
    
    var counter = 0
    
    func functionB() -> Int {
        return counter + 10
    }
    return functionB
}

let myClosure = functionA()
let result3 = myClosure()
