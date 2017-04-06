class FoalsController < ApplicationController
  before_action :set_foal, only: [:show, :update, :destroy]

  # GET /foals
  def index
    @foals = Foal.all

    render json: @foals
  end

  # GET /foals/1
  def show
    render json: @foal
  end

  # POST /foals
  def create
    @foal = Foal.new(foal_params)

    if @foal.save
      render json: @foal, status: :created, location: @foal
    else
      render json: @foal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /foals/1
  def update
    if @foal.update(foal_params)
      render json: @foal
    else
      render json: @foal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /foals/1
  def destroy
    @foal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foal
      @foal = Foal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def foal_params
      params.require(:foal).permit(:name, :sex, :foaling_date, :color, :markings, :registry_tattoo, :link_to_pedigree_url, :img_url, :stallion_id, :birthplace, :broodmare_id)
    end
end
