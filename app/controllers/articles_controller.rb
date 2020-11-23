class ArticlesController < ApplicationController

    def article_author(art, id=true)
      if art.user_id.present? # Finding the user from the article given
        if id  # If we want the id then return the id
          art.user_id  # If there is a user id then give that 
        else  # if we want the user then we just return the user
          art.user.name
        end
      else 
        "N/A"  # If there is no user id then give "N/A" 
      end
    end
    helper_method :article_author

 
    def index 
        @articles = Article.all
    end
    
    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        @article.user_id = current_user.id
        
        if @article.save
            redirect_to @article
        else
            render 'new'
        end
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
      @article = Article.find(params[:id])
      @article.destroy
     
      redirect_to articles_path
    end
    
    private
    def article_params
        params.require(:article).permit(:title, :text)
    end

  end