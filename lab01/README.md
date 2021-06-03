## Synopsis
Lab1 for SEG 3103 Software Quality Assurance


## Code Example
This code will compile and run the Java and Elixir files. The main functionality for both of these types of files is the same and that is to allow the user to input a numerator and demoninator such that the code will output its quotient. Furthermore, this codebase will provide tests to verify whether the output is valid or not. 

## Motivation

* Introduction to Git
* Introduction to GitHub
* Make your own local repository and push it to GitHub
* Share the repo with the professor and TAs
* Use feature branches and pull requests to push modifications

## Installation
Running the Java code:

![Java code](/lab01/assets/JavaRunning.png) 

Running the Elixir code:

![Elixir code](/lab01/assets/ElixirRunning.png)

* In order to run the Java code, The user first must download the newmath_java zip file from the SEG 3103 Lab01 section. Next, the user should extract the zip into a folder of the user's choosing. After doing this, the user must download and install [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10) and install a linux distro (I installed Ubuntu on my personal computer). After installing, WSL and Ubuntu, the user must install Java JDK and JRE using the apt package manager. After installing thr various softwares, the user can actually start running the Java code. The user should go to the `newmath_java` folder in the `newmath_java` folder and first compile it using `./bin/compile` then run it using `./bin/run`. 
* Assuming the user has WSL and a linux distro of their choosing installed, they can then proceed to running the Elxiir code. In order to run Elixir code on their machine, the user has to first install Elixir and Erlang. First, the user should proceed to the [Elixir website](https://elixir-lang.org/install.html#gnulinux) and download install Elixir on WSL. Once they have it installed, they should go to the `newmath_ex` folder in the `newmath_ex` folder and first run `./bin/compile` in the WSL terminal to compile the Elxir file. Finally, the user can run the elicir file by doing `./bin/run` and then do `NewmathEx.div(numerator, denominator)`. 

## API Reference
Depending on the size of the project, if it is small and simple enough the reference docs can be added to the README. For medium size to larger projects it is important to at least provide a link to where the API reference docs live.

## Tests
Running the Java Test:

![Java Test](/lab01/assets/JavaTest.png)

Running the Elxiir Test:

![Elixir Test](/lab01/assets/ElixirTest.png)

* In order to run the Java test, the user must navigate to the `newmath_java` folder in the `newmath_java` folder and then do `./bin/test
* To run the Elixir test, the user must navigate to the `newmath_ex` folder in the `newmath_ex` folder and then run `./bin/test`

## Contributors
[Ovais Azeem](https://github.com/Ovais09) 

## License
GNU General Public License v3.0

## Additonal Notes
I am using Windows 10 as my main operating system and the installation of Java and Elixir will depend on which operating system the user is using as their default. The installation will also depend on the configurations of various files on the user's local machine



