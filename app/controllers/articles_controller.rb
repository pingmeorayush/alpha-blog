class ArticlesController < ApplicationController
    def show
        # @ sign before a variable just converts a normal variable to the instance variable
        @article = Article.find(params[:id])
    end
end
