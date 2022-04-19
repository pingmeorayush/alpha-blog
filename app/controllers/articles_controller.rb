class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end
    def show
        # @ sign before a variable just converts a normal variable to the instance variable so that it will be avaiable in the views
        @article = Article.find(params[:id])
    end
end
