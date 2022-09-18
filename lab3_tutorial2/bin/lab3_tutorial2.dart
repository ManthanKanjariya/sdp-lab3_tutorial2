void main() {
/*  
  //function
    ///The same idea exists in computer programming. A function
    ///is one small task, or somethings a collection of several
    ///smaller, related tasks that you can use in conjunction with other function
    ///to accomplish a larger task.
*/

/*
  //function basics
    ///There are man examples of this in daily life. With an apple 
    ///juicer, you put in apples and you get out apple juice. The 
    ///input is apples; the output is juice. A dishwasher is another
    ///example. The input is dirty dishes, and the output is clean dishes.
    ///Blenders, coffe makers, microwaves and ovesn are
    
    // one place
    if (fruit == 'banana') {
    peelBanana();
    eatBanana();
    }
    // another place
    if (fruit == 'banana') {
    peelBanana();
    eatBanana();
    }
    // some other place
    if (fruit == 'banana') {
    peelBanana();
    eatBanana();
*/

/*
  //Anatomy of a Dart function
    ///In Dart, a function consists of a return type, a name, a 
    ///parameter lst in parentheses and a body enclosed in braces.
    String compliment(int number)
    {
      return '$number is a very nice nuber.';
    }
    ///return type
    ///function name
    ///parameters
    ///return value
    
    const input = 12;
    final output = compliment(input);
    print(output);
    }
    String compliment(int number) {
    return '$number is a very nice number.';

    //12 is a vry nice number.

*/

/*
  //More about parameters
    //Paremeters are incredibly flexible in Dart, so they deserv their own section
*/

/*
  //Using multiple parameters
    //simply separate them with commas. Here's a function with two parameters:
    void helloPersonAndPet(String Person,String pet)
    {
      print("Hello, $Person,and your furry friend,$pet!");

    }

    helloPersonAndPet("fluffy", "chris");
*/

/*
  //Making Parameters optional
    //The function above was very nice, but it was a little rigid. For
    // example, try the following:

    //If you don’t have exactly the right number of parameters, the
    //compiler will complain to you:
    
    String fullName(String first, String last, [String ? title] )
    {
      if(title != null)
      {
        return "$title $first $last";

      }
      else
      {
        return "$first $last";
      }
    }
    print(fullName('Ray', 'Wenderlich'));
    print(fullName('Albert', 'Einstein', 'Professor'
    ) );
*/

/*
  //Providing default values
    //you saw that the default value for an
    //optional parameter was null. This isn’t always the best
    //value for a default, though. That’s why Dart also gives you
    //the power to change the default value of any parameter in
    //your function by using the assignment operator.
    bool withinTolerance(int value, [int min = 0, int
    max = 10]) {
    return min <= value && value <= max;
    withinTolerance(5);
    withinTolerance(15);
    withinTolerance(9,7,11);
    withinTolerance(9,7);
*/

/*
  //Naming parameters
    //Dart allows you to use named parameters to make the meaning of the parameters more clear in function calls.
    bool withinTolerance(int value, {int min = 0, int
    max = 10}) {
    return min <= value && value <= max;
    
    }
    //min and max are surrounded by braces, which means you must
    //use the parameter names when you provide their argument
    //values to the function.
    withinTolerance(9, min: 7,max: 11);

    withinTolerance(5);
    withinTolerance(15);
    withinTolerance(5,min: 7);
    withinTolerance(15,max:20);
    ///In the first two lines, since min is 0 and max is 10 by default,
    //values of 5 and 15 evaluate to true and false respectively.
    //In the last two lines, the min and max defaults were changed,
    //which also changed the outcomes of the evaluations.
*/

/*
  //Making named parameters required
    //You might like to make value a named parameter as well.
    //That way you could call the function like so:
    

    bool withinTolerance({
    required int value,
    int min = 0,
    int max = 10,
    }) {
      return min <= value && value <= max;
    }
    withinToierance(int 9,min: 7,max: 11)
    
        withinToierance();//The named parameter 'value' is required, but ther's not corrsponding argument,
        try adding the required

    
    //Since the function signature was getting a little long, adding a
    //comma after the last parameter lets the IDE format it
    //vertically. You still remember how to auto-format in VS
 */

/*
  //Writing good function
    //People have been writing code for decades. Along the way,
    //they’ve designed some good practices to improve code
    //quality and prevent errors. One of those practices is writing
    //DRY code as you saw earlier. Here are a few more things to
    //pay attention to as you learn about writing good functions.
*/

/*
  //Avoiding side effects
    ///When you take medicine to cure a medical proble, but that 
    ///medicine makes you fat, that's known as a side effect. If you 
    ///put some bread in a toaster to make toast, but the toaster
    ///burns your house down, that's also a side effect. Not all side 
    ///effects are bad, thouh. If you take a sbusiness trip to Paris,
    ///you also get to see the Effel Tower. Magnifique!
    void hello()
    {
        print('Hello!');
    }
    String hello1()
    {
      return "hello!";//Now, there's nothing inside the function body that effects
      //outside world. You'l have to write the string to the console
      //somewhere outside of the function.
    }
    hello();
    hello1();

    var myPreciousData = 5782;
    String aninnocentLookingFunction(String name)
    {
      myPreciousData = -1;
      return "hello, $name ,Heh, heh, heh.';
    }
    //Unless you took the time to study the code inside of
    //anInnocentLookingFunction, you’d have no idea that
    //calling this innocent-looking function would also change
    //your precious data. That’s because the function had an
    //unknown side effect. This is also a good reminder about the
    //dangers of using global variables like myPreciousData, as
    //you never know who might change it.

*/


/*
  //Doing only one thing
    //Proponents of "clen code" recommend keeping your function small and logically
    //coherent.Here means only a handful of line of code.
    //If a function too big, or contains unrelated parts, consier breaking it into smallerfunction.
    //Write your functions so that each one has only a single job to
    //do.if you find yourself adding comments to describe different secions of a complex function
    //good clue that you should break your function up into
    //smaller functions. In clean coding, this is known as the P
    //. In addition to functions, this
    //principle also applies to classes and libraries. But that’s a
    //topic for another chapter.
*/

/*
  //Choosing good names
    //You should always give your functions names that describe
    //exactly what they do. If your code sounds like well-written
    //prose, it’ll be faster to read and easier to understand.

    //Use verb phrases for functions with side effects. For example,
    //updateDatabase or printHello.
    //Also use verb phases if you want to emphasize that the
    //function does a lot of work. For example, calculateFibonacci
    //or parseJson.
    //Don’trepeat parameter names in the function name. For
    //example, use cube(int number)instead of
    //cubeNumber(int number), or printStudent(String name)
    //instead of printStudentName(String name).
 */


/*
  //Optional type
    //Earlier you saw this function
      String compliment(int number){
        return '$number is a very nice number.';
      }
    //The return type is String, and the parameter type is int.
    //Dart is an optionally-typed language, so it’s possible to omit
    //the types from your function declaration. In that case, the
    //function would look like this:
    compliment(number)
    {
      return '$number is a very nice number.';
    }    

    String compliment(dynamic number) {
    return '$number is a very nice number.';
    }
*/

/*
  //Mini-exercises
    
    void youAreWonderful(String name,int People)
    {
      print("you're wonderful,$name. $People people think so.");
    }
    youAreWonderful("Bob",10);

*/

/*
  //Anonymous functions
    //All the functions you’ve seen previously in this chapter, such
    //as main, hello, and withinTolerance are
    //which means, well, they have a name.
    String compliment(int number)
    {
      return "$number is a very nice number";
      
    }
    compliment(20);
*/

/*
  //First-class citizens
    //In Dart, functions are . That means you
    //can treat them like any other othertype, assigning functions
    //as values to variables and even passing functions around as
    //parameters or returning them from other functions.
*/

/*
  //Assigning functions to variables
    //When assigning a value to a variable, functions behave just like other types
    int number = 4;
    String greeting = 'hello';
    bool isHungry = true;
    Function multiply = (int a, int b) {
    return a * b;
    };
    //The type of multiply is Function, the same way that number
    //is int, greeting is String and isHungry is bool.
    Function myFunction = int multiply(int a, int b)
    {
    return a * b;
    };

 */

/*
  //Passing functions to functions
    //Just as you can writes a functions to take int or string as a 
    //parameter, you can also have functons as a parameter:
    void namedFunction(Function anonymousFunction) {
    // function body
    }

 */   

/*
  //Returning functions from functions
  Function namedFunction() { return
    () {
    print('hello');
    };
*/


/*
  //Using anonymous functions
      //Now that you know where you can use anonymous functions,
      //try a hand at doing it yourself. Take the multiply function
      final multiply = (int a, int b) {
      return a * b;
      };

      print(multiply(2,3));

 */

/*
  //returning a function
    Function applyMultiplier(num multiplier) {
    return (num value) {
    return value * multiplier;
    };     
    final triple = applyMultiplier(3);
    //triple is a constant variable of type Function; that is, the
    anonymous function that applyMultiplierreturned. You
    haven’t run that anonymous function yet. You’re simply
    storing it in a variable named triple.
    print(triple(6));
    print(triple(14.0));
*/

/*
  //Anonymous functions in forEach loops
    //
    const numbers = [1, 2, 3];
    numbers.forEach((number) {
    final tripled = number * 3;
    print(tripled);
    });

 */

/*
  //Closures and scope
  
   //Anonymous functions in Dart act as what are known as
    //. .The term closure means that the code “closes
    //around” the surrounding scope, and therefore has access to
    //variables and functions defined within that scope.
    Function applyMultiplier(num multiplier) 
    {
    return (num value) {
    return value * multiplier;
    }; 

    //As another example, if you have a variable counter and then
    //define an anonymous function below it, that anonymous
    //function acts like a closure and has access to counter, and so
    //can change it.

    var counter = 0;
    final incrementCounter = () {
    counter += 1;
    };
    incrementCounter();
    incrementCounter();
    incrementCounter();
    incrementCounter();
    incrementCounter();
    print(counter);
  
    Function countingFunction() { var
    counter = 0;
    final incrementCounter = () {
     counter += 1;
    return counter;
    };
    return incrementCounter;
    final counter1 = countingFunction();
    final counter2 = countingFunction();

    print(counter1()); // 1
    print(counter2()); // 1
    print(counter1()); // 2
    print(counter1()); // 3 
    print(counter2());
*/    


/*
  //Mini-exercises
  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((people) {
  
  print("$people wonderful");
  });

*/


    /* 
  //Arrow functions:-You replaced the function’s braces and body with an arrow (=>) and left off the return keyword. The return value is whatever the value of the expression is.
  //for annonymous function use --> (parameters) => expression;
  int add(int a, int b) {
    return a + b;
  }
  int add(int a, int b) => a + b;
  //Refactoring example 1:-
  final multiply = (int a, int b) => a * b;
  print(multiply(2, 3));

  //Refactoring example 2:-
  Function applyMultiplier(num multiplier) {
    return (num value) => value * multiplier;
  }
  final triple = applyMultiplier(3); 
  print(triple(3));
  //Refactoring example 3:-
  const numbers = [1,5,9,8];
  numbers.forEach((number) => print(number * 3));
  //Mini-exercise:-
  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((p) => print(p));
  print("They're Wonderful");

*/
/* Challenge 1: Prime time:- 
  bool isPrime(N){
    for (var i = 2; i <= N/i; i++) {
      if(N % i == 0){
        return false;
      }
    }
    return true;
  }

   var N = int.parse(stdin.readLineSync()!);
  if (isPrime(N)) {
    print('$N is a prime number.');
  } else {
    print('$N is not a prime number.');
  }
*/
/* Challenge 2: Can you repeat that?
  int repeatTask(int times, int input, Function task){
    while(times!=0){
      input = task(input);
      times--;
    }
    return input;
  }
  var times = int.parse(stdin.readLineSync()!);
  var input = int.parse(stdin.readLineSync()!);
  print(repeatTask(times,input,(x)=>x*x));
*/

      

     
}
