class AuthorsController < ApplicationController
  before_action :set_author, only: [:show]

  # GET /authors
  def index
    @authors = Author.all
  end

  # GET /authors/:id
  def show
  end

  # GET /authors/new 
  def new
    @author = Author.new
  end

  # POST /authors
  def create
    @author = Author.new author_params
    if @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end


  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params
      .require(:author)
      .permit(:first_name, :last_name)
  end
end
