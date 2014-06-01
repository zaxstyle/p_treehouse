class ProfileController < ApplicationController
  def show
  	@user = user.find_by_profile_name(params[:id])
  	if @user
  		render actions: :show
  	else
  	render file: 'public/404', status: 404, formats: [:html]
   end
end
end
