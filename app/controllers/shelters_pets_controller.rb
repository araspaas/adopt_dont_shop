class SheltersPetsController < ApplicationController

  def index
    @shelter = Shelter.find(params[:id])
    all_pets = Pet.all
    @pets = all_pets.find_all{|pet| pet.shelter_id.to_i == params[:id].to_i}
  end

  def new
    @shelter_id = params[:id]
    binding.pry
  end
end
