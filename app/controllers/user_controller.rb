class UserController < ApplicationController
	respond_to :html
	before_action :authenticate_user!

  def index
  	@users = User.all

  	respond_with @users
  end
end
