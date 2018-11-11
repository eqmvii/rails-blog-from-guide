class ArticlesController < ApplicationController
  # Recommended order: index, show, new, edit, create, update and destroy

  def show
    @article = Article.find(params[:id])
  end

  def new

  end

  def create
    # render plain: params[:article].inspect

    # @article = Article.new(params[:article]) # Won't work due to strong parameters

    @article = Article.new(article_params)

    @article.save # returns true/false based on whether or not the save worked
    redirect_to @article # will redirect to the show action
  end

  private

  def article_params
    params.require(:article).permit([:title, :text])
  end
end
