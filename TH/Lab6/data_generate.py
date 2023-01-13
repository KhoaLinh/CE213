import random
# random.seed(32)
file = open("mem.list",'w')

for i in range(128):
    a = random.randint(0,4294967295)
    file.write(f"{a:032b}\n")