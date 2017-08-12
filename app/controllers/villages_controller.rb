class VillagesController < ApplicationController
  def index
  end

  def new
  	@village = Village.new
  end

  def create
  	@village = Village.create(village_params)

  	if @village.save
  		flash[:notice] = "Saved successfully"
  		redirect_to root_path
  	else
  		flash[:notice] = "Could not be saved"
  		render "new"
  	end
  end

  private

  	def village_params
  		params.require(:village).permit(:name)
  	end
end
