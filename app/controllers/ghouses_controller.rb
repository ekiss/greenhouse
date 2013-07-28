class GhousesController < ApplicationController
  
  def show
  	@ghouse = Ghouse.find(params[:id])
    @conditions = @ghouse.conditions
  end


  def new
  	@ghouse = Ghouse.new
  end

  def index
  end

  def create
    @ghouse = Ghouse.new(ghouse_params)
    if @ghouse.save
      flash[:success] = "Welcome to the Sample App!"  
      redirect_to @ghouse
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  def edit
  end



  private

    def ghouse_params
      params.require(:ghouse).permit(:name, :address, :password,
                                   :password_confirmation)
    end
end
