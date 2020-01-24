require 'byebug'

class ArtworkGalleriesController < ApplicationController
  
  def index
    @artwork_galleries = ArtworkGallery.all
    render :json => @artwork_galleries
  end

  def show
    @artwork_gallery = ArtworkGallery.find(params[:id])
  end

  def new
    @artwork_gallery = ArtworkGallery.new
  end

  def create
    @artwork_gallery = ArtworkGallery.new(params.require(:artwork_gallery).permit(:artwork_id, :gallery_id))
    byebug
    if @artwork_gallery.save
      render :json => @artwork_gallery
    else
      flash[:message] = "error"
    end
  end
end
