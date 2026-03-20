module Admin
  class ArticlesController < ApplicationController
    before_action :set_article, only: [:edit, :update, :destroy]

    def index
      @articles = Article.order(created_at: :desc)
    end

    def new
      @article = Article.new
    end

    def create
      @article = Article.new(article_params)

      if @article.save
        redirect_to admin_articles_path, notice: "Article created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @article.update(article_params)
        redirect_to admin_articles_path, notice: "Article updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @article.destroy!
      redirect_to admin_articles_path, notice: "Article removed.", status: :see_other
    end

    private

    def set_article
      @article = Article.find_by!(slug: params[:id])
    end

    def article_params
      params.require(:article).permit(
        :title,
        :summary,
        :body,
        :slug,
        :status,
        :content_type,
        :published_at,
        :cover_image_key,
        :cover_image_alt
      )
    end
  end
end
