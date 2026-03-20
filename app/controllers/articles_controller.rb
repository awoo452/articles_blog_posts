class ArticlesController < ApplicationController
  def index
    @articles = Article.publicly_visible.order(published_at: :desc, created_at: :desc)
  end

  def show
    @article = Article.publicly_visible.find_by!(slug: params[:id])
  end
end
