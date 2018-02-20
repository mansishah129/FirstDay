class GuestController < ApplicationController 

 def new
	@guests =Guest.new
	@guests =Guest.find(:all)_
 end

  def create
	@guests = Guest.new(params[:guests])
	if @guests.save
		redirect_to new_guest_path
  end
end
end