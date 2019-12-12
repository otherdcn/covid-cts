class SpecialisationsController < ApplicationController
  before_action :get_person
  before_action :set_specialisation, only: [:show, :edit, :update, :destroy]

  # GET /specialisations
  # GET /specialisations.json
  def index
    @specialisations = @person.specialisations
  end

  # GET /specialisations/1
  # GET /specialisations/1.json
  def show
  end

  # GET /specialisations/new
  def new
    @specialisation = @person.specialisations.build
  end

  # GET /specialisations/1/edit
  def edit
  end

  # POST /specialisations
  # POST /specialisations.json
  def create
    @specialisation = @person.specialisations.build(specialisation_params)

    respond_to do |format|
      if @specialisation.save
        format.html { redirect_to person_path(@person), notice: 'Specialisation was successfully created.' }
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
        format.html { redirect_to person_path(@person), notice: 'Specialisation was successfully updated.' }
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
      format.html { redirect_to person_path(@person), notice: 'Specialisation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def get_person
      @person = Person.find(params[:person_id])
    end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_specialisation
      @specialisation = @person.specialisations.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specialisation_params
      params.require(:specialisation).permit(:field_id, :level, :station_duty, :category_id, :person_id)
      #params.fetch(:specialisation, {})
    end
end
