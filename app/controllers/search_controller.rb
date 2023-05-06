class SearchController < ApplicationController
  def index
    @query = Article.ransack(params[:q])
    @articles = @query.result(distinct: true)
  end

  private
  def search_params
    params.require(:search).permit(:title, :body, :photo)
  end
end
