class PeopleController < ApplicationController
  # before_action : find_person, only: [:show, :edit, :update]

  def index
    @people = Person.all.order("created_at DESC")
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to @person
    else
      render 'new'
  end
end

def show
  @person = Person.find(params[:id])
end

def edit
  @person = Person.find(params[:id])
end

def update
  @person = Person.find(params[:id])

  if @person.update(person_params)
    redirect_to @person
  else
    render 'edit'
  end
end

def destroy
  @person = Person.find(params[:id])
  @person.destroy
  redirect_to root_path
end

private

  def person_params
    params.require(:person).permit(:Name, :Age)
  end
end
