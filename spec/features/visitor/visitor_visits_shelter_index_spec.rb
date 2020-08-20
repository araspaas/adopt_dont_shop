require 'rails_helper'

describe "visitors" do
  describe "visit shelter index" do
    before :each do
      @shelter1 = Shelter.create(name: "Van's pet shop", address: "3724 tennessee dr", city: "Rockford", state: "Illinois", zip: "61108")
      @shelter2 = Shelter.create(name: "Bovice's pet shop", address: "37 tennessee dr", city: "Rockford", state: "Illinois", zip: "61108")
      @shelter3 = Shelter.create(name: "Jared's pet shop", address: "24 tennessee dr", city: "Rockford", state: "Illinois", zip: "61108")
      @shelter4 = Shelter.create(name: "Old Greg's pet shop", address: "24 rona st", city: "Rockford", state: "Illinois", zip: "61102")
    end

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
end
