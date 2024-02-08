class TodoController < ApplicationController
  def index
    @todos = Tododatum.all
  end

  def new
    @todo = Tododatum.new
  end

  def create
    @todo = Tododatum.new(title: params[:title])
    if @todo.save
      redirect_to root_path
    else
      render todos_new_path
    end
  end

  def edit
    @todo = Tododatum.find_by(id: params[:id])
  end

  def update
    @todo = Tododatum.find_by(id: params[:id])
    @todo.title = params[:title]
    @todo.save
    redirect_to root_path
  end

  def destroy
    @todo = Tododatum.find_by(id: params[:id])
    @todo.destroy
    redirect_to root_path
  end
end
