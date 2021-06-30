# lab 5
| Outline | Value |
| --- | --- |
| Course | SEG 3103 |
| Date | Summer 2021 |
| Professor | Andrew Forward, aforward@uottawa.ca |
| TA | Henry Chen, zchen229@uottawa.ca|
| Team | Ovais Azeem 300112311 |

## Part 1 Stub (Grades)

### Setup 

I am running this code on my windows 10 machine. 
In order to start caclculating the final grade, the `grades.zip` must be downloaded from brightspace 
and extracted into a folder of the user's choosing. 
Then the user must navigate to the `grades` folder in the `grades` folder and do `mix phx.server`.
This will run the pheonix server, however there will be a erros because the dependacies must be added. 
This can be done with the command `mix deps.get`.
Even after doing this, there will still be errors because the Node.js watcher could not be started. 
This error can be fixed by running this command `cd assets && npm install`. <br>

Once the pheonix server has started, the user can click on this link: http://localhost:4000/ <br>
in order to view the grades web applplication on the user's browser. 

### Fixing the Calculate button

Once the user has clicked on the above link, they should be able to view this image on their browser: <br>
![initial web app](https://github.com/Ovais09/seg3103_playground/blob/main/lab05/assets/initialwebapp.png) <br>

If the user clicks on the calculate button it will not work because the three function `letter_grade`, `percentage_grade`, and `numeric_grade`
are not defined in the `grades.ex` file. 

The user should get this error message in their shell: <br>
![initial error message](https://github.com/Ovais09/seg3103_playground/blob/main/lab05/assets/errormessageinitial.png)  <br>

I fixed this error message by changing the `grades.ex` file. I changed `Grades` module to `Grades.Calculator` and implemented the three funcrtions. 
Also, the three functions will generate a random value.  <br>

This is what the `grades.ex` looks like after I added some code to it: <br>
![grades.ex file after adding code](https://github.com/Ovais09/seg3103_playground/blob/main/lab05/assets/functionsImplementedGrades.png) <br>

After doing all of these changes, the web application will look something like this: <br>
![browser app no error](https://github.com/Ovais09/seg3103_playground/blob/main/lab05/assets/BrowserScreenshotGrades.png)  <br>


### Using the stub value from assignment 2

I replaced the three functions with the functions in the `calculator.ex` file in my assignment 2 folder. The `calculator.ex` file is located here: https://github.com/Ovais09/seg3103_playground/blob/main/Assignment2/grades/grades/lib/grades/calculator.ex
<br>

After changing the code, I clicked on the calculate button on the browser, but it gave me an error in my terminal: <br>
![error after changing assignment 2](https://github.com/Ovais09/seg3103_playground/blob/main/lab05/assets/errormessagewsl.png) <br> 

This error occurs because each input is actually being passed as a string, rather than integers. This causes an arithmetic error because the methods in Grades.Calculator 
are expecting integers than strings. 

## Part 2 Mocks (twitter)

### Setup 

I downloaded the `twitter.zip` file from brightspace and extracted it into some folder. I then navigated to the `twitter` folder in the `twitter` folder
and did `./bin/compile` to first compile the java files. I then did `./bin/run` to run the Main file and then I did `./bin/test` to run the tests initially which
created this output from my terminal : <br>

![junit initial](https://github.com/Ovais09/seg3103_playground/blob/main/lab05/assets/junit_initial.png) <br>

### Implementing Tests

I wrote code for the functions that were incomplete in the `TwitterTest.java` file. I then did `.bin/test` to run the tests again. This time it created this output:<br>

![junit after writing code for 4 functions](https://github.com/Ovais09/seg3103_playground/blob/main/lab05/assets/junit_initial_test.png) <br>

These two tests failed because the `isMentionned_handleNull` function is null and the null value is not handled in the `isMentionned` function. Also, the string "meat" contains the substring "me" and will always return true. The latter test can be fixed by making sure that string after the "@" character is the same as the string that is being passed in the `isMentionned` function. This screenshot represents the changes I made to the `isMentionned` function to make sure 
that all tests pass: <br>

```java 
public boolean isMentionned(String name) {
    String tweet = loadTweet();

    if (tweet == null) {
      return false;
    }

    String tweetV2  = tweet;

    String substringFirst = tweetV2 .substring(0,tweetV2.indexOf("@"));

    String substringFinal = tweetV2.substring(substringFirst.length()+1, tweetV2.length());




    return substringFinal.equals(name);

  }
 ```
 
 <br>
 
 Now that I made the necessary changes to the `isMentionned` function, it is time to run the tests. I did `./bin.test` to run these tests for the last time and sure enough, all the tests pass: <br>
 
 ![all junit tests pass](https://github.com/Ovais09/seg3103_playground/blob/main/lab05/assets/junit_tests_after_fixing.png) 












