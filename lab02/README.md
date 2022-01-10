# lab 2

| Outline   | Value                               |
| --------- | ----------------------------------- |
| Course    | SEG 3103                            |
| Date      | Summer 2021                         |
| Professor | Andrew Forward, aforward@uottawa.ca |
| TA        | Henry Chen, zchen229@uottawa.ca     |
| Team      | Ovais Azeem                         |

## Exercise 1

| Test Case | Expected Results              | Actual Results                                                                                   | Verdict (Pass, Fail, Inconclusive) |
| --------- | ----------------------------- | ------------------------------------------------------------------------------------------------ | ---------------------------------- |
| 1         | registration request accepted | Wrong FirstName format <br> Wrong LastName format                                                | Fail                               |
| 2         | registration request accepted | Wrong Email format                                                                               | Fail                               |
| 3         | registration request accepted | Wrong FirstName format <br> Wrong LastName format                                                | Fail                               |
| 4         | registration request accepted | registration request accepted                                                                    | Pass                               |
| 5         | Err1                          | Size of UserName must be between 6 and 12 <br> Wrong UserName format                             | Fail                               |
| 6         | Err3                          | Size of UserName must be between 6 and 12 <br> Wrong UserName format                             | Fail                               |
| 7         | Err3                          | Size of UserName must be between 6 and 12 <br> Wrong FirstName format <br> Wrong LastName format | Fail                               |
| 8         | Err1                          | Err1                                                                                             | Pass                               |

In order to complete the table for exercise 1, I first had to download and extract both the `ecs` and `registration` files into a folder of my choosing. I then I had to navigate to the `navigation` folder in the `navigation` folder and run the command `./bin/run` in a linux terminal (I was using WSL). This will run the registration application. After doing this, I then clicked on this link : [http://localhost:8080/](http://localhost:8080/) which will allow me to see the web application in a browser of my choosing. The web application will look like this:

![User Registration app](/lab02/assets/UserRegistrationScreenshot.png)

## Exercise 2

For exercise 2, I completed the Java tests files in the `test` folder. I implemented the explicit tests in the `Date.java` file and the parameterized tests in the `DateNextDateOkNext.java` and `DateNextDateExceptionTest.java` files. In order to run the tests, I first had to navigate to the `ecs` folder in the `ecs` folder and then run this command: `./bin/test` in a linux environment to not only compile the tests, but also run them as well. This is what the output from the tests look like in my linux terminal:

![JUnit Tests 1](/lab02/assets/JUnitTests1.png)
![JUnit Tests 2](/lab02/assets/JUnitTests2.png)
