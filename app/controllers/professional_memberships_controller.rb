class ProfessionalMembershipsController < ApplicationController
  before_action :set_professional_membership, only: [:show, :edit, :update, :destroy]

  # GET /professional_memberships
  # GET /professional_memberships.json
  def index
    @professional_memberships = ProfessionalMembership.all
  end

  # GET /professional_memberships/1
  # GET /professional_memberships/1.json
  def show
  end

  # GET /professional_memberships/new
  def new
    @professional_membership = ProfessionalMembership.new
  end

  # GET /professional_memberships/1/edit
  def edit
  end

  # POST /professional_memberships
  # POST /professional_memberships.json
  def create
    @professional_membership = ProfessionalMembership.new(professional_membership_params)

    respond_to do |format|
      if @professional_membership.save
        format.html { redirect_to @professional_membership, notice: 'Professional membership was successfully created.' }
        format.json { render :show, status: :created, location: @professional_membership }
      else
        format.html { render :new }
        format.json { render json: @professional_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professional_memberships/1
  # PATCH/PUT /professional_memberships/1.json
  def update
    respond_to do |format|
      if @professional_membership.update(professional_membership_params)
        format.html { redirect_to @professional_membership, notice: 'Professional membership was successfully updated.' }
        format.json { render :show, status: :ok, location: @professional_membership }
      else
        format.html { render :edit }
        format.json { render json: @professional_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professional_memberships/1
  # DELETE /professional_memberships/1.json
  def destroy
    @professional_membership.destroy
    respond_to do |format|
      format.html { redirect_to professional_memberships_url, notice: 'Professional membership was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professional_membership
      @professional_membership = ProfessionalMembership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professional_membership_params
      params.fetch(:professional_membership, {})
    end
end
