class Api::BillboardsController < ApplicationController

  def index
    render json: Billboard.all
  end

  def show
    @billboard = List.find(params[:id])
    render json: @billboard
  end

  def create
    @billboard = Billboard.new(billboard_params)
    if @billboard.save
      render json: @billboard
    else
      render json: { errors: @billboard.errors }, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private

end
