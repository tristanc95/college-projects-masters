#!/usr/bin/env python

from faker import Faker

faker = Faker('en_US')

for i in range(9):

    idnum = 1
    company = faker.company()
    address = faker.street_address()
    phone = faker.msisdn()
    city = faker.city()
    state = faker.country_code()
    postal = faker.postcode()
    country = faker.current_country_code()
    fax = faker.phone_number()
    sum = idnum + i

    print(f'''({sum}, '{company}', '{address}', '{city}','{state}','{postal}', '{country}','{phone}', '{fax}'),''')