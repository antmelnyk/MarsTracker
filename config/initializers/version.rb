class AppVersion
  def current_version
    g = Git.open(Rails.root, :log => Logger.new(STDOUT))
    g.describe
  end
end