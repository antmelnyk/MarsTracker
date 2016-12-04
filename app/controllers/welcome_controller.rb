require 'git'
class WelcomeController < ApplicationController
  def index
    @version = Rails.application.config.assets.version
  end
end
