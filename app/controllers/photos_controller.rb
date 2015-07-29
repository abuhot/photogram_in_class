class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    # params = {"id"=>"4"}

    @photo = Photo.find(params["id"])
  end

  def destroy
    @photo = Photo.find(params["id"])

    @photo.destroy

    redirect_to("http://localhost:3000/photos")
  end

end
