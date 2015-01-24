class PeopleController < ApplicationController
	respond_to :html, :js
  
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @people = Person.all
    @person = Person.create(person_params)
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @people = Person.all
    @person = Person.find(params[:id])
    @person.update_attributes(person_params)
  end

  def delete
    @person = Person.find(params[:person_id])
  end

  def destroy
    @people = Person.all
    @person = Person.find(params[:id])
    @person.destroy
  end

  private
  def person_params
    params.require(:person).permit(:first_name, :middle_name, :last_name, :avatar)
  end

end
