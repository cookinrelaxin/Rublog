class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def welcome
      render html: "Welcome to Zack's Ruby Blog!"
  end
end
