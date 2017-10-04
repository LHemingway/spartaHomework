class BandsController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @bands = @user.bands
  end

  def show
    @user = User.find(current_user.id)
    @band = @user.bands.find(params[:id])
  end

  def new
    @user = User.find(current_user.id)
    @band = Band.new  
  end

  def create
    user = User.find(current_user.id)
    band = user.bands.create(band_params)

    show_page = user_band_path(user.id, band.id)
    redirect_to show_page
  end

  def edit
    @user = User.find(current_user.id)
    @band = @user.bands.find(params[:id])
  end

  def update
    user = User.find(current_user.id)
    band = user.bands.find(params[:id])
    band.update(band_params)

    show_page = user_band_path(user.id, params[:id])
    redirect_to show_page
  end

  def destroy
    User.find(params[:user_id]).bands.destroy(params[:id])
    redirect_to user_url
  end

  protected
  def band_params
    params.require(:band).permit(:name, :form_year, :current_label)
  end
end
