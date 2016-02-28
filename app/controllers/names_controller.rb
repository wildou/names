class NamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  # has_scope :gender
  # has_scope :country

  def index
    # @names = apply_scopes(Name)
    # @names = @names.order("RANDOM()").first

    @names = Name.all
    if params[:gender]
      @names = @names.where("gender_cd = ?", params[:gender])
      @names = @names.country(params[:country]) if params[:country].present?
      @names = @names.order("RANDOM()").first
    else
      @names = @names.order("RANDOM()").first
    end

    # @names = Name.where(nil) # creates an anonymous scope
    # @names = Name.gender(params[:gender]) if params[:gender].present?
    # @names = @names.country(params[:country]) if params[:country].present?
    # @names = @names.order("RANDOM()").first
  end

  def new
    @name = Name.new
  end

  def create
    @name = Name.create(name_params)
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

  def name_params
    params.require(:name).permit(:name, :country, :gender_id)
  end
end
