class SearchController < ApplicationController
  def search
    def search
      if params[:text].nil?
        @articles = []
      else
        @analytic = Analytic.new({text: params[:text]})
        @analytic.save
        @articles = Article.search params[:text]
      end
  end
  end
end
