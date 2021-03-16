# Basic Credit Card Processing

###### _by Prateep Kul_

## Overview of code design

- Follow instruction with open case for new assignment
  - For example:
    - Instead of check case 'Charge' || 'Credit' in one case to save coding, then
      still keep it as seperate case for future expansion
- Platform: ruby which can be config to have both call from
  - command line and
  - STDIO both Mac and Linux
- Use simple array functions that most languages provided for easy understand

## Installation:

- This code develop in Mac using Ruby version 2.6, however any ruby in others platform should work.
- Using Gemfile with bundle for easy install required gems in this version and/or future development.

## How to run this code

For example: input file name are input1.txt, input2.txt

- Run as normal ruby command

```
      ruby myprogram.rb input1.txt input2.txt
```

- Run via command arguments

```
      ./myprogram input1.txt input2.txt
```

- input read from STDIN, like:

```
      ./myprogram < input1.txt
      ./myprogram < input1.txt
```

## How to test

Test logic to get result as expect from input file

- Input data use file input.txt
- Test with Rspec
- use guard while working (TDD)

## To Test run

```
$ guard
```

or

```
$ rspec
```
