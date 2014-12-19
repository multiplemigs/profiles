#!/usr/bin/python

import random

for x in range(0, 23):
    f = open('/usr/share/dict/words')
    words = map(lambda x: x.strip(), f.readlines())
    password = '-'.join(random.choice(words) for i in range(2)).capitalize()
    password += str(random.randint(1, 9999))
    password = ''.join(random.sample(password,len(password)))
    if password.startswith('-'):
        password = password[1:]

    if password.endswith('-'):
        password = password[:-1]
    if len(password) > 8:
        password = password[1:8]
        password += str(random.randint(1,99))
        password = ''.join(random.sample(password,len(password)))
        if password.startswith('-'):
            password = password[:1]
            password += str(random.randint(1,9))

        if password.endswith('-'):
            password = password[:-1]
            password += str(random.randint(1,9))

    print password
