class AllSpecialisationsController < ApplicationController

    before_action :set_specialisation, only: [:show, :edit, :update, :destroy]

    # GET /specialisations
    # GET /specialisations.json
    def index
      @specialisations = Specialisation.all
    end
  
    # GET /specialisations/1
    # GET /specialisations/1.json
    def show
    end
  
    # GET /specialisations/new
    def new
      @specialisation = Specialisation.new
    end
  
    # GET /specialisations/1/edit
    def edit
    end
  
    # POST /specialisations
    # POST /specialisations.json
    def create
      @specialisation = Specialisation.new(specialisation_params)
  
      respond_to do |format|
        if @specialisation.save
          format.html { redirect_to all_specialisation_path(@specialisation), notice: 'Specialisation was successfully created.' }
          format.json { render :show, status: :created, location: @specialisation }
        else
          format.html { render :new }
          format.json { render json: @specialisation.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /specialisations/1
    # PATCH/PUT /specialisations/1.json
    def update
      respond_to do |format|
        if @specialisation.update(specialisation_params)
          format.html { redirect_to all_specialisation_path(@specialisation), notice: 'Specialisation was successfully updated.' }
          format.json { render :show, status: :ok, location: @specialisation }
        else
          format.html { render :edit }
          format.json { render json: @specialisation.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /specialisations/1
    # DELETE /specialisations/1.json
    def destroy
      @specialisation.destroy
      respond_to do |format|
        format.html { redirect_to specialisations_url, notice: 'Specialisation was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_specialisation
        @specialisation = Specialisation.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def specialisation_params
        params.require(:specialisation).permit(:field_id, :level, :station_duty, :category_id, :person_id)
        #params.fetch(:specialisation, {})
      end
  
end