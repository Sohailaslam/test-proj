class RandAppsController < ApplicationController
  def index
    @random = rand(10) + 1
    @rand_apps = RandApp.all.order("created_at DESC")
    @rand_app = RandApp.new
  end
  def create
    @rand_apps = RandApp.new(number: rand(10)+1 )
    respond_to do |format|
      if(@rand_apps.save)
        format.html { redirect_to rand_apps_path, notice: 'Random Number was successfully created.' }
        format.js
      else
        format.html { redirect_to rand_apps_path, notice: 'Error in generating random number' }
      end
    end
  end
  
  def destroy
    
  end
  
  def home
  end
end
