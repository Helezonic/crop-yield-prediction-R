# CROP YIELD PREDICTION PROJECT BASED ON MULTIPLE LINEAR REGRESSION





The R code can be run as whole script from the WSL terminal as
### Rscript crop.r

Or you can run the code line by line or group of line as interactive mode with Ctrl + Enter

BUT

----
readline():
Interactive Mode: readline() is designed for interactive use. When the script encounters readline(), it pauses execution and waits for the user to type input in the R console (or RStudio console) and press Enter.
Not for Rscript: readline() will not work as intended when you run the script with Rscript. Rscript runs the script without any user interaction. It won't wait for input.

args[] (Command-Line Arguments):
Non-Interactive Mode: args[] (obtained using commandArgs()) is designed to receive input from the command line when the script is executed. The user provides the input at the time they run the script.
For Rscript: This is the correct way to pass input to a script that you're running with Rscript.

---
