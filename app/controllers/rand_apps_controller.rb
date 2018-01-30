class RandAppsController < ApplicationController
  def index
    @random = rand(10) + 1
    @rand_apps = RandApp.all.order("created_at DESC")
    @rand_app = RandApp.new
  end
  
  def edit
    @rand_app = RandApp.find(params[:id])
  end
  def create
    @rand_apps = RandApp.new(number: rand(11) )
    respond_to do |format|
      if(@rand_apps.save)
        format.html { redirect_to rand_apps_path, notice: 'Random Number was successfully created.' }
        format.js
      else
        format.html { redirect_to rand_apps_path, notice: 'Error in generating random number' }
      end
    end
  end
  def update
    @rand_app = RandApp.find(params[:id])
    if(@rand_app.update(rand_app_params))
      redirect_to rand_apps_path, notice: "Number was successfully updated"
    else
      redirect_to rand_apps_path, notice: "Error. Please try Again"
    end
  end
  
  def destroy
    @rand_app = RandApp.find(params[:id])
    if @rand_app.destroy
      redirect_to rand_apps_path, notice: "Number was successfully destroyed"
    else
     redirect_to rand_apps_path, notice: "Error. Please try Again"
    end
    
  end
  
  def destroy_all
    RandApp.destroy_all
    # redirect_to rand_apps_path
    respond_to do |format|
        format.html { redirect_to rand_apps_path, notice: 'All Destroyed' }
        format.js { flash[:notice] = "All Destroyed" }
    end
  end
  
  private
  def rand_app_params
    params.require(:rand_app).permit(:number)
  end
end
