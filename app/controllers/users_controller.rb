class UsersController < ApplicationController
	def new
	@user = User.new
    end

    def create
	@user = User.new(params[:users])
	if User.save
    redirect_to(:controller => 'sessions', :action => 'new')
     end
     end

end
