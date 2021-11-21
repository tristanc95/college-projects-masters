#!/usr/bin/env python

from faker import Faker
import random

faker = Faker()

for i in range(381):
    
    idnum = 1
    date2021 = faker.date_between(start_date = '-28y', end_date = 'today')
    sum = idnum + i
    
    print(f'''({sum}, '{date2021}',''',random.randint(1,110),',', random.randint(1,39),'),')