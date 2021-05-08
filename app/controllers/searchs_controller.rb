class SearchsController < ApplicationController
  def search
    @range = params[:range]
    if  @range == "User"
        search = params[:search]
        word = params[:word]
        @users = User.looks(search, word)
    else
        search = params[:search]
        word = params[:word]
        @books = Book.looks(search, word)
    end
  end
end
