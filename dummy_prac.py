a = ['abc','def','ghi']

empty_list=[]
for x in range(len(a)):
    print(x)
    list(a[x])
    empty_list.append(list(a[x]))
