class StaticPagesController < ApplicationController
  def home
  	@ghouse = Ghouse.first
  	@conditions = @ghouse.conditions
  end

  def help
  end
end
