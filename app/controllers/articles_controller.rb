class ArticlesController < ApplicationController
	#GET /articles
	def index
		@articles = Article.all
	end

	#GET /articles/:id
	def show
		@article = Article.find(params[:id])
	end

	#GET /articles/new
	def new
		@article = Article.new
	end

	#POST /articles
	def create
		@article = Article.new article_params
		@article.save
		redirect_to @article
	end

	private
    def article_params
        params.require(:article).permit(:title, :body)
    end
end
