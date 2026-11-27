My Git practice repository
# CMEECoursework
ChatGPT was used to help organise and draft this README.
# Assignmen 1
## 1. FASTA Practical

The five FASTA questions are answered in `code/unixPrac1.txt`.

Run the commands from the `code/` directory:

```bash
cd code
```

The commands analyse the FASTA files in `../data/fasta/`, including sequence length, ATGC occurrences and the (A+T)/(G+C) ratio.

## 2. Shell Scripts

Both scripts should be run from the project root directory.

**tabtocsv.sh** converts tabs into commas:

```bash
bash code/tabtocsv.sh data/test/test.tsv
```

Output: `results/test.tsv.csv`

**csvtospace.sh** converts commas into spaces:

```bash
bash code/csvtospace.sh data/test/test.csv
```

Output: `results/test.csv.txt`

Both scripts check the input arguments and file accessibility, create the results directory if necessary, and report errors if conversion fails.

## 3. Testing

The scripts were tested using files containing empty fields.

For `tabtocsv.sh`, the expected output includes:

```text
Oak,,12
```

For `csvtospace.sh`, the expected output includes two consecutive spaces between `Oak` and `12`.

Other tests include missing arguments, nonexistent input files, filenames containing spaces, repeated execution and failure to create the results directory.

The original input files are not modified. Generated results are stored in `results/` and are not committed.

## 4. Dependencies

Bash and standard UNIX utilities: `wc`, `tail`, `tr`, `grep`, `awk`, `mkdir` and `basename`.

No additional packages are required.

## 5. Limitations and References

The converters use simple character replacement with `tr`. They do not handle quoted delimiters or embedded newlines as full CSV/TSV parsers.

Use ChatGPT to assist in understanding the feedback, improving the script and documentation, as well as writing the README.


# Assignment 2
Project Description

This project cleans and validates synthetic Silwood tree survey data. It checks each record against the rules in data/silwood_trees_metadata.md, separates valid and invalid records, and summarises the number of oak records by species.

The original data are stored in data/silwood_trees_raw.csv. The original data file is not modified.

Requirements

Python 3

No additional Python packages are required. The script uses standard Python libraries.

Project Structure

CMEECourseWork/
├── code/
│   ├── clean_silwood_trees.py
│   └── test_silwood_trees.py
├── data/
│   ├── silwood_trees_raw.csv
│   └── silwood_trees_metadata.md
└── results/

How to Run

Run the following commands from the project root directory (CMEECourseWork).

First, run the tests:

python3 code/test_silwood_trees.py

Then, run the cleaning script:

python3 code/clean_silwood_trees.py

The cleaning script reads the raw data, validates the records, and writes the output files to the results/ directory. The directory is created automatically if it does not already exist.

Data Validation

Each record is checked for:

Valid and unique record IDs.

Valid locations.

Recognised genus and species names and valid genus-species combinations.

Valid distance and angle values, including their allowed ranges.

Valid records are stored in the clean dataset. Invalid records are stored separately with their source row numbers and rejection reasons.

When duplicate record IDs occur, the first otherwise valid record is accepted. Invalid records do not reserve an ID.

Output Files

The script produces three CSV files:

results/silwood_trees_clean.csv: Valid records with standardised text values, sorted by record ID.

results/silwood_tree_issues.csv: Invalid records with their source row numbers and reasons for rejection.

results/oak_species_counts.csv: Counts of accepted oak records by species.

Only accepted records are used to calculate the oak species counts. This means invalid records do not contribute to the summary.


# Assignment 3:
This repository contains two practical exercises
Calculate tree heights – calculate tree heights from distance and angle measurements.

Pound Hill species richness – analyse plant species richness and abundance under different cultivation treatments.

Requirements:R 

1. Calculate tree heights

Files

code/TreeHeight.R: calculates tree heights using the supplied tree data.

code/get_TreeHeight.R: a generalised script that accepts a CSV file path as a command-line argument.

