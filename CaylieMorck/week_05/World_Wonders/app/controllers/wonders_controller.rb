class WondersController < ApplicationController

 def index
  @wonders = Wonder.all
 end

 def new
   @wonder = Wonder.new
 end

 def create
   @wonder = Wonder.create wonder_params

   redirect_to @wonder
 end

 def show
   @wonder = Wonder.find params[:id]
 end

 def edit
   @wonder = Wonder.find params[:id]
 end

 def update
   @wonder = Wonder.find params[:id]
   wonder.update wonder_params

   redirect_to wonder
 end

 def destroy
   wonder = Wonder.find params[:id]
   wonder.destroy

   redirect_to wonder_path
 end


private
  def wonder_params
    params.require(:wonder).permit(:title, :year_found, :image, :place_id)
  end

end
