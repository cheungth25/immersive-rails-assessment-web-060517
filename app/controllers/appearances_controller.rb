class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    guest_name = params[:appearance][:guest_id]
    episode_number = params[:appearance][:episode_id]
    rating = params[:appearance][:rating]
    Guest.find_by(name:guest_name) ? (@guest = Guest.find_by(name:guest_name)) : redirect_to new_guest_path
    Episode.find_by(number:episode_number) ? (@episode = Episode.find_by(number:episode_number)) : rraise "error"
    @appearance = Appearance.create(guest_id:@guest.id, episode_id:@episode.id, rating:rating)
    redirect_to new_appearance_path
  end


end
