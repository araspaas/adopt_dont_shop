require 'rails_helper'

describe "visitors" do
  describe "visit shelter index" do
    it "can see all shelters from shelter index" do
      @shelter1 = Shelter.create(name: "Van's pet shop", address: "3724 tennessee dr", city: "Rockford", state: "Illinois", zip: "61108")
      @shelter2 = Shelter.create(name: "Bovice's pet shop", address: "37 tennessee dr", city: "Rockford", state: "Illinois", zip: "61108")
      @shelter3 = Shelter.create(name: "Jared's pet shop", address: "24 tennessee dr", city: "Rockford", state: "Illinois", zip: "61108")

      visit '/shelters'

      within ".shelter_list" do
        expect(page).to have("Van's pet shop")
        expect(page).to have("Bovice's pet shop")
        expect(page).to have("Jared's pet shop")
      end
    end
  end
end
