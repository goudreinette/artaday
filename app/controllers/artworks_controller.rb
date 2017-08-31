class ArtworksController < ApplicationController
  self.make_methods Artwork


  def create
    @artwork = Artwork.new(params.require(:artwork).permit(:title, :description, :medium_id, :attachment))
    @artwork.topic = Topic.first
    @artwork.type = Type.first
    @artwork.user = current_user
    @artwork.save!
    redirect_to @artwork
  end
end
