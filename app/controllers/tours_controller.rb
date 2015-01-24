class ToursController < ApplicationController
  before_filter :authenticate_user!
  respond_to format: [:html]
  before_filter :find_tour_object, only: [:show, :edit, :update, :destroy]
  
  def index
  	@tours = Tour.all
  end

  def new
  	@tour = Tour.new
  	@url = {controller: 'tours', action: 'create'}
  end

  def create
    @tour = Tour.new(params[:tour])
    respond_to do |format|
  		if @tour.save
  			format.html { redirect_to action: 'show', controller: 'tours', id: @tour }
  		else
  			format.html { render action: 'new' }
  		end
  	end
  end

  def show
  	if @tour.nil?
  		redirect_to action: 'index'
  	end
  end

  def edit
  	@url = { action: 'update', id: @tour.id, method: 'patch' }
  	if @tour.nil?
  		redirect_to action: 'index'
  	end
  end

  def update
  	if !@tour.nil?
  		if @tour.update_attributes(params[:tour])
  			redirect_to action: 'show', id: @tour
  		else
  			render 'edit'
  		end
  	else
  		redirect_to action: 'index'
  	end
  end

  def destroy
  	if !@tour.nil?
  		@tour.destroy
  	end
  	redirect_to action: 'index'
  end

  private
  def find_tour_object
  	@tour = Tour.find(params[:id])
  end
end