data/trees.csv: input data containing Species, Distance.m and Angle.degrees.

Run

From the repository root:

Rscript code/TreeHeight.R

To run the generalised script:

Rscript code/get_TreeHeight.R data/trees.csv

Outputs

results/TreeHts.csv: tree measurements with an additional height_m column.

The output files can be recreated by running the scripts again.

2. Pound Hill species richness

Files

code/pound_hill_analysis.R: analyses species richness and abundance.

data/pound_hill_data.csv: species abundance data.

data/pound_hill_meta_data.csv: sampling metadata.

Run

From the repository root:

Rscript code/pound_hill_analysis.R

Outputs

results/pound_hill_plot_richness.csv: summary of mean species richness and abundance by cultivation treatment, block and plot.

results/pound_hill_plot_richness.pdf: boxplots showing species richness and total abundance across cultivation treatments.






# In-class (practice)

1. variables.sh
This script demonstrates the use of shell variables, command-line arguments, user input and basic arithmetic.

Input: Optional command-line arguments and interactive keyboard input (a string and two integers).

Output: Displays the arguments, variable values and calculated sum in the terminal. No files are created.
Run:

bash code/variables.sh

You can also provide command-line arguments:

bash code/variables.sh 1 "two words"

Check:

bash -n code/variables.sh

2. MyExampleScript.sh
This script demonstrates how to define and use shell variables. It stores a greeting and the current user's login name, then prints them in the terminal.

Input: Uses the USER environment variable. No input files or command-line arguments are required.

Output: Prints a greeting and the username in the terminal. No files are created.

Run:
bash code/MyExampleScript.sh

Check:
bash -n code/MyExampleScript.sh

3. boilerplate.sh
This script provides a basic template for a Bash shell script. It demonstrates the use of a shebang, comments, a simple command and an exit status.

Input: No input files or command-line arguments are required.

Output: Prints a short message in the terminal. No files are created.

Run:
bash code/boilerplate.sh

Check:
bash -n code/boilerplate.sh

4. CheckLabel.sh
This script checks whether exactly one valid species label (oak or pine) has been provided. It demonstrates the use of conditional statements and exit statuses in Bash.

Input: One command-line argument: oak or pine. No input files are required.

Output: Prints the selected species label in the terminal. Returns exit status 0 for a valid label, 1 for an unknown label and 2 if the number of arguments is incorrect. No files are created.

Run:
bash code/CheckLabel.sh oak

You can also test an invalid label:
bash code/CheckLabel.sh birch

Check:
bash -n code/CheckLabel.sh
bash code/CheckLabel.sh oak
echo "$?"
The final command should return 0.

5. CountLines.sh
This script counts the number of lines in a specified text file using the wc -l command.

Input: One command-line argument: the path to a text file.

Output: Displays the filename and its line count in the terminal. No files are created.

Run:
bash code/CountLines.sh sandbox/test.txt

Check:
bash -n code/CountLines.sh
bash code/CountLines.sh sandbox/test.txt

6. ConcatenateTwoFiles.sh
This script combines the contents of two input files into a single output file using the cat command.

Input: Three command-line arguments: the paths to two input files and one output file.

Output: Creates a merged file containing the contents of both input files in order. The output file is saved at the specified path. If it already exists, its previous contents are overwritten.

Run:
bash code/ConcatenateTwoFiles.sh sandbox/first.txt sandbox/second.txt results/merged.txt

Check:
bash -n code/ConcatenateTwoFiles.sh
cat results/merged.txt

7. tiff2_png.sh
This script converts all TIFF images with the .tif extension in the current working directory into PNG images using ImageMagick.

Input: All .tif image files in the current working directory. No command-line arguments are required.

Output: Creates corresponding .png files in the same directory. Existing PNG files with the same names may be overwritten.

Requirements: Bash and ImageMagick (convert or magick, depending on the installed version).

Run:

