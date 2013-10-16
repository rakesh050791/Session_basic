class SessionsController < ApplicationController

   def create
     user = User.authenticate(params[:email], params[:password])
     if user
     session[:user_id] = @user.id
     redirect_to(:controller => 'sessions', :action => 'welcome')
   end
   end

   def destroy
   session[:user_id] = nil
   redirect_to(:controller => 'users' , :action => 'new') 
   end

end
