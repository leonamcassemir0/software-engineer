#!/usr/bin/python
# -*- coding: utf-8 -*-

from Mammal import Mammal


class Cat(Mammal):

    def __init__(self, age, height, weight, position):
        super().__init__(age, height, weight, position)
        self.breed = None
        self.tail_fur = None

    def move_x(self):
        pass

    def move_y(self):
        pass

    def move_z(self):
        pass

    def tail_type(self, ):
        pass
