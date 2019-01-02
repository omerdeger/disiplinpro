class RulesController < ApplicationController
  def index
    @rules = Rule.all
  end
  
  def new
    @rule = Rule.new
  end
  
  def show
    @rule = Rule.find(params[:id])
  end
  
  def create
    @rule = Rule.new(rule_params)
    if @rule.save
      redirect_to rules_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @rule = Rule.find(params[:id])
    @rule.destroy
    
    flash[:success] = "Başarıyla silindi"
    redirect_to rules_path
  end
  
  private
  def rule_params
    params.require(:rule).permit(:item_number, :law)
  end
end