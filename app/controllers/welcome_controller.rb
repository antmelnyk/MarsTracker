class WelcomeController < ApplicationController
  def index
    @version = AppConfig.git_version
  end
end
