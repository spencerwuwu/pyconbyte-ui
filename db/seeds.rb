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
  { name: "substring",
    main_code: "\ndef substring(string: str) -> int:\n",
    input_code: "INI_ARGS = [\"abcabcbb\"]",
    inputs: "{\"inputs\": [[\"abcabcbb\"], [\"rraT\"], [\"D\"], [\"\"], [\"wwwaaaaaa\"], [\"ii\"], [\"Pp\"], [\"Mr33an\"], [\"pox\"], [\"eee\"]]}"
  }
]
Codetest.create(codetest)
