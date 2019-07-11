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
    topic: "",
    name: "count_emma",
    main_code: "\ndef count_emma(statement):\n",
    input_code: "INI_ARGS = [\\\"Emma is good developer. Emma is aslo a writer\\\"]"
  },
  { 
    topic: "",
    name: "fraction_to_decimal",
    main_code: "\ndef fraction_to_decimal(numerator, denominator):\n",
    input_code: "INI_ARGS = [-50,8]"
  },
  { 
    topic: "",
    name: "restoreIpAddresses",
    main_code: "\ndef restoreIpAddresses(s):\n",
    input_code: "INI_ARGS = [\\\"25525511135\\\"]"
  },
  { 
    topic: "",
    name: "reverseCheck",
    main_code: "\ndef reverseCheck(number):\n",
    input_code: "INI_ARGS = [12121]"
  },
  { 
    topic: "",
    name: "ugly_number",
    main_code: "\ndef ugly_number(num):\n",
    input_code: "INI_ARGS = [-2147483648]"
  },
  { 
    topic: "",
    name: "add_digits",
    main_code: "\ndef add_digits(num):\n",
    input_code: "INI_ARGS = [38]"
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
