class BasesController < ApplicationController
  def new
    @base = Base.new
  end
  
  def show
  end
  
  def index
    @bases = Base.all
  end
end
