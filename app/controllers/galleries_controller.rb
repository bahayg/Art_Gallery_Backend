class GalleriesController < ApplicationController

    def index
        galleries = Gallery.all
        render :json => galleries
    end

    def show
        gallery = Gallery.find_by(name: params[:id])
        render :json => gallery
    end

    def create
        gallery = Gallery.new(params.require(:gallery).permit(:name, :image))
        if gallery.save
            render :json => gallery   
        else
            flash[:message] = gallery.errors.full_messages
        end    
    end

    def update
        gallery = Gallery.find_by(name: params[:id])
        gallery.update(params.require(:gallery).permit(:name, :image))
        render :json => gallery
    end

    def destroy
        gallery = Gallery.find_by(params[:id])
        gallery.destroy
        render :json => {message: 'Gallery has been removed!'}
    end

end