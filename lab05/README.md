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










