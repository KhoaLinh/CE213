def ln(x):
    result = 0
    t = (x-1) / (x+1)
    for i in range(1, 10, 2):
        result += t**i / i
    return 2*result


b = ln(3.5)
print(b)
