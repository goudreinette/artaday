class ArtworksController < ApplicationController
  self.make_methods Artwork

  def index
    @artworks = Artwork.all
  end

  def create
    @artwork = Artwork.new(params.require(:artwork).permit(:title, :description, :medium_id, :attachment))
    @artwork.user = current_user
    @artwork.save!
    redirect_to @artwork
  end

  def favorite
    @artwork = Artwork.find(params[:id])
    @artwork.liked_by current_user
    @artwork.save
    redirect_to @artwork
  end

  def unfavorite
    @artwork = Artwork.find(params[:id])
    @artwork.unliked_by current_user
    @artwork.save
    redirect_to @artwork
  end
end
