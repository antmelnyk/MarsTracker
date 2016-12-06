class WelcomeController < ApplicationController

  def index
    self.version_display
  end

  def version_display
    deployed = true
    if deployed
      @version = File.read("version.txt")
    else
      out_file = File.new("version.txt", "w+")
      g = Git.open(Rails.root, :log => Logger.new(STDOUT))
      out_file.puts(@version = g.describe('HEAD', {:tags => true, :long => true}))
      out_file.close
    end
  end
end
