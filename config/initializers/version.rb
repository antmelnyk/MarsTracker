require 'git'

class AppConfig
  deployed = true

  def git_version
    if deployed
      @version = '0.0.2'
    else
      g = Git.open(Rails.root, :log => Logger.new(STDOUT))
      @version = g.describe
    end
  end

end