def substring(s: str) -> int:
    if len(s) == 0:
        return 0
    max_len = 1
    cur_len = 1
    n = len(s)
    str_start = 0
    str_end = 0
    i = 1
    while i < len(s):
        if s[i] in s[str_start:str_end + 1]:
            occuried = s.find(s[i], str_start, str_end + 1)
            new_len = i - occuried
            if new_len > max_len:
                max_len = new_len
            str_start = i
            cur_len = 1
        else:
            cur_len += 1
        str_end = i
        i += 1
    
    if cur_len > max_len:
        return cur_len
    else:
        return max_len

    """
    # dcnielsen90
    ls = ''
    l = 0
    for c in s:
        if c in ls:
            if len(ls) > l:
                l = len(ls)
            ls = ls[ls.index(c)+1:]
        ls+=c
    if len(ls) > l:
        l = len(ls)
    return l
    """


    """
    # leo39032506
    # Has error, idk why
    ans = 0
    sub = ''
    for char in s:
        if char not in sub:
            sub += char
            ans = max(ans, len(sub))
        else:
            cut = sub.index(char)
            sub = sub[cut+1:] + char
    return ans
    """

    """
    # yogesh111
    # Error, too
    if s == '':
        return 0
    longest_len = 1
    curr = []
    for x in s:
        if x in curr:
            index = curr.index(x)
            curr = curr[index+1:]
        curr.append(x)
        if longest_len < len(curr):
            longest_len = len(curr)
    return longest_len
    """
