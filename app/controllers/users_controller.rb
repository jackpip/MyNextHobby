class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def add_hobby
    hobby = Hobby.find(params[:hobby])
    current_user.hobbies << hobby
    redirect_to hobby_path(hobby)
  end

  def remove_hobby
    hobby = Hobby.find(params[:hobby])
    current_user.hobbies.delete(hobby)
    redirect_to hobby_path(hobby)
  end

end
