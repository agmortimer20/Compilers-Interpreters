a = int(input())
b = int(input())
c = int(input())

#(a + 95) * ((b * 16) / c) - a + 20;

d = b * 16
d = d / c
d = d * (a + 95)
d = d - a
d = d + 20

print(d)