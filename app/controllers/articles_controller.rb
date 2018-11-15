class ArticlesController < ApplicationController
  # Recommended order: index, show, new, edit, create, update and destroy

  def index
    @articles = Article.all
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new # Needed to prevent the view error check from throing an error (@article.errors.any? )
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

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    Article.destroy(params[:id])
    redirect_to @article
  end

  private

  def article_params
    params.require(:article).permit([:title, :text]) # Magic to handle form safety in a Rails app
  end
end
