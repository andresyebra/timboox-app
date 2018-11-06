class EmployeeController < ApplicationController
  before_action :authenticate_user!

  def index
    @employees = Employee.all
    @offices = Office.all
    @employees_new = Employee.new
  end

  def new

      @employees_new = Employee.new(employee_params)

      if @employees_new.save
        flash[:alert] = 'Empleado creado exitosamante'
        redirect_to employees_path
      else
        flash[:error] = 'Error al crea Empleado'
        redirect_to employees_path
      end

  end

  def get
    @employees_get = Employee.find_by(id: params[:id])
    if @employees_get
      render json: @employees_get
    else
      render json: {status: "error", message: "not found"}
    end

  end

  def delete
    @employees_delete = Employee.find_by(id: params[:id])
    if @employees_delete.destroy
      render json: @employees_delete
    else
      render json: {status: "error", message: "not found"}
    end

  end


  private

  def employee_params
    params.require(:employee).permit(:id, :name, :rfc, :job, :office_id)
  end

end
