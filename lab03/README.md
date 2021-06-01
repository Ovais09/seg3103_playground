# lab 3

| Outline | Value |
| --- | --- |
| Course | SEG 3103 |
| Date | Summer 2021 |
| Professor | Andrew Forward, aforward@uottawa.ca |
| TA | n.bayati, n.bayati@uottawa.ca |
| Team | Ovais Azeem 300112311 |

## Background Info
I am running WSL 2.0 using the Ubuntu 20.04 operating system on my Windows 10 machine. I will be using java openJDK 11 <br>
`openjdk 11.0.11 2021-04-20` <br>
`OpenJDK Runtime Environment (build 11.0.11+9-Ubuntu-0ubuntu2.20.04)` <br>
`OpenJDK 64-Bit Server VM (build 11.0.11+9-Ubuntu-0ubuntu2.20.04, mixed mode, sharing)` <br>

## Exercise to try and get 100% code coverage 
In order to run the JaCoCo Java Testing library against the date tests and observe the output, the `date` zip file must be downloaded from the SEG 3103 brightspace and then extracted to a folder of the user's choosing. Then the user must navigate to the `date` folder in the `date` folder and then do `./bin/jacoco` in WSL. This will create a `report` folder and within this folder there is an `index.html` file. This file can then be opened in a browswer of the user's choosing and the user can then view the coverage report. 
Initially, the coverage test for the `Date.html` will look like this: <br> <br>

![inital coverage report](https://github.com/Ovais09/seg3103_playground/blob/main/lab03/assets/JaCoCo_PreFix.png)

<br>

The output in the terminal will look like this if the tests ran successfully and there are no errors: <br> <br> 
![output terminal 1](https://github.com/Ovais09/seg3103_playground/blob/main/lab03/assets/Terminal1.png)
![output terminal 2](https://github.com/Ovais09/seg3103_playground/blob/main/lab03/assets/Terminal2.png)


The goal of this exericse is to try and obtain a %100 code coverage for the `Date.java` file. In order to increase the code coverage, tests cases will have to be added. <br> <br>
First I obtained a 100% code coverage for the isThirtyDayMonth() function. 
I did this by adding this test to the `DateTest.java` file: <br>
```java 
@Test
void nextDate_tc32() {
    Date today = new Date(1901, 9, 1);
    Date expectedTomorrow = new Date(1901, 9, 2);
    assertEquals(expectedTomorrow, today.nextDate());
}
 ```
 
 I then managed to achieve 100% code coverage for the isLeapYear() function. I did this by adding this test to the `Date.java` file: <br>
 ```java
@Test 
void nextDate_tc25(){
    Date date = new Date(2000, 1, 1);
    Date expectedTomorrow = new Date(2000, 1, 2);
    assertEquals(expectedTomorrow, date.nextDate());
}
  ```
  
  I then managed to acheieve 100% code coverage for the toString() function.  I did this by adding this test to the `Date.java` file: <br>
  ```java
@Test
void nextDate_tc24(){
    Date date = new Date(2021,5,27);
    assertEquals("2021/May/27",date.toString());
}
```

I then managed to acheieve 100% code coverage for the equals(Object) function. I did this by adding these tests to the `Date.java` file: <br>
``` java
@Test
void nextDate_tc28(){
    Object obj = new Object();
    Date date = new Date(2021,5,27);
    assertFalse(date.equals(obj));
}

@Test
void nextDate_tc29(){
    Date date = new Date(2021,5,27);
    Date date2 = new Date(2020,4,26);
    assertFalse(date.equals(date2));
}

@Test
void nextDate_tc30(){
    Date date = new Date(2021,5,27);
    Date date2 = new Date(2021,4,26);
    assertFalse(date.equals(date2));
}

@Test
void nextDate_tc31(){
    Date date = new Date(2021,5,27);
    Date date2 = new Date(2021,5,26);
    assertFalse(date.equals(date2));
}
```

I then managed to acheieve 100% code coverage for the setDay() function. I did this by adding these tests to the `Date.java` file: <br>
```java
@Test
  void nextDate_invalid_tc21() {
    assertThrows(
      IllegalArgumentException.class,
      () -> new Date(1975, 6, 32)
    );
  }
  
@Test
void nextDate_invalid_tc22() {
    assertThrows(
      IllegalArgumentException.class,
      () -> new Date(2010, 4, 31)
    );
}

@Test
void nextDate_invalid_tc23() {
    assertThrows(
      IllegalArgumentException.class,
      () -> new Date(2020, 2, 30)
    );
}
```

I then managed to acheieve 100% branch coverage for the setMonth() function. I did this by adding this tests to the `Date.java` file: <br>

```java
@Test
void nextDate_invalid_tc19() {
    assertThrows(
      IllegalArgumentException.class,
      () -> new Date(1458, 15, 12)
    );
}
  ```
  
I was able to get 100% instruction coverage for the isEndOfMonth() function after adding these two tests cases, but I was not able to get 100% branch coverage. This is because  tt is impossible for the month of February to have 29 days if it is not a leap year, so the branch with this condition cannot be covered.
  
  ```java
@Test
void nextDate_tc26(){
    Date today = new Date(2021, 2, 28);
    Date expectedTomorrow = new Date(2021, 3, 1);
    assertEquals(expectedTomorrow, today.nextDate());
}

@Test
void nextDate_tc27(){
    Date today = new Date(2020, 2, 28);
    Date expectedTomorrow = new Date(2020, 2, 29);
    assertEquals(expectedTomorrow, today.nextDate());
}
```
There is a missed branch here: <br>
![missed branch](https://github.com/Ovais09/seg3103_playground/blob/main/lab03/assets/JaCoCo_Incomplete.png)
  

After adding all these tests, the JaCoCo coverage report changed to this: <br> <br> 
![after adding some tests](https://github.com/Ovais09/seg3103_playground/blob/main/lab03/assets/JaCoCo_Fix.png) <br>

This is what the output coming from the Linux terminal looks like after I ran all the tests including the ones I recently added: <br>

![output terminal 1](https://github.com/Ovais09/seg3103_playground/blob/main/lab03/assets/OutputTerminal1.png)
![output terminal 2](https://github.com/Ovais09/seg3103_playground/blob/main/lab03/assets/OutputTerminal2.png)

## Exercise for Refactoring Date.java
I first took the coverage for `Date.java` by doing `./bin/jacoco` in the `date` folder in the `date` folder in the original, unmodified folder. This resulted in this report: <br> <br>
![inital coverage report](https://github.com/Ovais09/seg3103_playground/blob/main/lab03/assets/JaCoCo_PreFix.png) <br>

The setDay (int day) function had an inital coverage of 64%. I then decided to refactor this function by modifying it for readability. This is the original setDay function: <br> <br>
![setDay Before](https://github.com/Ovais09/seg3103_playground/blob/main/lab03/assets/setDayBefore.png) <br>

This is the function after it has been refactored. This was done by combining the if statements: <br> <br>
![setDay After](https://github.com/Ovais09/seg3103_playground/blob/main/lab03/assets/setDayAfter.png) <br>

I then ran `./bin/jacoco` in my Linux terminal and it produced this coverage report: <br> <br>
![coverage report](https://github.com/Ovais09/seg3103_playground/blob/main/lab03/assets/coverage.png) <br> 

Based on this report, it is evident that refactoring a function/block of code can increase the code coverage. The code coverage for the setDay function increased from 64% to 81%. This is because the two seperate if statements have been merged together with the OR operator. So, whenever one part of the if statement has been triggered, it is like the whole if statement has been called. 












