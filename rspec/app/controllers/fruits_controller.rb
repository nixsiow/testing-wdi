class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all.reverse

    respond_to do |format|
      format.html
      format.json { render :json => @fruits }
    end
  end

  def create
    @fruit = Fruit.create(:name => params[:name])
    if (@fruit)
      redirect_to fruits_path(@fruit)
    else
      render :new
    end
  end
end
