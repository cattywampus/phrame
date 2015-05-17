class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
  end

  def new
  end

  def create
    @photo = Photo.new(photo_params)

    respond_to do |format|
      if @photo.save
        format.html { redirect_to photos_path }
        format.js
      else
        format.html { render :new }
        format.js
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def photo_params
    params.require(:photo).permit(:image)
  end
end
