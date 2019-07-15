# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

DatabaseCleaner.clean_with(:truncation)

simple = [
  { name: "do_numbers",
    main_code: "\ndef do_numbers(a, b):\n    c = 100 if a > b else 0\n    if c > a:\n        return a\n    else:\n        return b\n", 
    input_code: "INI_ARGS = [5, 2]"}
]
Testcase.create(simple)

codetest = [
  { 
    topic: "Longest Pressed Name",
    name: "isLongPressedName",
    main_code: "\ndef isLongPressedName(name: str, typed: str) -> bool:\n",
    input_code: "INI_ARGS = [\\\"alex\\\", \\\"aaleex\\\"]",
    question: "<p>Source: <a target=\"_blank\" href=\"https://leetcode.com/problems/long-pressed-name/\">https://leetcode.com/problems/long-pressed-name/</a></p><p>Your friend is typing his name into a keyboard.  Sometimes, when typing a character c, the key might get long pressed, and the character will be typed 1 or more times.</p><p>You examine the typed characters of the keyboard.  Return True if it is possible that it was your friends name, with some characters (possibly none) being long pressed.</p></br><h3>Example&nbsp1:</h3><strong>Input:&nbsp&nbsp</strong>name = \"alex\", typed = \"aaleex\"</br><strong>Output:&nbsp&nbsp</strong>True</br><strong>Explanation:&nbsp&nbsp</strong>'a' and 'e' in 'alex' were long pressed.</br><h3>Example&nbsp2:</h3><strong>Input:&nbsp&nbsp</strong>name = 'saeed', typed = 'ssaaedd'</br><strong>Output:&nbsp&nbsp</strong>False</br><strong>Explanation:&nbsp&nbsp</strong>'e' must have been pressed twice, but it wasn't in the typed output.</br><h3>Example&nbsp3:</h3><strong>Input:&nbsp&nbsp</strong>name = 'leelee', typed = 'lleeelee'</br><strong>Output:&nbsp&nbsp</strong>True</br><h3>Example&nbsp4:</h3><strong>Input:&nbsp&nbsp</strong>name = 'laiden', typed = 'laiden'</br><strong>Output:&nbsp&nbsp</strong>True</br><strong>Explanation:&nbsp&nbsp</strong>It's not necessary to long press any character.</br>"
  },
  { 
    topic: "Count Emma",
    name: "count_emma",
    main_code: "\ndef count_emma(statement):\n",
    input_code: "INI_ARGS = [\\\"Emma is good developer. Emma is aslo a writer\\\"]",
    question: "<p>Source: <a href=\"https://pynative.com/python-basic-exercise-for-beginners/\">https://pynative.com/python-basic-exercise-for-beginners/</a></p><p>Return the number of times that the string “Emma” appears anywhere in the given string</p></br><h3>Example&nbsp1:</h3><strong>Input:&nbsp&nbsp</strong>\"Emma is a good developer. Emma is also a writer\"</br><strong>Output:&nbsp&nbsp</strong>2</br>"
  },
  { 
    topic: "Fraction to Decimal",
    name: "fraction_to_decimal",
    main_code: "\ndef fraction_to_decimal(numerator, denominator):\n",
    input_code: "INI_ARGS = [-50,8]",
    question: "<p>Source: <a href=\"https://leetcode.com/problems/fraction-to-recurring-decimal/\">https://leetcode.com/problems/fraction-to-recurring-decimal/</a></p><p>Given two integers representing the numerator and denominator of a fraction, return the fraction in string format.</br></br>If the fractional part is repeating, enclose the repeating part in parentheses.</p></br><h3>Example&nbsp1:</h3><strong>Input:&nbsp&nbsp</strong>numerator = 1, denominator = 2</br><strong>Output:&nbsp&nbsp</strong>\"0.5\"</br><h3>Example&nbsp2:</h3><strong>Input:&nbsp&nbsp</strong>numerator = 2, denominator = 1</br><strong>Output:&nbsp&nbsp</strong>\"2\"</br><h3>Example&nbsp3:</h3><strong>Input:&nbsp&nbsp</strong>numerator = 2, denominator = 3</br><strong>Output:&nbsp&nbsp</strong>\"0.(6)\"</br>"
  },
  { 
    topic: "Restore Ip Addresses",
    name: "restoreIpAddresses",
    main_code: "\ndef restoreIpAddresses(s):\n",
    input_code: "INI_ARGS = [\\\"25525511135\\\"]",
    question: "<p>Source: <a href=\"https://leetcode.com/problems/restore-ip-addresses/\">https://leetcode.com/problems/restore-ip-addresses/</a></p><p>Given a string containing only digits, restore it by returning all possible valid IP address combinations.</p></br><h3>Example:</h3><strong>Input:&nbsp&nbsp</strong>\"25525511135\"</br><strong>Output:&nbsp&nbsp</strong>[\"255.255.11.135\", \"255.255.111.35\"]</br>"
  },
  { 
    topic: "Reverse Check",
    name: "reverseCheck",
    main_code: "\ndef reverseCheck(number):\n",
    input_code: "INI_ARGS = [12121]",
    question: "<p>Source: <a href=\"https://pynative.com/python-basic-exercise-for-beginners/\">https://pynative.com/python-basic-exercise-for-beginners/</a></p><p>Reverse a given number and return true if it is the same as the original number.</p></br><h3>Example&nbsp1:</h3><strong>Input:&nbsp&nbsp</strong>121</br><strong>Output:&nbsp&nbsp</strong>True</br><h3>Example&nbsp2:</h3><strong>Input:&nbsp&nbsp</strong>23</br><strong>Output:&nbsp&nbsp</strong>False</br>"
  },
  { 
    topic: "Ugly Number",
    name: "ugly_number",
    main_code: "\ndef ugly_number(num):\n",
    input_code: "INI_ARGS = [-2147483648]",
    question: "<p>Source: <a href=\"https://leetcode.com/problems/ugly-number/\">https://leetcode.com/problems/ugly-number/</a></p><p>Write a program to check whether a given number is an ugly number.</br>Ugly numbers are positive numbers whose prime factors only include 2, 3, 5.</br></p></br><h3>Example&nbsp1:</h3><strong>Input:&nbsp&nbsp</strong>6</br><strong>Output:&nbsp&nbsp</strong>true</br><strong>Explanation:&nbsp&nbsp</strong>6 = 2 × 3</br><h3>Example&nbsp2:</h3><strong>Input:&nbsp&nbsp</strong>8</br><strong>Output:&nbsp&nbsp</strong>true</br><strong>Explanation:&nbsp&nbsp</strong>8 = 2 × 2 × 2</br><h3>Example&nbsp3:</h3><strong>Input:&nbsp&nbsp</strong>14</br><strong>Output:&nbsp&nbsp</strong>false</br><strong>Explanation:&nbsp&nbsp</strong>14 is not ugly since it includes another prime factor 7.<h3>Note&nbsp3:</h3><strong>1.&nbsp&nbsp</strong>1 is typically treated as an ugly number.</br><strong>2.&nbsp&nbsp</strong>Input is within the 32-bit signed integer range: [−231, 231 − 1].</br>Note that the answer must be a substring, \"pwke\" is a subsequence and not a substring.</br>"
  },
  { 
    topic: "Add Strings",
    name: "addStrings",
    main_code: "\ndef addStrings(num):\n",
    input_code: "INI_ARGS = [\"123\", \"456\"]",
    question: "<p>Source: <a href=\"https://leetcode.com/problems/add-strings/\">https://leetcode.com/problems/add-strings/</a></p><p>Given two non-negative integers num1 and num2 represented as string, return the sum of num1 and num2.</br><strong>Note</strong></br>          1. The length of both num1 and num2 is &lt; 5100.</br>          2. Both num1 and num2 contains only digits 0-9.</br>          3. Both num1 and num2 does not contain any leading zero.</br>          4. You must not use any built-in BigInteger library or convert the inputs to integer directly.</br></p></br>"
  },
  { 
    topic: "Longest Substring Without Repeating Characters",
    name: "substring",
    main_code: "\ndef substring(string: str) -> int:\n",
    input_code: "INI_ARGS = [\\\"abcabcbb\\\"]",
    question: "<p>Source: <a href=\"https://leetcode.com/problems/longest-substring-without-repeating-characters/\">https://leetcode.com/problems/longest-substring-without-repeating-characters/</a></p><p>Given a string, find the length of the longest substring without repeating characters.</p></br><h3>Example&nbsp1:</h3><strong>Input:&nbsp&nbsp</strong>\"abcabcbb\"</br><strong>Output:&nbsp&nbsp</strong>3</br><strong>Explanation:&nbsp&nbsp</strong>The answer is \"abc\", with the length of 3.</br><h3>Example&nbsp2:</h3><strong>Input:&nbsp&nbsp</strong>\"bbbbbbb\"</br><strong>Output:&nbsp&nbsp</strong>1</br><strong>Explanation:&nbsp&nbsp</strong>The answer is \"b\", with the length of 1.</br><h3>Example&nbsp3:</h3><strong>Input:&nbsp&nbsp</strong>\"pwwkew\"</br><strong>Output:&nbsp&nbsp</strong>3</br><strong>Explanation:&nbsp&nbsp</strong>The answer is \"wke\", with the length of 3.              Note that the answer must be a substring, \"pwke\" is a subsequence and not a substring.</br>"
  }
]
Codetest.create(codetest)
