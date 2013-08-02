class ConditionsController < ApplicationController
	skip_before_filter :verify_authenticity_token

	respond_to :html, :json

  def create
    @ghouse = Ghouse.find_by_id(params[:condition][:ghouse_id])


  	@condition = @ghouse.conditions.build(condition_params)
  	@condition.save
  	respond_with @condition
  end

  def destroy
  	@condition.destroy
  	redirect_to root_url
  end


  private

    def condition_params
      params.require(:condition).permit(:ghouse_id, :air_temperature, :res_temperature, :PH, :EC, :humidity)
    end

    def find_ghouse
    	Ghouse.find_by_id(params[:ghouse_id])
    end
end