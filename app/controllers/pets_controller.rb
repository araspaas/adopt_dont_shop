class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def create
    @pet = Pet.create(image: params[:image], name: params[:name], description: params[:description], age: params[:age], sex: params[:sex], shelter_id: params[:shelter_id], status: 0)
    @pet.save
    binding.pry
    redirect_to "/shelters/#{@shelter.id}/pets"
  end
end
