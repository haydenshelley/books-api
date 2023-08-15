class StoresController < ApplicationController
  def index
    @stores = Store.all
    render :index
  end

  def show
    @store = Store.find_by(id: params[:id])
    render :show
  end
end
