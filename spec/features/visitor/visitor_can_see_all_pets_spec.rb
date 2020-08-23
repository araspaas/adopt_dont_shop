require 'rails_helper'

describe "Visitors" do
  before :each do
    @shelter1 = Shelter.create(name: "Van's pet shop", address: "3724 tennessee dr", city: "Rockford", state: "Illinois", zip: "61108")
    @shelter2 = Shelter.create(name: "Bovice's pet shop", address: "37 tennessee dr", city: "Rockford", state: "Illinois", zip: "61108")
    @shelter3 = Shelter.create(name: "Jared's pet shop", address: "24 tennessee dr", city: "Rockford", state: "Illinois", zip: "61108")
    @shelter4 = Shelter.create(name: "Old Greg's pet shop", address: "24 rona st", city: "Rockford", state: "Illinois", zip: "61102")
    @pet1 = Pet.create(image: "Bellas-pic", name: "Bella", age: "5", sex: "female", shelter_id: "#{@shelter1.id}")
    @pet2 = Pet.create(image: "maisys-pic", name: "Maisy", age: "6", sex: "female", shelter_id: "#{@shelter2.id}")
    @pet3 = Pet.create(image: "Mr.cats-pic", name: "Mr. Cat", age: "9", sex: "male", shelter_id: "#{@shelter3.id}")
    @pet4 = Pet.create(image: "franks-pic", name: "Frank", age: "3", sex: "male", shelter_id: "#{@shelter4.id}")
  end
  describe "when they visit /pets" do
    it "Displays all pets" do

      visit "/pets"

      within ".pets_list" do
        expect(page).to have_content(@pet1.name)
        expect(page).to have_content(@pet2.name)
        expect(page).to have_content(@pet3.name)
        expect(page).to have_content(@pet4.name)
      end
    end
  end
end
