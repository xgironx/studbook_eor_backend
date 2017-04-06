class BroodmaresController < ApplicationController
  before_action :set_broodmare, only: [:show, :update, :destroy]

  # GET /broodmares
  def index
    @broodmares = Broodmare.all

    render json: @broodmares
  end

  # GET /broodmares/1
  def show
    render json: @broodmare
  end

  # POST /broodmares
  def create
    @broodmare = Broodmare.new(broodmare_params)

    if @broodmare.save
      render json: @broodmare, status: :created, location: @broodmare
    else
      render json: @broodmare.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /broodmares/1
  def update
    if @broodmare.update(broodmare_params)
      render json: @broodmare
    else
      render json: @broodmare.errors, status: :unprocessable_entity
    end
  end

  # DELETE /broodmares/1
  def destroy
    @broodmare.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_broodmare
      @broodmare = Broodmare.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def broodmare_params
      params.require(:broodmare).permit(:name, :age, :color, :registry_tattoo, :link_to_pedigree_url, :img_url, :stallion_id, :barren, :num_foals, :in_foal_now, :expected_foaling_date)
    end
end
