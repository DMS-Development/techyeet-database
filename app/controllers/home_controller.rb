class HomeController < ApplicationController

  def index
    if user_signed_in?
      redirect_to :authenticated_root
    else
      redirect_to :unauthenticated_root
    end
  end
end
