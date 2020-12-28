class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.create(author_params)
    if @author.valid?
      @author.save
    redirect_to author_path(@author)
    else render :new
    end
  end
  # @person = Person.new(person_params)

  #   if @person.valid?
  #     @person.save
  #     redirect_to person_path(@person)
  #   else
  #     # re-render the :new template WITHOUT throwing away the invalid @person
  #     render :new

  private

  def author_params
    params.permit(:email, :name)
  end
end
