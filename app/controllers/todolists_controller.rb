class TodolistsController < ApplicationController
  def index
    @lists = List.all
  end
  
  def show
    @list = List.find(params[:id])
  end
  
  def new
    @list = List.new
  end
  
  def create
    # １. データを新規登録するためのインスタンス作成
    list = List.new(list_params)
    list.save
    redirect_to todolist_path(list.id)
  end
  
  def edit
    @list = List.find(params[:id])
  end
  
  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to todolist_path(list.id)
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
  
end