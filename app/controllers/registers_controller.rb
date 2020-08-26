class RegistersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :set_register, only: [:show, :edit, :update, :destroy]
  before_action :set_purpose_list

  # GET /registers
  # GET /registers.json
  def index
    @registers = Register.all
  end

  # GET /registers/1
  # GET /registers/1.json
  def show
  end

  # GET /registers/new
  def new
    @register = Register.new
  end

  # GET /registers/1/edit
  def edit
  end

  # POST /registers
  # POST /registers.json
  def create
    @register = Register.new(register_params)
    @action_notice = "#{@register.full_name} has been successfully saved. Welcome to RFA!"

    respond_to do |format|
      if @register.save
        format.html { redirect_to new_path, notice: @action_notice }
        format.json { render :show, status: :created, location: @register }
      else
        format.html { render :new }
        format.json { render json: @register.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registers/1
  # PATCH/PUT /registers/1.json
  def update
    respond_to do |format|
      if @register.update(register_params)
        format.html { redirect_to @register, notice: 'Register was successfully updated.' }
        format.json { render :show, status: :ok, location: @register }
      else
        format.html { render :edit }
        format.json { render json: @register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registers/1
  # DELETE /registers/1.json
  def destroy
    @register.destroy
    respond_to do |format|
      format.html { redirect_to registers_url, notice: 'Register was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register
      @register = Register.find(params[:id])
    end

    def set_purpose_list
      @purpose_list = ['Attending a conference','Attending a seminar','Attending a training programme','Meeting/Workshop','Official visit','Using Cafeteria','Library','Other']
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def register_params
      params.require(:register).permit(:name, :number, :purpose, :loc_org, :temp, :last_name)
    end
end
