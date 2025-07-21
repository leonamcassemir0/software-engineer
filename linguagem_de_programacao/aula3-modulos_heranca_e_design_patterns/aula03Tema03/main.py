from code.AnimalFactory import AnimalFactory

new_dog = AnimalFactory.new_animal(animal_type='dog', height=20, weight=10, age=1)
new_cat = AnimalFactory.new_animal(animal_type='cat', height=20, weight=10, age=1)

print(new_dog.position)
print(new_cat.position)
