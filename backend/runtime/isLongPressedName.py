
# https://leetcode.com/problems/long-pressed-name
def isLongPressedName(name, typed):
    if len(name) == 0:
        return True
    if len(typed) == 0 or name[0] != typed[0]:
        return False

    i = 1
    j = 1
    while i < len(name) and j < len(typed):
        if name[i] == typed[j]:
            i += 1
        elif typed[j] != typed[j-1]:
            return False
        j += 1

    if i != len(name):
        return False

    for k in range(j, len(typed)):
        if typed[k] != typed[k-1]:
            return False

    return True

