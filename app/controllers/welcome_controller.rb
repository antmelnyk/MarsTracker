require 'git'
class WelcomeController < ApplicationController
  def index
    g = Git.open(Rails.root, :log => Logger.new(STDOUT))
    @version = g.describe
  end
end
