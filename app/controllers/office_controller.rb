class OfficeController < ApplicationController
  before_action :authenticate_user!

  def index
    @offices = Office.all
    @offices_new = Office.new
  end

  def new
    @offices_new = Office.new(offices_params)

    if @offices_new.save
      flash[:alert] = 'Sucursal Guardar exitosamante'
      redirect_to offices_path
    else
      flash[:error] = 'Error al Guarda Sucursal'
      redirect_to offices_path
    end
  end

  def get

    @offices_get = Office.find_by(id: params[:id])
    if @offices_get
      render json: @offices_get
    else
      render json: {status: "error", message: "not found"}
    end

  end

  def delete
    @offices_delete = Office.find_by(id: params[:id])
    if @offices_delete.destroy
      render json: @offices_delete
    else
      render json: {status: "error", message: "not found"}
    end

  end

  private

  def offices_params
    params.require(:office).permit(:id, :name, :address, :neighborhood, :postal, :city, :country)
  end
end
