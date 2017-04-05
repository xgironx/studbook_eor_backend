class StallionsController < ApplicationController
  before_action :set_stallion, only: [:show, :update, :destroy]

  # GET /stallions
  def index
    @stallions = Stallion.all

    render json: @stallions
  end

  # GET /stallions/1
  def show
    render json: @stallion
  end

  # POST /stallions
  def create
    @stallion = Stallion.new(stallion_params)

    if @stallion.save
      render json: @stallion, status: :created, location: @stallion
    else
      render json: @stallion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stallions/1
  def update
    if @stallion.update(stallion_params)
      render json: @stallion
    else
      render json: @stallion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stallions/1
  def destroy
    @stallion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stallion
      @stallion = Stallion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stallion_params
      params.require(:stallion).permit(:name, :age, :color, :registry_tattoo, :stud_fee, :stakes_winner_progeny, :img_url, :link_to_pedigree_url)
    end
end
