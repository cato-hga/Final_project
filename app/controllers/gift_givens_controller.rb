class GiftGivensController < ApplicationController
  before_action :set_gift_given, only: [:show, :edit, :update, :destroy]

  # GET /gift_givens
  # GET /gift_givens.json
  def index
    @gift_givens = GiftGiven.all
  end

  # GET /gift_givens/1
  # GET /gift_givens/1.json
  def show
  end

  # GET /gift_givens/new
  def new
    @gift_given = GiftGiven.new
  end

  # GET /gift_givens/1/edit
  def edit
  end

  # POST /gift_givens
  # POST /gift_givens.json
  def create
    @gift_given = GiftGiven.new(gift_given_params)

    respond_to do |format|
      if @gift_given.save
        format.html { redirect_to @gift_given, notice: 'Gift given was successfully created.' }
        format.json { render :show, status: :created, location: @gift_given }
      else
        format.html { render :new }
        format.json { render json: @gift_given.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gift_givens/1
  # PATCH/PUT /gift_givens/1.json
  def update
    respond_to do |format|
      if @gift_given.update(gift_given_params)
        format.html { redirect_to @gift_given, notice: 'Gift given was successfully updated.' }
        format.json { render :show, status: :ok, location: @gift_given }
      else
        format.html { render :edit }
        format.json { render json: @gift_given.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gift_givens/1
  # DELETE /gift_givens/1.json
  def destroy
    @gift_given.destroy
    respond_to do |format|
      format.html { redirect_to gift_givens_url, notice: 'Gift given was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gift_given
      @gift_given = GiftGiven.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gift_given_params
      params.require(:gift_given).permit(:gift_name)
    end
end