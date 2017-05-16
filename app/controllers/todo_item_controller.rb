class TodoItemController < ApplicationController
  respond_to :json

  def index
    @todo_item = TodoItem.all
    respond_with @todo_item
  end

  def show
    @todo_item = TodoItem.find(params[:id])
    respond_with @todo_item
  end

  def new
    @todo_item = TodoItem.new
    respond_with @todo_item
  end

  def edit
    @todo_item = TodoItem.find(params[:id])
    respond_with @todo_item
  end

  def create
    @todo_item = TodoItem.create(todo_item_params)
    respond_with @todo_item
  end

  def update
      @todo_item = TodoItem.find(params[:id])
      if @article.update(article_params)
        redirect_to @article
      else
        render 'edit'
      end
  end

  def destroy
      @todo_item = TodoItem.find(params[:id])
      @todo_item = TodoItem.destroy

      redirect_to todo_items_path
      respond_with @todo_item
  end


  private
    def article_params
      params.require(:todo_item).permit(:title, :discription, :status)
    end
end
