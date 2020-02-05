@ECHO OFF

REM create bin directory if it doesn't exist
if not exist ..\bin mkdir ..\bin

REM delete output from previous run
del ACTUAL.TXT

REM compile the code into the bin folder
<<<<<<< HEAD
javac  -cp ..\src -Xlint:none -d ..\bin ..\src\main\java\circus\*.java
=======
javac  -cp ..\src -Xlint:none -d ..\bin ..\src\main\java\circus\*.java ..\src\main\java\circus\animal\*.java ..\src\main\java\circus\stuff\*.java
>>>>>>> origin/improved
IF ERRORLEVEL 1 (
    echo ********** BUILD FAILURE **********
    exit /b 1
)
REM no error here, errorlevel == 0

REM run the program, feed commands from input.txt file and redirect the output to the ACTUAL.TXT
<<<<<<< HEAD
java11 -classpath ..\bin circus.Circus > ACTUAL.TXT
=======
java -classpath ..\bin circus.Circus > ACTUAL.TXT
>>>>>>> origin/improved

REM compare the output to the expected output
FC ACTUAL.TXT EXPECTED.TXT
