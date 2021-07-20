	
# Lab 7
| Information | Value |
| --- | --- |
| Course | SEG 3103 |
| Semester | Summer 2021 |
| Professor | Andrew Forward |
| TA | Henry Chen |
| Student | Ovais Azeem, 300112311 |

## Setup 

I first downloaded the `calculator.zip` file from brightspace and extracted it into the `lab07` folder. 
I then compiled this app using `./bin/compile` in the `calculator` folder in the `calculator` folder using WSL. I then ran this app using my regular Windows machine
using the command `java Main` in the `src` folder. <br> <br> 
![app running](https://github.com/Ovais09/seg3103_playground/blob/main/lab07/calculator/calculator/assets/WindowsTerminal_VQQ9Vo1chE.png)

## SpotBugs Analysis

I then did `java -jar ./lib/spotbugs/lib/spotbugs.jar` using my windows 10 machine and after creating the project and adding the neccessary paths, I noticed that there are 18 bugs
in this app: <br> <br>
![spotbugs analysis initial](https://github.com/Ovais09/seg3103_playground/blob/main/lab07/calculator/calculator/assets/java_HXBlaiMden.png)

## Bug 1: Strings Comparison

(look at the previous screenshot)

This bug occured because of this function.

```java
public boolean clickCheck(String s ) {
  if (s == "") )
    doubleclick = true;
  else 
    doubleclick = false;
    
  return doubleclick;
}
```

<br>

A programmer should not be using `==` or `!=` to compare strings in Java. They should be using the `equals` method. This bug can be fixed by 
replacing the `==` with the `equals` method. 

```java
public boolean clickCheck(String s ) {
  if (s.equals("") )
    doubleclick = true;
  else 
    doubleclick = false;
    
  return doubleclick;
}
```

<br>
After fixing this bug, there should be 17 bugs now : <br> <br>

![17 bugs](https://github.com/Ovais09/seg3103_playground/blob/main/lab07/calculator/calculator/assets/java_WFhItgiP0R.png)

## Bug 2: Certain swing methods needs to be invoked in Swing thread

(look at the previous screenshot)<br>

This error was caused because the `setVisible` method could cause deadlocks or other threading issues since Swing components are not thread-safe in Java. <br>

## Bug 3: Could be refactored into a named static inner class

![bug 3 screenshot](https://github.com/Ovais09/seg3103_playground/blob/main/lab07/calculator/calculator/assets/java_v7a9hhcpZn.png)

<br>

To fix this error, we have to create a WindowAdapter class within the CalCFrame class and in the CalCFrame method we would call WindowAdapter.WindowClosing(WindowEvent e). So we can pass the WindowEvent as argument and don't need to create a new WindowAdapter to make the class to large.

## Bug 4: Private method is never called

![bug 4 screenshot](https://github.com/Ovais09/seg3103_playground/blob/main/lab07/calculator/calculator/assets/java_Xllj5juwSL.png) <br> 

```java
private void setClearscreen(CalCFrame cframe, boolean val) {
		try {
			Field f = cframe.getClass().getDeclaredField("clearscreen");
			f.setAccessible(true);
			f.setBoolean(cframe, val);
		} catch (NoSuchFieldException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
``` 

This method was never called, so i just deleted it. So now, there are 16 bugs left <br>

![16 bugs](https://github.com/Ovais09/seg3103_playground/blob/main/lab07/calculator/calculator/assets/java_4dzrQVvJKD.png)

## Bug 5/6: Boxing/unboxing to parse a primitive

The bugs: 
![bug 1](https://github.com/Ovais09/seg3103_playground/blob/main/lab07/calculator/calculator/assets/java_9GBQ1XtjJC.png) <br>

![bug 2](https://github.com/Ovais09/seg3103_playground/blob/main/lab07/calculator/calculator/assets/java_fXdXFAj0Nx.png) <br> 

We can fix these bugs by using Java's parse method. <br>

The processNumbers function will look like this now after I fixed it:
```java
public void processNumbers() {
  
  // the program enters this "if" block when an operator is pressed for the
  // first time
  if ( firstpress ) {
      
    if ( equals ) {
      num1 = answer;    //answer is stored in num1 if user enters equal operator
      equals = false;   // equals is set to false to allow additional input    
  } // end if    
    else 
      num1 = Double.parseDouble(input);  // converts a string number to double
     
      oldoper =  oper;                  // store current operator to oldoper
      
    // if operator is square root, calculation and output is done immediately  
    if ( oper == SQRT ) { 
      answer = calculate( oldoper, num1, 0.0 );  
      showAnswer( Double.toString( answer ) );
      morenums = true;             
    }                             
      firstpress = false;          // no longer the first operator
}  // end if
    
    // "if" block is entered if now more than two numbers are being entered to
    // be calculated
    else if ( !morenums ) {      
     
      num2 = Double.parseDouble(input);           //converts second num to double
      answer = calculate( oldoper, num1, num2 ); //calculate num1 and num2 with   
      showAnswer( Double.toString( answer) );   //the past operator
      newoper = oper;                            //store current operator to
                                                 //new oper
      if ( !equals )
        morenums = true;        //tells program that more than two numbers have             
      else {                    //entered
        morenums = false;       //if equal operator is pressed, firstpress
        firstpress = true;      //returns to true
    } // end else
    } // end if
  
    // if more than two numbers are being inputted to calculate, this "if" block
    // is accessed
    else if (morenums) { 
      
      if ( equals ) {
       
        newoper = oper;
        morenums = false;
        firstpress = true;  // if equals is pressed set firstpress to false
    } // end if             
    
      num3 = Double.parseDouble(input);
      answer = calculate( newoper, answer, num3 );      
      showAnswer( Double.toString(answer) );
      
      newoper = oper;             
   }  // end else if  
}  // end processNumbers()  
```

<br> 

and the showAnswer function will look like this after I fixed it:
```java
public void showAnswer( String s )
{
    double answer;
    
    answer = Double.parseDouble(s);
    if ( decnumber )    
    result.setText( Double.toString(answer) );
    else
    result.setText( s );        //all output are displayed as integers at start
        
} 
```

<br>

Now there show be 14 bugs now: <br>
![14 bugs](https://github.com/Ovais09/seg3103_playground/blob/main/lab07/calculator/calculator/assets/java_4kaWZszcG1.png)

## Bug 7 to Bug 12: Unread field: should this field be static?

The bug: 
![the bug](https://github.com/Ovais09/seg3103_playground/blob/main/lab07/calculator/calculator/assets/java_8NvzW8EmVf.png)


<br>

To fix this error, all we have to do is make this field static: <br>

```java
private static final int   ADD=1,        // integer constants representing operators
                      SUB = 2, 
                      MULT = 3, 
                      DIVI = 4, 
                      POW = 5, 
                      SQRT = 6;
```

Now there show be 8 bugs: <br>
![8 bugs](https://github.com/Ovais09/seg3103_playground/blob/main/lab07/calculator/calculator/assets/java_4eLWwwJ2aG.png)

## Bug 13: Method uses the same code for two branches

(see the above screenshot to see what the bug is)

<br>

Since it does not matter what the condition is, we can remove all the different branches (remove the if, else if, and else)

<br>

Doing this will result in 4 bugs left: <br>
![4 bugs left](https://github.com/Ovais09/seg3103_playground/blob/main/lab07/calculator/calculator/assets/java_nkM7LhmBTk.png)

## Bug 14: Switch statement found where default case is missing

(see above screenshot to see the bug)

This bug was caused by missing a default statement, so all we have to do is add the keyword default:

```java
public double calculate( int oper, double number1, double number2 )
{    
   double answer = 0.0;
  
        switch( oper ) {
          case ADD:            
            answer = number1 + number2; 
            break;
          case SUB:            
            answer = number1 - number2;
            break;
          case MULT:
            answer = number1 * number2;
            break;
          case DIVI:
            answer = number1 / number2;
            break;
          case POW:
            answer = Math.pow( number1, number2 );
            break;
          case SQRT:
            answer = Math.sqrt( number1 );
            break;   
		  default: 
      } // end switch  
      
     return answer;     
  }  // end calculate()
  ```
  
  After doing this, there are only three bugs left: <br>
  
  ![bug 14 fix](https://github.com/Ovais09/seg3103_playground/blob/main/lab07/calculator/calculator/assets/java_wUHTpPukTU.png)
  
  
 ## Bug 15 to Bug 18: Condition has no effect
 
 (see the above screenshot to see the bug) <br>
 
 These bugs are related to Bug 13. <br>
 
 In order to fix this bug, all we have to do is remove the else if block because this condition has no meaning. 
 
 ```java 
 public void processNumbers() {
  
  // the program enters this "if" block when an operator is pressed for the
  // first time
  if ( firstpress ) {
      
    if ( equals ) {
      num1 = answer;    //answer is stored in num1 if user enters equal operator
      equals = false;   // equals is set to false to allow additional input    
  } // end if    
    else 
      num1 = Double.parseDouble(input);  // converts a string number to double
     
      oldoper =  oper;                  // store current operator to oldoper
      
    // if operator is square root, calculation and output is done immediately  
    if ( oper == SQRT ) { 
      answer = calculate( oldoper, num1, 0.0 );  
      showAnswer( Double.toString( answer ) );
      morenums = true;             
    }                             
      firstpress = false;          // no longer the first operator
}  // end if
    
    // "if" block is entered if now more than two numbers are being entered to
    // be calculated
    else if ( !morenums ) {      
     
      num2 = Double.parseDouble(input);           //converts second num to double
      answer = calculate( oldoper, num1, num2 ); //calculate num1 and num2 with   
      showAnswer( Double.toString( answer) );   //the past operator
      newoper = oper;                            //store current operator to
                                                 //new oper
      if ( !equals )
        morenums = true;        //tells program that more than two numbers have             
      else {                    //entered
        morenums = false;       //if equal operator is pressed, firstpress
        firstpress = true;      //returns to true
    } // end else
    } // end if
  
    // if more than two numbers are being inputted to calculate, this "if" block
    // is accessed
    
}  // end processNumbers() 
```

Doing this will result in two bugs left: <br>
![2 bugs left](https://github.com/Ovais09/seg3103_playground/blob/main/lab07/calculator/calculator/assets/java_j9tMINnulC.png)

## Overview

Overall, there were 18 bugs in total and I narrowed it down to 2 bugs (see the abobve screenshot). Bugs 2 and 3 I do not know what the code should look like, only why it occured and 
how might a person be able to fix it. 







