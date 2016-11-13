class HobbiesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @hobbies = Hobby.all
  end

  def show
    @hobby = Hobby.find(params[:id])
    @resource = Resource.new
    @message = Message.new
  end

  def new
    @hobby = Hobby.new
  end

  def create
    @hobby = Hobby.create(hobby_params)
    redirect_to hobbies_path
  end

  private

  def hobby_params
    params.require(:hobby).permit(:name)
  end

end
