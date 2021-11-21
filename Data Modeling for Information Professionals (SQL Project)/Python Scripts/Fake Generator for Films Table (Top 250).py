#!/usr/bin/env python
#!import items
import sys, os
import random
from faker import Faker
from imdb import IMDb

#defining items
faker = Faker('en_US')
ia = IMDb()
def blockPrint():
    sys.stdout = open(os.devnull, 'w')
def enablePrint():
    sys.stdout = sys.__stdout__

#for loop one to generate all of the SQL items
for i in range(116):
    #generating ID
    idnum = 1
    sum = idnum + i
    
    #Pulling a random choice from top 250 movies from IMDB
    movies = ia.get_top250_movies()
    movie = random.choice(movies)
    year = movie['year']
    storage = ia.get_movie(movie.movieID)
    
    #For loop 2 to print director name / hiding it from output
    for director in storage['directors']:
        blockPrint()
        print(director)
    
    #For loop 3 to print director name / hiding it from output    
    for genre in storage['genres']:
        blockPrint()
        print(genre)
    
    #Generate random numbers for manufacturer and price
    manufac = random.randint(1,9)
    price = random.randint(9, 30)
    
    #Re-enables print command and prints out the MySQL ready addition
    enablePrint()
    print(f'''({sum}, {manufac}, '{movie}', {price}, '{year}', '{genre}','{director}'), ''')
