                            #############################################
                            # 201704062310L     EL JUEVES   GIRO @ FOO
        # THIS ERROR @ BACKEND:
            # Started POST "/stallions" for 127.0.0.1 at 2017-04-06 23:08:43 -0400
            #   ActiveRecord::SchemaMigration Load (0.7ms)  SELECT "schema_migrations".* FROM "schema_migrations"
            # Processing by StallionsController#create as JSONAPI
            #   Parameters: {"data"=>{"attributes"=>{"name"=>"2", "age"=>2, "color"=>nil, "registry-tattoo"=>nil, "stud-fee"=>nil, "stakes-winner-progeny"=>nil, "img-url"=>nil, "link-to-pedigree-url"=>nil}, "type"=>"stallions"}}
            # Completed 400 Bad Request in 15ms (ActiveRecord: 0.0ms)
            #
            # ActionController::ParameterMissing (param is missing or the value is empty: stallion):
            #
            # app/controllers/stallions_controller.rb:54:in `stallion_params'
            # app/controllers/stallions_controller.rb:20:in `create'
class StallionsController < ApplicationController
  # before_action :set_stallion, only: [:show, :update, :destroy]

  # GET /stallions
  def index
    @stallions = Stallion.all
    render json: @stallions
  end

  # GET /stallions/1
  # jquery.js:9566 GET http://localhost:4200/stallions/2 404 (Not Found)
  def show
    #   @stallion = Stallion.find(params[:id])        # Started GET "/stallions/18" for 127.0.0.1 at 2017-04-06 23:38:38 -0400 Processing by StallionsController#show as JSONAPI Parameters: {"id"=>"18"} Stallion Load (13.3ms)  SELECT  "stallions".* FROM "stallions" WHERE "stallions"."id" = $1 LIMIT $2  [["id", 18], ["LIMIT", 1]] [active_model_serializers] Rendered StallionSerializer with ActiveModelSerializers::Adapter::JsonApi (3.14ms) Completed 200 OK in 43ms (Views: 4.7ms | ActiveRecord: 13.3ms)
      @stallion = Stallion.find(stallion_params)  # ActiveRecord::RecordNotFound (Couldn't find Stallion with 'id'=): app/controllers/stallions_controller.rb:26:in `show'
    render json: @stallion
  end


  # POST /stallions
  def new                         #GIRO:    POST   /stallions(.:format)   stallions#create
  @stallion = Stallion.new              #GIRO:   http://localhost:3000/stallions/new
  end
  def create
      @stallion = Stallion.create!(stallion_params)
    #   @stallion = Stallion.new(stallion_params)   # THIS ONE WORKS, TOO
    if @stallion.save
      render json: @stallion, status: :created, location: @stallion
    else
      render json: @stallion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stallions/1
  def edit
  @stallion = Stallion.find(stallion_params)
  end
  def update
      @stallion = Stallion.find(stallion_params)
    #   @stallion = Stallion.find(params[:id])
    if @stallion.update(stallion_params)
      render json: @stallion
    else
      render json: @stallion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stallions/1
                                            # def destroy User.find(params[:id]).destroy end
  def destroy
    @stallion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stallion
        @stallion = Stallion.find(stallion_params)
        # @stallion = Stallion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stallion_params
        # params.require(stallion_params).permit(:name, :age, :stallion_id) #SystemStackError (stack level too deep): app/controllers/stallions_controller.rb:53:in `stallion_params'
        # params.require(stallion_params).permit(:name, :age, :id) #SystemStackError (stack level too deep): app/controllers/stallions_controller.rb:53:in `stallion_params'
        # params.require(stallion_params).permit(:name, :age) #SystemStackError (stack level too deep): app/controllers/stallions_controller.rb:53:in `stallion_params'
        # params.require(:stallion).permit(:name, :age)
        # params.require(:stallion).permit(:name, :age, :stallion_id)
        # params.require(:stallion).permit(:name, :age, :color, :registry_tattoo, :link_to_pedigree_url, :img_url, :stud_fee, :stakes_winner_progeny)
        # params.require(:stallion).permit(:name, :age, :color, :registry_tattoo, :link_to_pedigree_url, :img_url, :stud_fee, :stakes_winner_progeny, :stallion_id)
    #   params.require(stallion_params).permit(:name, :age, :color, :registry_tattoo, :link_to_pedigree_url, :img_url, :stud_fee, :stakes_winner_progeny)
    end
end
