# List Comprehension
D0 = dict(zip(('a','b','c','d','e'),(1,2,3,4,5,))); print('D0: ' + str(D0))
print('Remember... dictionaries are not sorted..!')
L1 = range(10); print('L1: ' + str(L1))
L2 = sorted([i for i in L1 if i in D0]); print('L2: ' +str(L2))
print('L2 explained:')
print('"if i in D0" is never true because ("a" in D0) = T, but (1 in D0) = F')
print('otherwise, [x for x in alist] returns a list of all items in alist')
print('...in other words... it returns another list exactly the same')
L3 = [1,3,5]
LD0 = [D0[i] for i in D0]; print('LD0: ' + str(LD0))
