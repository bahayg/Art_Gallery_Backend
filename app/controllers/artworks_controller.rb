class ArtworksController < ApplicationController
    def index
        artworks = Artwork.all
        render json: artworks
    end

    def show
        artwork = Artwork.where(artwork_id: params[:id])
        render json: artwork
    end

    def create
        artwork = Artwork.new(params.require(:artwork).permit(:image, :title, :artist_name, :price))
        if artwork.save
            render json: artwork   
        else
            flash[:message] = artwork.errors.full_messages
        end    
    end

    def update
        artwork = Artwork.find(params[:id])
        artwork.update(params.require(:artwork).permit(:image, :title, :artist_name, :price))
        render json: artwork
    end

    def destroy
        artwork = Artwork.find(params[:id])
        artwork.destroy
        render json: {message: 'Artwork has been removed!'}
    end
    
end
