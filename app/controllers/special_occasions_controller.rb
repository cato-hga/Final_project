class SpecialOccasionsController < ApplicationController
  before_action :set_special_occasion, only: [:show, :edit, :update, :destroy]

  # GET /special_occasions
  # GET /special_occasions.json
  def index
    @special_occasions = SpecialOccasion.all
  end

  # GET /special_occasions/1
  # GET /special_occasions/1.json
  def show
  end

  # GET /special_occasions/new
  def new
    @special_occasion = SpecialOccasion.new
  end

  # GET /special_occasions/1/edit
  def edit
  end

  # POST /special_occasions
  # POST /special_occasions.json
  def create
    @special_occasion = SpecialOccasion.new(special_occasion_params)

    respond_to do |format|
      if @special_occasion.save
        format.html { redirect_to @special_occasion, notice: 'Special occasion was successfully created.' }
        format.json { render :show, status: :created, location: @special_occasion }
      else
        format.html { render :new }
        format.json { render json: @special_occasion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /special_occasions/1
  # PATCH/PUT /special_occasions/1.json
  def update
    respond_to do |format|
      if @special_occasion.update(special_occasion_params)
        format.html { redirect_to @special_occasion, notice: 'Special occasion was successfully updated.' }
        format.json { render :show, status: :ok, location: @special_occasion }
      else
        format.html { render :edit }
        format.json { render json: @special_occasion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /special_occasions/1
  # DELETE /special_occasions/1.json
  def destroy
    @special_occasion.destroy
    respond_to do |format|
      format.html { redirect_to special_occasions_url, notice: 'Special occasion was successfully destroyed.' }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_special_occasion
      @special_occasion = SpecialOccasion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def special_occasion_params
      params.require(:special_occasion).permit(:name, :recipient_id)
    end
end
