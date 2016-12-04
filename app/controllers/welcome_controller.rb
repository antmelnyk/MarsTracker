require 'git'
class WelcomeController < ApplicationController
  def index
    @version = AppVersion.current_version
  end
end
