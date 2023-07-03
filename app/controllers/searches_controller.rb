class SearchesController < ApplicationController
  def index
    @searches = Search.all
  end

  def create
    # add seach query to delete substrings of new search if any
    Search.all.each do |search|
      search.destroy if search_params[:query].include?(search.query)
    end
    @search = Search.new(search_params)
    if @search.save
      redirect_to articles_path(query: @search.query)
    else
      redirect_to articles_path, alert: "Search not saved"
    end
  end

  private

  def search_params
    params.require(:search).permit(:query)
  end
end
