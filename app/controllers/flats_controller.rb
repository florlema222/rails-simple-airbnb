class FlatsController < ApplicationController
  before_action :set_flat, only: %i[show destroy]

  def index
    @flats = Flat.all
  end

  def show
    @bookmark = Bookmark.new
    @review = Review.new(flat: @flat) # modificar
  end

  def new
    @flat = Flat.new
  end

  def edit
    # completar
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name)
  end

  def set_flat
    @flat = flat.find(params[:id])
  end
end
