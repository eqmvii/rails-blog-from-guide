class ArticlesController < ApplicationController
  # Recommended order: index, show, new, edit, create, update and destroy

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new

  end

  def create
    # render plain: params[:article].inspect

    # @article = Article.new(params[:article]) # Won't work due to strong parameters

    @article = Article.new(article_params)
    success = @article.save

    puts "Start ===="
    puts "Did it work?"
    puts success ? "Yes!" : "No..."
    puts "==== end"

    if success
      redirect_to @article # will redirect to the show action
    else
      render 'new'
    end
  end

  def destroy
    Article.destroy(params[:id])
    redirect_to @article
  end

  private

  def article_params
    params.require(:article).permit([:title, :text])
  end
end
