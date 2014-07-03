class ReccomendationsController < ApplicationController
  before_action :set_reccomendation, only: [:show, :edit, :update, :destroy]

  # GET /reccomendations
  # GET /reccomendations.json
  def index
    @reccomendations = Reccomendation.all
  end

  # GET /reccomendations/1
  # GET /reccomendations/1.json
  def show
  end

  # GET /reccomendations/new
  def new
    @reccomendation = Reccomendation.new
  end

  # GET /reccomendations/1/edit
  def edit
  end

  # POST /reccomendations
  # POST /reccomendations.json
  def create
    @reccomendation = Reccomendation.new(reccomendation_params)

    respond_to do |format|
      if @reccomendation.save
        format.html { redirect_to @reccomendation, notice: 'Reccomendation was successfully created.' }
        format.json { render :show, status: :created, location: @reccomendation }
      else
        format.html { render :new }
        format.json { render json: @reccomendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reccomendations/1
  # PATCH/PUT /reccomendations/1.json
  def update
    respond_to do |format|
      if @reccomendation.update(reccomendation_params)
        format.html { redirect_to @reccomendation, notice: 'Reccomendation was successfully updated.' }
        format.json { render :show, status: :ok, location: @reccomendation }
      else
        format.html { render :edit }
        format.json { render json: @reccomendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reccomendations/1
  # DELETE /reccomendations/1.json
  def destroy
    @reccomendation.destroy
    respond_to do |format|
      format.html { redirect_to reccomendations_url, notice: 'Reccomendation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reccomendation
      @reccomendation = Reccomendation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reccomendation_params
      params.require(:reccomendation).permit(:benefit_id, :name, :copy, :url, :favicon_url)
    end
end
