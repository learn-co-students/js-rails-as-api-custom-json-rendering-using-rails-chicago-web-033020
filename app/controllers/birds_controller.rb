class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds, only: [:id, :name, :species]
  end

  def show
    bird = Bird.find_by(id: params[:id])
    if bird
      render json: {id: bird.id, name: bird.name, species: bird.species } #sending json data
    #displays only bird's id, name, and species on localhost:3000/birds/:id -- endpoint
    else
      render json: { message: 'Bird not found' }
  end
end

