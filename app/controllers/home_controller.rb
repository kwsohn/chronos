class HomeController < ApplicationController
  before_action :authenticate_user!
  def hello
      @events = Event.where("user_id = ?", current_user).paginate(page: params[:page]).order('created_at DESC')
  end
end
