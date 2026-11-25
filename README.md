My Git practice repository
# CMEECoursework

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


Assignment 3:
Rscript code/TreeHeight.R

input: data/trees.csv

Script: code/TreeHeight.R

Output: results/TreeHts.csv

height_m = Distance.m * tan(Angle.degrees * pi / 180) , measurement of 8 m at 45 degrees gives a height of 8 m




# In-class (practice)

# 1. variables.sh
bash code/variables.sh         
bash code/variables.sh 1 "two words"

# 2. boilerplate.sh
bash code/boilerplate.sh
chmod u+x code/boilerplate.sh
./code/boilerplate.sh

# 3. CheckLabel.sh
bash code/CheckLabel.sh oak
echo "$?"
## answer：Selected species: oak    0
bash code/CheckLabel.sh
echo "$?"
## answer：Usage: code/CheckLabel.sh oak|pine    2
bash code/CheckLabel.sh birch
echo "$?"
## answer：Unknown label: birch  1
bash code/CheckLabel.sh oak pine
echo "$?"
## answer：Usage: code/CheckLabel.sh oak|pine    2

# 4.ConcatenateTwoFiles.sh
shell_practice="data/shell_practice"
mkdir -p "$shell_practice"
printf 'oak\n' > "$shell_practice/first.txt"
printf 'pine\n' > "$shell_practice/second.txt"
bash code/ConcatenateTwoFiles.sh "$shell_practice/first.txt" "$shell_practice/second.txt" "$shell_practice/combined.txt"

# 5. tiff2_png.sh
project_root=$PWD
script_path=$project_root/code/tiff2_png.sh
mkdir "$shell_practice/images"
cd "$shell_practice/images"
pwd

# 6. boilerplate.py
## input: python3 code/boilerplate.py
## output: This is a boilerplate

# 7. using_name.py
## input:python3 code/using_name.py
## output:This module's name is: __main__

# 8. sysargv.py
## input: python3 code/sysargv.py and python3 code/sysargv.py oak 12
## output: Script name: code/sysargv.py
Number of arguments: 0
Arguments: []
Script name: code/sysargv.py
Number of arguments: 2
Arguments: ['oak', '12']

# 9. control_flow.py
## input: python3 code/control_flow.py
## output: 
22 is Even!
33 is Odd!
Largest divisor among 2, 3, 4 and 5: 5
Is 59 prime? True
Primes up to 20: [2, 3, 5, 7, 11, 13, 17, 19]

# 10. observations_practice.py
## input: python3 code/observations_practice.py
## output:
{'site': 'A', 'date': '2026-10-01', 'count': '2'}
{'site': 'A', 'date': '2026-10-02', 'count': ''}

# 11. debugme.py
## First input: %run code/debugme.py
## we get: ---------------------------------------------------------------------------
ZeroDivisionError                         Traceback (most recent call last)
File ~/Documents/Projects/Software/MulQuaBio/MQB/content/code/debugme.py:8
      5         z = x/y
      6     return z
----> 8 buggyfunc(20)

File ~/Documents/Projects/Software/MulQuaBio/MQB/content/code/debugme.py:5, in buggyfunc(x)
      3 for i in range(x):
      4     y = y-1
----> 5     z = x/y
      6 return z

ZeroDivisionError: division by zero
## then we input: %pdb
%run code/debugme.py
## this time we get output: ---------------------------------------------------------------------------
ZeroDivisionError                         Traceback (most recent call last)
code/debugme.py in <module>
      6     return z
      7 
----> 8 buggyfunc(20)

code/debugme.py in buggyfunc(x)
      3     for i in range(x):
      4         y = y-1
----> 5         z = x/y
      6     return z
      7 

ZeroDivisionError: division by zero
> code/debugme.py(5)buggyfunc()
      3     for i in range(x):
      4         y = y-1
----> 5         z = x/y
      6     return z
      7 

# 12. basic_io.R
## input: source("code/basic_io.R")
## output: Warning message in write.table(MyData[1, ], file = "results/MyData.csv", append = TRUE): “appending column names to file”

# 13. # boilerplate.R
## input: source("code/boilerplate.R")
## output: Argument 1 is a numeric
Argument 2 is a numeric
Argument riki is a character
Argument Tiki is a character

