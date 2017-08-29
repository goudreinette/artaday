class ArtworksController < ApplicationController
  def new

  end

  def create
    render plain: params[:artwork].inspect
  end
end
