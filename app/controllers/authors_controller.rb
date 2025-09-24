class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update]

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
      # render :new
      redirect_to new_author_path, alert: @author.errors.full_messages  
    end
  end

  def edit
  end

  def update
    if @author.update author_params
      redirect_to author_path(@author), notice: "Actualizado con éxito"
    else
      redirect_to edit_author_path(@author), alert: @author.errors.full_messages
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
