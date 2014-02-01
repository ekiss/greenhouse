class GhousesController < ApplicationController
  respond_to :json, :html
  def show
  	@ghouse = Ghouse.find(params[:id])
    @conditions = @ghouse.conditions
    respond_with @ghouse.conditions.first.GPS
    #respond_with json_formatter()
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

    def json_formatter()
      array = @conditions.where(created_at: (Time.now - 1.day)..Time.now).pluck(:created_at, :air_temperature, :res_temperature, :PH, :EC, :humidity, :CO2)
      a_new = []
      for i in 0..array.size-1
        array[i][0] = (array[i][0].to_f*1000).to_i
      end


      return array.reverse
    end


end
