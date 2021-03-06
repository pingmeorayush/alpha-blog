class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    def index
        @articles = Article.all
    end
    def show
        
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        
        if @article.save
            flash[:notice] = "Article was saved successfully."
            redirect_to @article
        else
            return render 'new'
        end
    end    

    def edit
    
    end

    def update
        if @article.update(article_params)
            flash[:notice] = "Article was updated successfully."
            redirect_to @article
        else
            render 'edit'
        end

    end

    def destroy
        @article.destroy
        redirect_to articles_path
    end

    private 

    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title,:description)
    end
end

# redirect_to is used to redirect user after save and it will get the id from article instance itself

# @ sign before a variable just converts a normal variable to the instance variable so that it will be avaiable in the views
        