This script works in the current directory, so first enter the directory containing your test TIFF images:
project_root=$PWD
script_path=$project_root/code/tiff2_png.sh
cd sandbox/images
bash "$script_path"
cd "$project_root"


Check:
bash -n code/tiff2_png.sh
command -v convert
command -v magick


After running the script, check that the corresponding PNG files have been created. Use copies of TIFF images for testing rather than your original files.

8. loops.py
This script demonstrates the use of `for` and `while` loops in Python.

Requirements: Python 3


Run

python3 code/loops.py

Inputs and outputs:
- Input: No external input files required.
- Output: Displays loop results in the terminal.
- No output files are created.

8. cfexercises1.py
This script contains exercises on Python functions and control flow, including examples of calculating factorials.

Input: No external input files are required. The functions use predefined values in the script.

Output: Displays the results of the exercises in the terminal. No output files are created.

Requirements: Python 3. No additional packages are required.

Run:

From the project root:
python3 code/cfexercises1.py

Check:
python3 -m py_compile code/cfexercises1.py

9. cfexercises2.py
This script contains exercises combining for loops, while loops and conditional statements. It defines several functions that print "hello" according to different conditions.

Input: No external input files or command-line arguments are required. The functions use predefined arguments in the script.

Output: Prints "hello" messages in the terminal. No output files are created.

Requirements: Python 3. No additional packages are required.

Run:

From the project root:
python3 code/cfexercises2.py

Check:
python3 -m py_compile code/cfexercises2.py

10. MyExampleScript.py
This script demonstrates a simple Python calculation by squaring the number 2 and printing the result.

Input: No external input files or command-line arguments are required.

Output: Prints the result 4 in the terminal. No output files are created.

Requirements: Python 3. No additional packages are required.

Run:

From the project root:
python3 code/MyExampleScript.py

Check:
python3 -m py_compile code/MyExampleScript.py

11. boilerplate.py
This script provides a basic Python program structure and demonstrates a simple print statement.

Input: No external input files or command-line arguments are required.

Output: Prints "This is a boilerplate" in the terminal. No output files are created.

Requirements: Python 3. No additional packages are required.

Run:

From the project root:
python3 code/boilerplate.py

Check:
python3 -m py_compile code/boilerplate.py

12. using_name.py
This script demonstrates the special Python variable __name__ and explains the difference between running a script directly and importing it as a module.

Input: No external input files or command-line arguments are required.

Output: Prints This module's name is: __main__ when run directly. No output files are created.

Requirements: Python 3. No additional packages are required.

Run:

From the project root:
python3 code/using_name.py

Check:
python3 -m py_compile code/using_name.py

13. sysargv.py
This script demonstrates how Python uses sys.argv to access command-line arguments. It displays the script name, the number of arguments and the arguments provided by the user.

Input: Optional command-line arguments. No external input files are required.

Output: Prints the script name, number of arguments and supplied arguments in the terminal. No output files are created.

Requirements: Python 3. Uses the built-in sys module, so no additional packages are required.

Run:

From the project root:
python3 code/sysargv.py
python3 code/sysargv.py oak 12

Check:
python3 -m py_compile code/sysargv.py

14. control_flow.py
This script demonstrates the use of functions and conditional statements in Python. It includes examples of checking whether numbers are even or odd, finding divisors, and identifying prime numbers.

Input: Predefined numbers in the script. No external input files are required.

Output: Prints whether numbers are even or odd, the largest divisor among given numbers, and a list of prime numbers. No output files are created.

Requirements: Python 3. Uses built-in Python functions only; no additional packages are required.

Run:

From the project root:
python3 code/control_flow.py

Check:
python3 -m py_compile code/control_flow.py
python3 -m doctest -v code/control_flow.py

15. test_control_flow.py
This script tests the functions defined in control_flow.py using assertions. It checks normal cases, edge cases, boundary conditions and expected failures.

