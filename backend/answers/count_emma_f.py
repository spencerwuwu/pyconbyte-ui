# https://pynative.com/python-basic-exercise-for-beginners/

def count_emma_f(statement):
  count = 0
  for i in range(len(statement)-1):
    if statement[i:i+4] == 'Emma':
        count += 1
    # Cannot handle the
    # count += statement[i:i+4] == 'Emma'
  return count
