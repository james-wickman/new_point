class DistributersController < ApplicationController
  def index
    p current_admin
    if current_admin 
      @distributers = Distributer.all
      p @distributers
    else
      redirect_to root_path
    end
  end

  def new
    if current_admin 
      @distributer = Distributer.new
    else
      redirect_to root_path
    end
  end

  def create
    if current_admin 
      params = add_distibuters_params
      p params[:name]
      if Distributer.create(name: params[:name], address: params[:address], city: params[:city], state: params[:state], zip: params[:zip], phone: params[:phone], url: params[:url], email: params[:email])
        redirect_to distributers_path
      end
    else
      redirect_to root_path
    end
  end

  def edit
    if current_admin 
      p params
      @distributer = Distributer.find(params[:id])
      p @distributer
    else
      redirect_to root_path
    end
  end

  def update
    if current_admin 
      params = add_distibuters_params
      p params[:id]
      @distributer = Distributer.find(params[:id])
      @distributer.update_attributes(name: params[:name], address: params[:address], city: params[:city], state: params[:state], zip: params[:zip], phone: params[:phone], url: params[:url], email: params[:email])
      if @distributer.save
        redirect_to distributers_path
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    if current_admin 
      p params[:id]
      @distributer = Distributer.find(params[:id])
      if @distributer.destroy
        redirect_to distributers_path
      end
    else
      redirect_to root_path
    end
  end

  protected

  def add_distibuters_params
    params.require(:distributer).permit(:id, :name, :address, :phone, :url, :email, :city, :state, :zip)
  end


end
