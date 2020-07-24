class EmploymentHistoriesController < ApplicationController
  before_action :get_person
  before_action :set_employment_history, only: [:show, :edit, :update, :destroy]

  # GET /employment_histories
  # GET /employment_histories.json
  def index
    @employment_histories = @person.employment_histories
  end

  # GET /employment_histories/1
  # GET /employment_histories/1.json
  def show
  end

  # GET /employment_histories/new
  def new
    @employment_history = @person.employment_histories.build
  end

  # GET /employment_histories/1/edit
  def edit
  end

  # POST /employment_histories
  # POST /employment_histories.json
  def create
    @employment_history = @person.employment_histories.build(employment_history_params)

    respond_to do |format|
      if @employment_history.save
        format.html { redirect_to new_person_employment_history_path(@person), notice: 'Employment history was successfully created.' }
        format.json { render :show, status: :created, location: @employment_history }
      else
        format.html { render :new }
        format.json { render json: @employment_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employment_histories/1
  # PATCH/PUT /employment_histories/1.json
  def update
    respond_to do |format|
      if @employment_history.update(employment_history_params)
        format.html { redirect_to person_path(@person), notice: 'Employment history was successfully updated.' }
        format.json { render :show, status: :ok, location: @employment_history }
      else
        format.html { render :edit }
        format.json { render json: @employment_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employment_histories/1
  # DELETE /employment_histories/1.json
  def destroy
    @employment_history.destroy
    respond_to do |format|
      format.html { redirect_to person_path(@person), notice: 'Employment history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def get_person
      @person = Person.find(params[:person_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_employment_history
      @employment_history = @person.employment_histories.find(params[:id])
    end
 
    # Never trust parameters from the scary internet, only allow the white list through.
    def employment_history_params
      params.require(:employment_history).permit(:employer, :position_held, :key_performance_areas, :date_from, :date_to, :person_id)
      #params.fetch(:employment_history, {})
    end
end
