class LanguageProficienciesController < ApplicationController
  before_action :get_person
  before_action :set_language_proficiency, only: [:show, :edit, :update, :destroy]

  # GET /language_proficiencies
  # GET /language_proficiencies.json
  def index
    @language_proficiencies = @person.language_proficiencies
  end

  # GET /language_proficiencies/1
  # GET /language_proficiencies/1.json
  def show
  end

  # GET /language_proficiencies/new
  def new
    @language_proficiency = @person.language_proficiencies.build
  end

  # GET /language_proficiencies/1/edit
  def edit
  end

  # POST /language_proficiencies
  # POST /language_proficiencies.json
  def create
    @language_proficiency = @person.language_proficiencies.build(language_proficiency_params)

    respond_to do |format|
      if @language_proficiency.save
        format.html { redirect_to person_path(@person), notice: 'Language proficiency was successfully created.' }
        format.json { render :show, status: :created, location: @language_proficiency }
      else
        format.html { render :new }
        format.json { render json: @language_proficiency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /language_proficiencies/1
  # PATCH/PUT /language_proficiencies/1.json
  def update
    respond_to do |format|
      if @language_proficiency.update(language_proficiency_params)
        format.html { redirect_to person_path(@person), notice: 'Language proficiency was successfully updated.' }
        format.json { render :show, status: :ok, location: @language_proficiency }
      else
        format.html { render :edit }
        format.json { render json: @language_proficiency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /language_proficiencies/1
  # DELETE /language_proficiencies/1.json
  def destroy
    @language_proficiency.destroy
    respond_to do |format|
      format.html { redirect_to person_path(@person), notice: 'Language proficiency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def get_person
      @person = Person.find(params[:person_id])
    end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_language_proficiency
      @language_proficiency = @person.language_proficiencies.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def language_proficiency_params
      params.require(:language_proficiency).permit(:language, :read, :write, :speak, :person_id)
      #params.fetch(:language_proficiency, {})
    end
end
