class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]
  
    def index
      @people = Person.all
    end
   
    def new 
      @person = Person.new 
    end
  
    def create
      split_links
      @person = Person.new(person_params)
      if @person.save 
        redirect_to person_path(@person)
      else
        render :new
      end
    end
  
    def show
      @people = Person.all
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
  
    def split_links
      params[:person][:projects] = params[:person][:projects].first.split(",").map(&:strip)
      params[:person][:materials] = params[:person][:materials].first.split(",").map(&:strip)

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
        projects: [],
        materials: []
      )
    end
end
