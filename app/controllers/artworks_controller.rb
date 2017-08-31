class ArtworksController < ApplicationController
  def new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @artwork = Artwork.new(params.require(:artwork).permit(:title, :description, :medium_id))
    @artwork.topic = Topic.first
    @artwork.medium
    p @artwork
    @artwork.save!
    redirect_to @artwork
  end
end
