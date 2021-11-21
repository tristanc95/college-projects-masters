#!/usr/bin/env python

from faker import Faker
import random

faker = Faker()

for i in range(40):
    
    idnum = 1
    sum = idnum + i
    
    print(f'''({sum},''',random.randint(45000,101000),'),')