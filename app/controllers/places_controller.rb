class PlacesController < ApplicationController
  def index 
     # find all Place rows
    @places = Place.all
     # render Place/index view
  end
  
  def show
    # find a Place
    @place = Place.find_by({"id" => params["id"]})
    # find all entries for this place
    @entries = Entry.where({"place_id" => @place["id"]})
    # render Places/show view with details about Places
  end
  
  def new
    # render view with new Company form
  end

  def create
    # start with a new Company
    place = Place.new
    # assign user-entered form data to Company's columns
    place["name"] = params["name"]
    # save row
    place.save
    # redirect user
    redirect_to "/places"
  end
  
end
