import 'dart:io';

void main() {
  print("I'm Learning Dart! Let's see How cool it is.");
  dartFutureFunctions();
}

void dartIO() {
  // Print
  print('Hello world!');
  // Read from console. Using readLineSync the value be string.
  var a = stdin.readLineSync();
  print(a);
}

void dartIOExample() {
  print("Enter two number : \n");
  var in1 = stdin.readLineSync();
  var in2 = stdin.readLineSync();

  // If we are sure that the values in1 and in2 cannot be null then we can use "!" symbol.
  // but whwn the value be null it will give crash.

  var num1 = int.parse(in1!);
  var num2 = int.parse(in2!);

  print("Sum of $num1 and $num2 is ${num1 + num2}");
}

void dartDataTypes() {
  // Data Types ---> int, double, num, string, "var"
  int a = 10;
  double b = 29;
  num c = 20.9;
  num d = 56;
  var sum = a + b + c + d;
  String name = 'Hello';
  String name2 = "Hello";
  String multiline = '''
  Hello
  Address
  ''';
  print(sum);
  print(name + name2);
  print(multiline);
  print(multiline.length);
}

void dartDataTypesAdvanced() {
  // In dart there is no arrays, instead it has list.
  // List
  List<int> numberList = [12, 23, 56, 96];
  // Nested List
  List<List<int>> MultiDimensional = [
    [1, 23, 89],
    [25, 98, 63]
  ];
  // MultiDimensional[0][1] ===> 23
  // Set and Map
  Set<int> numList = {1, 2, 3};
  // Set are similar to List but doesn't contain duplicate elements.
  Map<String, String> maps = {"name": "NameValue", "age": "25"};
  // Maps are key value pairs, We can access each values using keys. and Keys are unique.
}

void dartConstVsFinal() {
  // final variable value can only be set once.
  // In case of list we can add, delete etc but we cannot assign another list.
  // const variable should be initialized pn compile time; that is it should be assigned at the time of declaration.
}

void dartConditionals() {
// if, if else, if else if, for loop etc are same as other languages.
}

void dartLoops() {}

void dartFunctions() {
  // Function defenitions
  void sumParams(int a, int b) {
    print(a + b);
  }

  int sumReturn(int a, int b) {
    return a + b;
  }

  // Calling functions
  sumParams(2, 3);
  sumReturn(5, 7);
  // There is no function overloading in flutter.
}

void dartNamedParameters() {
  // To make a function's parameters optional we need to enclose it with curly brackets.
  // For optional parameters it should't be null.
  // We can use required keyword to pass the parameter without getting null.
  void sumReq({required int firstParameter, int secondParameter = 0}) {
    print(firstParameter + secondParameter);
  }

  // here in sumReq() firstParameter is a required parameters and secondParameter is an optional.
  sumReq(firstParameter: 245);
}

void dartPassFunction() {
  // dummy function for demo.
  void demoFn(int a, int b) {
    print(a + b);
  }

  // We can pass a function to another function. the syntax of defenition is below.
  void sumFunction(int a, int b, void Function(int, int) customSum) {
    customSum(a, b);
  }

  // calling sumFunction
  sumFunction(24, 19, demoFn);

  // Using anonymous function
  sumFunction(12, 14, (int f, int s) {
    var a = (f + s) * (f + s);
  });
}

void dartFutureFunctions() {
  Future<void> sumFutureVoid(int a, int b) async {
    print("Future function printing sum of $a and $b, which is ${a + b}.");
  }

  // await is not always necessory for future functions. here we are using await to generate some delay.
  Future<int> sumFutureInt(int a, int b) async {
    await Future.delayed(Duration(seconds: 1));
    print("Future function printing sum of $a and $b, which is ${a + b}.");
    return a + b;
  }

  // When we using await, the sumFuture function will wait for the function to be completed.
  // only after the completion the next line will excecute.
  // We can only use await inside a Future function. but we can make the main function as a Future function.
  Future<void> sum(int a, int b) async {
    await sumFutureInt(a, b);
    print("Running sum function...");
  }

  // sumFutureVoid(15, 31);
  // print("After SumFutureVoid");
  // sumFutureInt(12, 13);
  // print("After SumFutureInt");
  sum(23, 56);
}
