#!/usr/bin/env python

from faker import Faker

faker = Faker('en_US')

for i in range(110):

    idnum = 2
    fname = faker.first_name()
    lname = faker.last_name()
    address = faker.street_address()
    phone = faker.msisdn()
    city = faker.city()
    state = faker.country_code()
    postal = faker.postcode()
    country = faker.current_country_code()
    sum = idnum + i

    print(f'''({sum}, '{fname}', '{lname}', '{address}', '{city}','{state}','{postal}', '{country}','{phone}'),''')