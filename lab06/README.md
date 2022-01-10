# SEG3103 Lab6

| Information | Value          |
| ----------- | -------------- |
| Course      | SEG 3103       |
| Semester    | Summer 2021    |
| Professor   | Andrew Forward |
| TA          | Zahra Kakavand |
| Student     | Ovais Azeem,   |

### Setup

Before I started compiling and running all the tests, I first downloaded the `BookStore.zip` file from brightspace and extracted it into the `seg3103_playground` folder

### Output of "mvn --version"

I installed maven on my windows 10 machine and here is a screenshot of `mvn --version` to prove that I installed it correctly.

![maven compile](https://github.com/Ovais09/seg3103_playground/blob/main/lab06/images/mvn_version.png) <br>

### Output of "mvn compile"

The output of `mvn compile` is :
![maven compile](https://github.com/Ovais09/seg3103_playground/blob/main/lab06/images/mvn_compile.png) <br>

### Output of "mvn package -DskipTests"

The output of `mvn package -DskipTests` is :

![skip tests](https://github.com/Ovais09/seg3103_playground/blob/main/lab06/images/mvn_package1.png)
![skip tests 2](https://github.com/Ovais09/seg3103_playground/blob/main/lab06/images/mvn_package2.png) <br>

This compiles all the tests without running them.

### Output of "java -jar ./target/BookstoreApp-0.1.0.jar"

I then did `java -jar ./target/BookstoreApp-0.1.0.jar` in my terminal and it showed me this in my terminal (I used WSL because the chrome browser was not connecting) :
![terminal output](https://github.com/Ovais09/seg3103_playground/blob/main/lab06/images/terminaloutputserver.png) <br>

### Output of Application

After starting the server, if the user goes to this link: http://localhost:8080/ <br>
they wil see this: <br>

![browser 1](https://github.com/Ovais09/seg3103_playground/blob/main/lab06/images/browseroutput1.png) <br>

if the user goes to this link: http://localhost:8080/login <br>
they will see this <br>

![browser 2](https://github.com/Ovais09/seg3103_playground/blob/main/lab06/images/browseroutput2.png)

### Output of "mvn test"

Afterwards, I did `mvn test` and it showed me this in my terminal: <br>
![tests 1](https://github.com/Ovais09/seg3103_playground/blob/main/lab06/images/mvn_test1.png)
![tests 2](https://github.com/Ovais09/seg3103_playground/blob/main/lab06/images/mvn_test2.png) <br>

All of the three tests pass <br>

Next I added another Selenium web driver test which will verify if setting the user name to "admin" and password to "password" will
bring the user to the admin page. <br>

This is the test case :

```java

@Test
  public void test3() {
    driver.get("http://localhost:8080/admin");

    WebElement username = driver.findElement(By.id("loginId"));
    username.sendKeys("admin");

    WebElement password = driver.findElement(By.id("loginPasswd"));
    password.sendKeys("password");

    WebElement signIn = driver.findElement(By.id("loginBtn"));
    signIn.click();

    String actualUrl="http://localhost:8080/admin";
    String expectedUrl= driver.getCurrentUrl();
    assertEquals(expectedUrl, actualUrl);

  }
```

### Output of "mvn test" for the new test

The output of `mvn test` for the new test is: <br>

![new test](https://github.com/Ovais09/seg3103_playground/blob/main/lab06/images/mvn_test3.png)
