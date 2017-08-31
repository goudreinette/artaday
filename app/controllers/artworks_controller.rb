class ArtworksController < ApplicationController
  self.make_methods Artwork

  def create
    @artwork = Artwork.new(params.require(:artwork).permit(:title, :description, :medium_id))
    @artwork.topic = Topic.first
    @artwork.type = Type.first
    p @artwork
    @artwork.save!
    redirect_to @artwork
  end
end
