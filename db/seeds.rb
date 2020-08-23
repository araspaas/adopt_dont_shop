# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@shelter1 = Shelter.create(name: "Van's pet shop", address: "3724 tennessee dr", city: "Rockford", state: "Illinois", zip: "61108")
@shelter2 = Shelter.create(name: "Bovice's pet shop", address: "37 ed vera dr", city: "Rockford", state: "Illinois", zip: "61109")
@shelter3 = Shelter.create(name: "Jared's pet shop", address: "24 simpson rd", city: "Rockford", state: "Illinois", zip: "61102")
@shelter4 = Shelter.create(name: "Old Greg's pet shop", address: "24 rona st", city: "Rockford", state: "Illinois", zip: "61102")
Pet.create(image: "Bellas-pic", name: "Bella", age: "5", sex: "female", shelter_id: "#{@shelter1.id}", description: "Fun Loving Dog", status: "ready for adoption")
Pet.create(image: "maisys-pic", name: "Maisy", age: "6", sex: "female", shelter_id: "#{@shelter2.id}", description: "Stomache on legs", status: "ready for adoption")
Pet.create(image: "Mr.cats-pic", name: "Mr. Cat", age: "9", sex: "male", shelter_id: "#{@shelter3.id}", description: "Has Russian accent", status: "ready for adoption")
Pet.create(image: "franks-pic", name: "Frank", age: "3", sex: "male", shelter_id: "#{@shelter4.id}", description: "He's a snake. does snake things", status: "ready for adoption")
