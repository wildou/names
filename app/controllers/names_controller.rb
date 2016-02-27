class NamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def index
    @names = Name.where(nil) # creates an anonymous scope
    @names = @names.gender(params[:gender]) if params[:gender].present?
    @names = @names.country(params[:country]) if params[:country].present?
    @names = @names.order("RANDOM()").first
  end

  def new
    @name = Name.new
  end

  def create
    @name = Name.create(book_params)
    if @name.save
      redirect_to name_path(@name)
    else
      render :new
    end
  end

  def update
    if @name.update(name_params)
      redirect_to @name
    else
      render 'edit'
    end
  end


  private

  def book_params
    params.require(:name).permit(:name, :country, :type)
  end
end