# 14. try.R
## input: lapply(1:15, function(i) doit(popn))
## output: [1] "Mean of this sample was: -0.11620822588674"
[1] "Mean of this sample was: -0.046851675599593"
[1] "Mean of this sample was: -0.0890228211466614"
[1] "Mean of this sample was: -0.124229742255296"
Error in doit(popn) : Couldn't calculate mean: too few unique values!
## input: result <- lapply(1:15, function(i) try(doit(popn), FALSE))
## output: [1] "Mean of this sample was: 0.0314144452816157"
[1] "Mean of this sample was: -0.233476945796405"
[1] "Mean of this sample was: -0.196681538928001"
[1] "Mean of this sample was: 0.0146969612111606"
[1] "Mean of this sample was: -0.234913159471725"
[1] "Mean of this sample was: -0.0497464588165691"
Error in doit(popn) : Couldn't calculate mean: too few unique values!
[1] "Mean of this sample was: 0.14834078393269"
[1] "Mean of this sample was: -0.271626543849156"
[1] "Mean of this sample was: -0.0661949014450446"
[1] "Mean of this sample was: -0.162429229014161"
[1] "Mean of this sample was: -0.0962033633604762"
[1] "Mean of this sample was: -0.025525566612254"
[1] "Mean of this sample was: -0.196872015952289"
[1] "Mean of this sample was: 0.1902095255599"

## input3: result
## output3: [[1]]
[1] "Mean of this sample was: 0.0314144452816157"

[[2]]
[1] "Mean of this sample was: -0.233476945796405"

[[3]]
[1] "Mean of this sample was: -0.196681538928001"

[[4]]
[1] "Mean of this sample was: 0.0146969612111606"

[[5]]
[1] "Mean of this sample was: -0.234913159471725"

[[6]]
[1] "Mean of this sample was: -0.0497464588165691"

[[7]]
[1] "Error in doit(popn) : Couldn't calculate mean: too few unique values!\n"
attr(,"class")
[1] "try-error"
attr(,"condition")
<simpleError in doit(popn): Couldn't calculate mean: too few unique values!>

[[8]]
[1] "Mean of this sample was: 0.14834078393269"

[[9]]
[1] "Mean of this sample was: -0.271626543849156"

[[10]]
[1] "Mean of this sample was: -0.0661949014450446"

[[11]]
[1] "Mean of this sample was: -0.162429229014161"

[[12]]
[1] "Mean of this sample was: -0.0962033633604762"

[[13]]
[1] "Mean of this sample was: -0.025525566612254"

[[14]]
[1] "Mean of this sample was: -0.196872015952289"

[[15]]
[1] "Mean of this sample was: 0.1902095255599"

## input4(after): result
## output4: [[1]]
[1] "Mean of this sample was: -0.123990166669901"

[[2]]
[1] "Error in doit(popn) : Couldn't calculate mean: too few unique values!\n"
attr(,"class")
[1] "try-error"
attr(,"condition")
<simpleError in doit(popn): Couldn't calculate mean: too few unique values!>

[[3]]
[1] "Mean of this sample was: 0.0818124335353192"

[[4]]
[1] "Mean of this sample was: -0.139655286435176"

[[5]]
[1] "Mean of this sample was: -0.0215429865826123"

[[6]]
[1] "Error in doit(popn) : Couldn't calculate mean: too few unique values!\n"
attr(,"class")
[1] "try-error"
attr(,"condition")
<simpleError in doit(popn): Couldn't calculate mean: too few unique values!>

[[7]]
[1] "Mean of this sample was: 0.00539838134322892"

[[8]]
[1] "Error in doit(popn) : Couldn't calculate mean: too few unique values!\n"
attr(,"class")
[1] "try-error"
attr(,"condition")
<simpleError in doit(popn): Couldn't calculate mean: too few unique values!>

[[9]]
[1] "Mean of this sample was: 0.146907839413106"

[[10]]
[1] "Mean of this sample was: -0.152002314653857"

[[11]]
[1] "Mean of this sample was: 0.0161321300360042"

[[12]]
[1] "Mean of this sample was: -0.241857872516043"

[[13]]
[1] "Mean of this sample was: -0.16077541901813"

[[14]]
[1] "Mean of this sample was: -0.0450988128783513"

[[15]]
[1] "Mean of this sample was: -0.162230652541811"

## input5: tryCatch(),and try()
## output5: Error in tryCatch() : argument "expr" is missing, with no default       /       Error in try() : argument "expr" is missing, with no default