Input: Test values defined in the script. It imports functions from control_flow.py. No external input files are required.

Output: No output is produced when all tests pass. If an assertion fails, Python displays an error message. No output files are created.

Requirements: Python 3. Uses built-in Python assertions and imports functions from control_flow.py. No additional packages are required.

Run:

From the project root:
python3 code/test_control_flow.py

Check:
python3 -m py_compile code/test_control_flow.py
python3 code/test_control_flow.py

16. observations_practice.py
This script reads observation data from a CSV file and uses Python functions to calculate and display summaries for different observation sites.

Input: data/bootcamp_observations.csv, which contains the observation data.

Output: Prints summary information for each observation site in the terminal. No output files are created.

Requirements: Python 3. Uses the built-in csv module, so no additional packages are required.

Run:

From the project root:
python3 code/observations_practice.py

Check:
python3 -m py_compile code/observations_practice.py

17. test_observations_practice.py
This script tests the functions defined in observations_practice.py. It checks how the program handles valid observation data, boundary cases and invalid data.

Input: The following CSV files are used for testing:
- data/bootcamp_observations.csv
- data/bootcamp_observations_boundary.csv
- data/bootcamp_observations_invalid.csv
Output: No output is produced when all tests pass. If a test fails, Python displays an error message. No output files are created.

Requirements: Python 3. Uses built-in Python testing features and imports functions from observations_practice.py. No additional packages are required.

Run:

From the project root:
python3 code/test_observations_practice.py

Check:
python3 -m py_compile code/test_observations_practice.py
python3 code/test_observations_practice.py

18. debugme.py
This script demonstrates a debugging exercise using a function that contains a division-by-zero error. It helps users identify errors and understand how to debug Python code.

Input: The function is called with a predefined value of 20. No external input files are required.

Output: Raises a ZeroDivisionError when the function attempts to divide by zero. No output files are created.

Requirements: Python 3. Uses built-in Python features only; no additional packages are required. The %pdb command is an IPython magic command and should be commented out when running the script with standard Python.

Run:

From the project root:
python3 code/debugme.py

Check:
python3 -m py_compile code/debugme.py

19. basic_io.R
Requirements： R (base R)
From the project root directory, run:

Rscript code/basic_io.R

Alternatively, run it in an R session:

source("code/basic_io.R")
Input: data/trees.csv

Output: Warning message in write.table(MyData[1, ], file = "results/MyData.csv", append = TRUE):
“appending column names to file”

20. boilerplate.R

This script demonstrates how to create and use a function in R. The function my_function() takes two arguments, prints their values and data types, and returns them as a vector. It is tested with numeric and character arguments.

Requirements：R (base R)
From the project root directory, run:

Rscript code/boilerplate.R

Alternatively, open an R session and run:

source("code/boilerplate.R")
Input: Two arguments supplied directly when calling my_function().

Output: Printed information about each argument and a returned vector.

Files: The script does not read input files or create output files.

21. control_flow.R
This script demonstrates control flow in R, including the use of loops to repeat operations while a condition is met.

Requirements：R (base R)
From the project root directory, run:

Rscript code/control_flow.R

Alternatively, open an R session and run:

source("code/control_flow.R")

Input: Conditions and values defined within the R script.

Output: Results printed in the R console.

Files: The script does not require external input files or create output files.

22. r_conditionals.R
This script demonstrates the use of conditional statements in R. It contains functions that check whether a number is even, whether it is a power of 2, and whether it is prime. The functions use if, else if and else to return different messages depending on the input.

Requirements：R (base R)


Run the following command from the project root directory:

Rscript code/r_conditionals.R

Alternatively, open R and run:

source("code/r_conditionals.R")


The functions take numbers supplied as arguments. The script includes example function calls to demonstrate their behaviour.

Input: Numeric values provided to the functions.

Output: Messages printed in the R console describing the numbers.

The script does not read external input files or create output files.

