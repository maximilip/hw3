class PlacesController < ApplicationController
  def index 
     # find all Place rows
    @places = Place.all
       # render Place/index view
  end
 def show
    # find a Place
    @id = params["id"]
    @places = Place.find_by({"id" => @id})
    # render Places/show view with details about Places
  end
  
  def new
    # render view with new Company form
  end

  def create
    # start with a new Company
    # assign user-entered form data to Company's columns
    place = Place.new
    place["name"] = params["name"]
  end
end
