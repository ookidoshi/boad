class UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
    @photos = Photo.all
    # @photos = Photo.includes(:image).order("created_at DESC").limit(10)
  end

end
