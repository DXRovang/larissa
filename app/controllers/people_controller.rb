class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]
  
    def index
      @people = Person.all
    end
   
    def new 
      @person = Person.new 
    end
  
    def create
      @person = Person.new(person_params)
      if @person.save 
        redirect_to person_path(@person)
      else
        render :new
      end
    end
  
    def show
    end
  
    def edit

    end
  
    def update
      # @person.update(person_params)
      # redirect_to person_path(@person)
    end
  
    def destroy

    end
  
    private
  
    def set_person
      @person = Person.find_by(id: params[:id])
    end
  
    def person_params
      params.require(:person).permit(
        :name, 
        :address,
        :phone,
        :email,
        :title,
        :agency,
        :notes,
        :projects,
        :materials
      )
    end
end
