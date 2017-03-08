# -*- coding: utf-8 -*-
"""
Created on Tue Feb 14 11:35:27 2017

@author: ifmor
"""

#Distancia euclidiana
import numpy as np

datos=np.array([[0, 3, 0],
                [2, 0, 0],
                [0, 1, 3],
                [0, 1, 2],
                [-1, 0, 1],
                [1, 1, 1],
                [0, 0, 0]])

euclid = []

for i in range(6):
        
    resta=datos[-1]-datos[i]
    cuadrado=resta**2
    eucl=np.sqrt(cuadrado.sum(axis=0))
    euclid.append(eucl)

print(resta)
print(cuadrado)
print(eucl)
print(euclid)
