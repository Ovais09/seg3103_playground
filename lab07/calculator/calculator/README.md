	
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
