
# 263_Ugly_Number

def ugly_number_f(num):
    if num <= 0:
        return False
    divisors = [2, 3, 5]
    for d in divisors:
        while num % d == 0:
            num = int(num / d)
    return num == 1
