class ArticlesController < ApplicationController
  def index
    # add a way to show searched results or all articles incase no search has been made
    @articles = params[:query] ? Article.search(params[:query]) : Article.all
  end
end
