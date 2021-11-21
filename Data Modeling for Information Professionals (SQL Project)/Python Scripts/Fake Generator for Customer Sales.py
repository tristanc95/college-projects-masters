#!/usr/bin/env python

from faker import Faker
import random

faker = Faker()

for i in range(381):
    
    idnum = 1
    date2021 = faker.date_between(start_date = '-28y', end_date = 'today')
    sum = idnum + i
    
    print(f'''({sum},''' ,random.randint(1,157),',', random.randint(8, 100),',',random.randint(1,10),',',random.randint(6, 9),'),')