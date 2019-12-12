class QualificationsController < ApplicationController
  before_action :get_person
  before_action :set_qualification, only: [:show, :edit, :update, :destroy]

  # GET /qualifications
  # GET /qualifications.json
  def index
    @qualifications = @person.qualifications
  end

  # GET /qualifications/1
  # GET /qualifications/1.json
  def show
  end

  # GET /qualifications/new
  def new
    @qualification = @person.qualifications.build
  end

  # GET /qualifications/1/edit
  def edit
  end

  # POST /qualifications
  # POST /qualifications.json
  def create
    @qualification = @person.qualifications.build(qualification_params)

    respond_to do |format|
      if @qualification.save
        format.html { redirect_to person_path(@person), notice: 'Qualification was successfully created.' }
        format.json { render :show, status: :created, location: @qualification }
      else
        format.html { render :new }
        format.json { render json: @qualification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qualifications/1
  # PATCH/PUT /qualifications/1.json
  def update
    respond_to do |format|
      if @qualification.update(qualification_params)
        format.html { redirect_to person_path(@person), notice: 'Qualification was successfully updated.' }
        format.json { render :show, status: :ok, location: @qualification }
      else
        format.html { render :edit }
        format.json { render json: @qualification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qualifications/1
  # DELETE /qualifications/1.json
  def destroy
    @qualification.destroy
    respond_to do |format|
      format.html { redirect_to person_path(@person), notice: 'Qualification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def get_person
      @person = Person.find(params[:person_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_qualification
      @qualification = @person.qualifications.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qualification_params
      params.require(:qualification).permit(:qual_obtained, :institution, :courses_passed, :major_subjects, :nqf_level, :date_from, :date_to, :person_id)
      #params.fetch(:qualification, {})
    end
end
