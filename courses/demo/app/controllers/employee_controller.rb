class EmployeeController < ApplicationController
  def new
    @employee = Employee.new
    @factories = Factory.all
  end

  def create
    @employee = Employee.new(employee_param)
    @factories = Factory.all
    if @employee.save
       redirect_to :action => 'index'
    else
       render :action => 'new'
    end
  end
  def employee_param
    params.require(:employee).permit(:first_name, :last_name, :factory_id)
  end

  def update
    @employee = Employee.find(params[:id])
	
   if @employee.update_attributes(employee_param)
      redirect_to :action => 'show', :id => @employee
   else
      render :action => 'edit'
   end
  end

  def edit
    @employee = Employee.find(params[:id])
    @factories = Factory.all
  end

  def destroy
    Employee.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  def index
    @employees = Employee.all
    @factories = Factory.all
  end

  def show
    @employee = Employee.find(params[:id])
    @factories = Factory.all
  end
end
