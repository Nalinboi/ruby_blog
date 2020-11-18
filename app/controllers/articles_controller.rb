class ArticlesController < ApplicationController
    def new  # Defining the 'new' method
    end

    def create
        render plain: params[:article].inspect  
    end
  end