#!/usr/bin/python
import random
import string
#variable to how big a random grid you want (i like squares)
for x in range(24):
    f = open('/Users/martinezme2/words2')
    punc = string.punctuation
    words = map(lambda x: x.strip(), f.readlines())
    password = ''.join(random.choice(words) for i in range(3)).capitalize()
    for i in range(2):
        password = ''.join(random.sample(password,len(password))).capitalize()
        password = ''.join(random.choice([i.upper(), i ]) for i in password )
    #sprankle some numbras
    password += str(random.randint(1, 9999))
    #turn the cube
    password = ''.join(random.sample(password,len(password)))
    #sprankle some punc
    password += ''.join(random.sample(punc,len(punc[:4])))
    #one last turn
    password = ''.join(random.sample(password,len(password)))
    #aaaaaaand chop that thang
    password = password[:15]
    print password