23. break.R
This script demonstrates how to use the break statement in R to exit a loop when a specified condition is met.

It uses a while loop that starts with i = 0. The loop continues until i reaches 10, at which point break stops the loop. The values from 0 to 9 are printed in the R console.

Requirements：R (base R)

Run the following command from the project root directory:

Rscript code/break.R

Alternatively, open R and run:

source("code/break.R")

Input: No external input files are required. The initial value and stopping condition are defined in the script.

Output: The values from 0 to 9 are printed in the R console.

Files created: None.
Run the script and check that the console displays the numbers from 0 to 9, and that the loop stops when i reaches 10.

24. next.R
This script demonstrates how to use the next statement in R to skip an iteration of a loop.

It uses a for loop to go through the numbers from 1 to 10. When the number is even, next skips that iteration. Therefore, only the odd numbers (1, 3, 5, 7 and 9) are printed.

Requirements：R (base R)

Run the following command from the project root directory:

Rscript code/next.R

Alternatively, open R and run:

source("code/next.R")


Input: No external input files are required. The loop range (1 to 10) is defined in the script.

Output: The odd numbers from 1 to 9 are printed in the R console.

Files created: None.

Run the script and check that the console displays 1, 3, 5, 7 and 9, with even numbers skipped.

25. try.R
This script demonstrates how to handle errors in R using try(). It repeatedly samples data and calculates the sample mean. If a calculation fails because the sample contains too few unique values, try() catches the error and allows the remaining iterations to continue.

The script uses lapply() and a for loop to demonstrate two ways of applying try().

Requirements：R (base R)

Run the following command from the project root directory:

Rscript code/try.R

Alternatively, open an R session in the project root and run:

source("code/try.R")

Input: The script generates and samples data within R. No external input files are required.

Output: Results are printed in the R console. A list named result stores the outcomes of the repeated calculations, including any errors caught by try().

Files created: No external files are created or modified.

26. browse.R
This script demonstrates how to debug an R function using browser(). It defines an Exponential() function that simulates exponential population growth over a number of generations.

The browser() command is placed inside the for loop. When the script runs, R pauses at this breakpoint and allows the user to inspect variables and step through the function.

Requirements：R (base R)

Run this script from an interactive R console, with the working directory set to the project root:

source("code/browse.R")

Inputs: The Exponential() function uses default arguments: N0 = 1, r = 1, and generations = 10.

Output: A plot showing exponential population growth.

Files created: No external input or output files are required.

27. observations_practice.R
This script practises importing, validating, cleaning and summarising ecological observation data. It also includes checks to confirm that the data are processed correctly and produces a plot using base R.

Requirements

R (base R)

Input Files

The script uses three CSV files stored in the data/ directory:

Ordinary observations

Boundary observations

Invalid observations

These files are used to test data importing and validation, including missing values and invalid observation counts.

Run the script from the project root directory:

Rscript code/observations_practice.R

Alternatively, from an interactive R session:

source("code/observations_practice.R")

28. data_wrang.R
This script processes the Pound Hill dataset, converting the original wide-format data into long format for easier analysis.

Requirements

R

The reshape2 package

Install the package if needed:

install.packages("reshape2")

Input Files

The script reads:

data/pound_hill_data.csv

data/pound_hill_meta_data.csv

How to Run

From the project root directory:

Rscript code/data_wrang.R

Output

The script creates:

results/pound_hill_long.csv

29. data_wrang_tidy.R
This script processes the Pound Hill dataset using tidyverse tools. It performs the same data wrangling as data_wrang.R, but uses dplyr and tidyr instead of reshape2.

Requirements

R

dplyr

tidyr

Install the packages if needed:

install.packages("dplyr")
install.packages("tidyr")

Input Files

data/pound_hill_data.csv

data/pound_hill_meta_data.csv

How to Run

From the project root directory:

Rscript code/data_wrang_tidy.R

Output

results/pound_hill_long.csv