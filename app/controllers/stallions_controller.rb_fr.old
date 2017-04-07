              #############################################
              # 201702221638L     EL MARTES   GIRO
              # GIRO:  CHANGED StallionsController to StallionsController
              #############################################
              # 201702281245L     EL MARTES   GIRO

class StallionsController < ApplicationController

def index
@stallions = Stallion.all
end

def show
@stallion = Stallion.find(params[:id])
end

                    #############################################
                    #GIRO: METHODS new AND create work as a pair
def new                         #GIRO:    POST   /stallions(.:format)   stallions#create
@stallion = Stallion.new              #GIRO:   http://localhost:3000/stallions/new
end
def create
@stallion = Stallion.create!(stallion_params)
redirect_to stallion_path(@stallion)   #GIRO:  http://localhost:3000/stallions/13
end
                    #GIRO: METHODS new AND create work as a pair
                    #############################################



                  #############################################
                  #GIRO: METHODS edit AND update work as a pair
def edit
@stallion = Stallion.find(params[:id])
end
def update
@stallion = Stallion.find(params[:id])
@stallion.update(stallion_params)
redirect_to stallion_path(@stallion)
end
                  #GIRO: METHODS edit AND update work as a pair
                  #############################################


def destroy
@stallion = Stallion.find(params[:id])
# @stallion.destroy(stallion_params)
@stallion.destroy
redirect_to  stallions_path(@stallion)
end


                  #############################################
                  #GIRO: THIS private FUNCTION IS SHARED THIS MUST COME AT THE END OF THIS File OTHERWISE SAYS MTD METHOD DONT EXIST
private
def stallion_params
params.require(:stallion).permit(:name, :img_url, :stallion_id)
end
                  #GIRO: THIS private FUNCTION IS SHARED
                  #############################################
end
