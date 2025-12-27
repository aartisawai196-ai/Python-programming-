'''given a list of words
words=['apple','banana','kiwi','cherry','mango']
create a dictinary that maps name and length odf word
example {"apple":5,"banana":6,"kiwi":4,"cherry:6","mango":5}
'''
words=["apple","banana","kiwi","cherry","mango"]
dict={}
for w in words:
    dict[w]=len(w)
print(dict)