class FactoryController < ApplicationController
  def new
    @factory = Factory.new
  end

  def create
    @factory = Factory.new(factory_param)
	
    if @factory.save
       redirect_to :action => 'index'
    else
       render :action => 'new'
    end
  end

  def update
    @factory = Factory.find(params[:id])
	
   if @factory.update_attributes(factory_param)
      redirect_to :action => 'show', :id => @factory
   else
      render :action => 'edit'
   end
  end

  def factory_param
    params.require(:factory).permit(:name)
  end

  def edit
    @factory = Factory.find(params[:id])
  end

  def destroy
    Factory.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  def index
    @factories = Factory.all
  end

  def show
    @factory = Factory.find(params[:id])
  end
end
