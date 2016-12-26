class NewsController < ApplicationController
  def index
    @news = News.all
  end

  def show
    @news_object = News.find(params[:id])
  end

  def new
  end

  def create
  end

  def news_params
    params.require(:news).permit(:title, :text)
  end

  private :news_params
end
