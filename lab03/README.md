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

## Exercise 1
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
  

After adding some tests, it changed to this: <br> <br> 
![after addign some tests](https://github.com/Ovais09/seg3103_playground/blob/main/lab03/assets/JaCoCo_Fix.png)

