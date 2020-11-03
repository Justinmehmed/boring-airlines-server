class BoringAirlinesController < ApplicationController
  before_action :set_boring_airline, only: [:show, :edit, :update, :destroy]

  # GET /boring_airlines
  # GET /boring_airlines.json
  def index
    @boring_airlines = BoringAirline.all
  end

  # GET /boring_airlines/1
  # GET /boring_airlines/1.json
  def show
  end

  # GET /boring_airlines/new
  def new
    @boring_airline = BoringAirline.new
  end

  # GET /boring_airlines/1/edit
  def edit
  end

  # POST /boring_airlines
  # POST /boring_airlines.json
  def create
    @boring_airline = BoringAirline.new(boring_airline_params)

    respond_to do |format|
      if @boring_airline.save
        format.html { redirect_to @boring_airline, notice: 'Boring airline was successfully created.' }
        format.json { render :show, status: :created, location: @boring_airline }
      else
        format.html { render :new }
        format.json { render json: @boring_airline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boring_airlines/1
  # PATCH/PUT /boring_airlines/1.json
  def update
    respond_to do |format|
      if @boring_airline.update(boring_airline_params)
        format.html { redirect_to @boring_airline, notice: 'Boring airline was successfully updated.' }
        format.json { render :show, status: :ok, location: @boring_airline }
      else
        format.html { render :edit }
        format.json { render json: @boring_airline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boring_airlines/1
  # DELETE /boring_airlines/1.json
  def destroy
    @boring_airline.destroy
    respond_to do |format|
      format.html { redirect_to boring_airlines_url, notice: 'Boring airline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boring_airline
      @boring_airline = BoringAirline.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boring_airline_params
      params.require(:boring_airline).permit(:Content)
    end
end
