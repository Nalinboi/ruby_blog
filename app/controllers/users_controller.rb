class UsersController < ApplicationController
    # def index 
    #     @articles = Article.all
    # end
    
    # def show
    #     @article = Article.find(params[:id])
    # end

    def new
        @user = User.new
    end

    # def create
    #     @user = User.new(article_params)
    
    #     if @user.save
    #         redirect_to @article
    #     else
    #         render 'new'
    #     end
    # end

    # def edit
    #     @article = Article.find(params[:id])
    # end
    
    # def update
    #     @article = Article.find(params[:id])
       
    #     if @article.update(article_params)
    #       redirect_to @article
    #     else
    #       render 'edit'
    #     end
    # end

    # def destroy
    #   @article = Article.find(params[:id])
    #   @article.destroy
     
    #   redirect_to articles_path
    # end
 
  private
    def user_params
      params.require(:user).permit(:name, :logo)
    end
end