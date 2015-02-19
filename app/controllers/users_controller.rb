class UsersController < ApplicationController

  before_action :logged_in?, only: [:show]
  
  def show
  end

  def new
  end

  def edit
  end

  def destroy
  end
end
