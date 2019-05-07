class ArticlesController < ApplicationController
	def index
		@articles = Article.search(params[:search])
	end

	def new
		@article=Article.new
	end

	def create
		@article = Article.new(article_params)
        @article.user_id = current_user.id
        @article.save
        redirect_to @article
    end

    def show
    	@comment = Comment.new
        @article = Article.find(params[:id])
    end

    def edit
    	@article = Article.find(params[:id])
    end

	def update
	  @article = Article.find(params[:id])
	 
	  if @article.update(article_params)
	    redirect_to @article
	  else
	    render 'edit'
	  end
	end


    def destroy
    	@article=Article.find(params[:id])
    	@article.destroy
    	redirect_to articles_path
    end



	private
	   def article_params
	   	params.require(:article).permit(:name, :contact_number, :address, :details, :image)
	   end
end
