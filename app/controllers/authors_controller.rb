class AuthorsController < ApplicationController
  before_action :set_author, only: [:show]

  # /authors
  def index
    @authors = Author.all
  end

  # /authors/:id
  def show
  end

  # /authors/new 
  def new
    @author = Author.new
  end


  def set_author
    @author = Author.find(params[:id])
  end
end
