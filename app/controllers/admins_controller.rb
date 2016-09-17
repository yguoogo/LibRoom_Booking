class AdminsController < ApplicationController
  def new
  end

  def show
    @admin = Admin.find(params[:id])
    @admin_all = Admin.all
  end
  def index
    @admins = Admin.all
  end
end
