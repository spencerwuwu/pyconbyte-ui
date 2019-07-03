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
    input_code: "INI_ARGS = [\"alex\", \"aaleex\"]",
    question: "<p>Source: <a href=\"https://leetcode.com/problems/long-pressed-name/\">https://leetcode.com/problems/long-pressed-name/</a></p><p>Your friend is typing his name into a keyboard.  Sometimes, when typing a character c, the key might get long pressed, and the character will be typed 1 or more times.</p><p>You examine the typed characters of the keyboard.  Return True if it is possible that it was your friends name, with some characters (possibly none) being long pressed.</p></br><h4>Example&nbsp1:</h4><strong>Input:&nbsp&nbsp</strong>name = \"alex\", typed = \"aaleex\"</br><strong>Output:&nbsp&nbsp</strong>True</br><strong>Explanation:&nbsp&nbsp</strong>'a' and 'e' in 'alex' were long pressed.</br><h4>Example&nbsp2:</h4><strong>Input:&nbsp&nbsp</strong>name = 'saeed', typed = 'ssaaedd'</br><strong>Output:&nbsp&nbsp</strong>False</br><strong>Explanation:&nbsp&nbsp</strong>'e' must have been pressed twice, but it wasn't in the typed output.</br><h4>Example&nbsp3:</h4><strong>Input:&nbsp&nbsp</strong>name = 'leelee', typed = 'lleeelee'</br><strong>Output:&nbsp&nbsp</strong>True</br><h4>Example&nbsp4:</h4><strong>Input:&nbsp&nbsp</strong>name = 'laiden', typed = 'laiden'</br><strong>Output:&nbsp&nbsp</strong>True</br><strong>Explanation:&nbsp&nbsp</strong>It's not necessary to long press any character.</br>"
  },
  { 
    topic: "Longest Substring Without Repeating Characters",
    name: "substring",
    main_code: "\ndef substring(string: str) -> int:\n",
    input_code: "INI_ARGS = [\"abcabcbb\"]"
  }
]
Codetest.create(codetest)
