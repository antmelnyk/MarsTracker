class PagesController < ApplicationController

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

  def show
    if valid_page?
      render template: "pages/#{params[:page]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  def get_article(title)
    @article = Article.find_by(title: title)
    @article.text
  end
  helper_method :get_article

  private
  def valid_page?
    File.exist?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}.html.erb"))
  end
end