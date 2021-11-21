#!/usr/bin/env python

from faker import Faker

faker = Faker('en_US')

for i in range(40):

    idnum = 2
    fname = faker.first_name()
    lname = faker.last_name()
    address = faker.street_address()
    phone = faker.msisdn()
    city = faker.city()
    state = faker.country_code()
    postal = faker.postcode()
    country = faker.current_country_code()
    hiredate = faker.date_between(start_date = '-28y', end_date = 'today')
    sum = idnum + i

    print(f'''({sum}, '{fname}', '{lname}', '{address}', '{city}','{state}','{postal}','{phone}', '{hiredate}'),''')