class MonstersController < ApplicationController
  before_action :set_monster, only: [:show, :update, :destroy]
  respond_to :json, :html

  def index
    @monsters = Monster.all
  end

  def show
   @monster = Monster.find(params[:id])
   #render :template => "monsters/show"
   #render :template => "monsters/show" # Does not work because outputs as HTML
   render json: @monster
  end

  # GET /monsters/new
  def new
    @monster = Monster.new
  end

  # GET /monsters/1/edit
  def edit
  end

  # Importation of Monster Data
  def import
   begin
    Monster.import(params[:file])
    redirect_to monsters_path, notice: "Monster Characters Data Loaded."
   rescue
    redirect_to monsters_path, notice: "Invalid CSV file format."
   end
  end
     
  def fight
  end
 
  def escape 
  end

  # PATCH/PUT /monsters/1
  # PATCH/PUT /monsters/1.json
  def update
    respond_to do |format|
      if @monster.update(monster_params)
        format.html { redirect_to @monster, notice: 'Monster was successfully updated.' }
        format.json { render :show, status: :ok, location: @monster }
      else
        format.html { render :edit }
        format.json { render json: @monster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monsters/1
  # DELETE /monsters/1.json
  def destroy
    @monster.destroy
    respond_to do |format|
      format.html { redirect_to monsters_url, notice: 'Monster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monster
      @monster = Monster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monster_params
      params.require(:monster).permit(:location, :name, :description, :strength)
    end
end
