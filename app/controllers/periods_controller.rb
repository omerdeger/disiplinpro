class PeriodsController < ApplicationController
  def index
    @periods = Period.all
  end
  
  def show
    @period = Period.find(params[:id])
  end
  
  def new
    @period = Period.new
  end
  
  def create
    @period = Period.new(period_params)
    
    if @period.save
      redirect_to @period
    else
      render 'edit'
    end
  end
  
  def edit
    @period = Period.find(params[:id])
  end
  
  def update
    @period = Period.find(params[:id])
    
    if @period.update(period_params)
      redirect_to @period
    else
      render 'edit'
    end
  end
  
  def destroy
    @period = Period.find(params[:id])
    if @period.destroy
      flash[:success] = "Başarıyla silindi"
    else
      flash[:error] = "Öge silinemedi"
    end
    render periods_path
  end
  
  private
  def period_params
    params.require(:period).permit(:school_name, :manager, :chairman, :member1, :member2, :member3, :member4)
  end
end
