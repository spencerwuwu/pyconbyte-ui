def reverseCheck_f(number):
  originalNum = number
  reverseNum=0
  while(number > 0):
    reminder = number % 10
    reverseNum  = (reverseNum *10) + reminder
    number = int(number // 10)
  if(originalNum  == reverseNum):
    return True
  else:
    return False
