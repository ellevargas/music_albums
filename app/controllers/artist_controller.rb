class ArtistController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @artist = Artist.new
    @artist.name = params[:artist][:name]
    @artist.save
    redirect_to action: 'show', :id => @artist.id
  end

  def update
  end

  def destroy
    @artist = Artist.find(id: params[:id].to_i)
    @artist.destroy
    redirect_to action: 'index'
  end
end
