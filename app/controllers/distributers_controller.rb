class DistributersController < ApplicationController
  def index
    @distributers = Distributer.all
    p @distributers
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
