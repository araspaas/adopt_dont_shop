require 'rails_helper'

describe "visitors" do
  before :each do
    @shelter1 = Shelter.create(name: "Van's pet shop", address: "3724 tennessee dr", city: "Rockford", state: "Illinois", zip: "61108")
    @shelter2 = Shelter.create(name: "Bovice's pet shop", address: "37 tennessee dr", city: "Rockford", state: "Illinois", zip: "61108")
    @shelter3 = Shelter.create(name: "Jared's pet shop", address: "24 tennessee dr", city: "Rockford", state: "Illinois", zip: "61108")
    @shelter4 = Shelter.create(name: "Old Greg's pet shop", address: "24 rona st", city: "Rockford", state: "Illinois", zip: "61102")
  end
  describe "visit shelter index" do

    it "can see all shelters from shelter index" do

      visit '/shelters'

      within ".shelters_list" do
        expect(page).to have_content("Van's pet shop")
        expect(page).to have_content("Bovice's pet shop")
        expect(page).to have_content("Jared's pet shop")
      end
    end
  end

  describe "visit shelter show" do
    it "can see shelters details" do

      visit "/shelters/#{@shelter1.id}"

      within ".shelter_details" do
        expect(page).to have_content(@shelter1.name)
        expect(page).to have_content(@shelter1.address)
        expect(page).to have_content(@shelter1.city)
        expect(page).to have_content(@shelter1.state)
        expect(page).to have_content(@shelter1.zip)
      end
    end
  end

  describe "visit new shelter" do
    it "can create a new shelter" do

      visit "/shelters"
      click_link "New Shelter"

      expect(current_path).to eq("/shelters/new")

      fill_in "Name", with: "Utapau's Separatists"
      fill_in "Address", with: "1234 hello there ave"
      fill_in "City", with: "Ahh"
      fill_in "State", with: "General Kenobi"
      fill_in "Zip", with: "123456"
      click_on "Create Shelter"

      expect(current_path).to eq("/shelters")
      expect(page).to have_content("Utapau's Separatists")
    end
  end

  describe "can visit update shelter" do
    it "can update a shelter" do
      @shelter5 = Shelter.create(name: "Utapau's Separatists", address: "1234 hello there ave", city: "Ahh", state: "General Kenobi", zip: "123456")

      visit "/shelters/#{@shelter5.id}"
      click_link "Update Shelter"

      expect(current_path).to eq("/shelters/#{@shelter5.id}/edit")

      fill_in "Name", with: "Will Smith's Dog Shop"
      fill_in "Address", with: "251 North Bristol Ave"
      fill_in "City", with: "Los Angeles"
      fill_in "State", with: "California"
      fill_in "Zip", with: "90049"
      click_on "Update Shelter"

      expect(current_path).to eq("/shelters/#{@shelter5.id}")
      expect(page).to have_content("Will Smith's Dog Shop")
      expect(page).to have_content("251 North Bristol Ave")
      expect(page).to have_content("Los Angeles")
      expect(page).to have_content("California")
      expect(page).to have_content("90049")
    end
  end
end
