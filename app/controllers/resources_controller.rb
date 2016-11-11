class ResourcesController < ApplicationController

  def create
    @hobby = Hobby.find(params[:hobby_id])
    @hobby.resources.create(resource_params)
    redirect_to hobby_path(@hobby)
  end

  private

  def resource_params
    params.require(:resource).permit(:link)
  end

end
