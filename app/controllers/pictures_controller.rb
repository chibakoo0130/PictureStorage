class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)

    if @picture.save
      redirect_to pictures_url
    else
      render :new
    end
  end

  def show
    @pictures = Picture.all
  end

  private

  def picture_params
    params.require(:picture).permit(pictures: [])
  end
end
