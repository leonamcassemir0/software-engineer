#!/usr/bin/python
# -*- coding: utf-8 -*-
from abc import ABC

from code.Animal import Animal


class Mammal(Animal, ABC):
    def __init__(self, age, height, weight, position):
        super().__init__(age, height, weight, position)
        self.fur = None

    def fur_type(self, ):
        pass
