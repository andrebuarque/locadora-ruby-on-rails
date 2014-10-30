class RentsController < ApplicationController
  before_action :set_rent, only: [:show, :edit, :update, :destroy]
  before_action :set_movies, only: [:new, :edit]

  # GET /rents
  # GET /rents.json
  def index
    @rents = Rent.includes(:tenant, :movies)
  end

  # GET /rents/1
  # GET /rents/1.json
  def show
  end

  # GET /rents/new
  def new
    @rent = Rent.new
  end

  # GET /rents/1/edit
  def edit
  end

  # POST /rents
  # POST /rents.json
  def create
    @rent = Rent.new(rent_params)

    respond_to do |format|
      if @rent.save
        format.html { redirect_to @rent, notice: 'Rent was successfully created.' }
        format.json { render :show, status: :created, location: @rent }
      else
        format.html { render :new }
        format.json { render json: @rent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rents/1
  # PATCH/PUT /rents/1.json
  def update
    respond_to do |format|
      if @rent.update(rent_params)
        format.html { redirect_to @rent, notice: 'Rent was successfully updated.' }
        format.json { render :show, status: :ok, location: @rent }
      else
        format.html { render :edit }
        format.json { render json: @rent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rents/1
  # DELETE /rents/1.json
  def destroy
    @rent.destroy
    respond_to do |format|
      format.html { redirect_to rents_url, notice: 'Rent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent
      @rent = Rent.find(params[:id])
    end

    def set_movies
      @movies = Movie.where(rented: false)
      if not @rent.try(:movies).nil?
        @rent.try(:movies).each do |movie|
          @movies << movie if not @movies.include? movie
        end
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rent_params
      params.require(:rent).permit(:price, :date, :preview_date, :end_date, :tenant_id, :movie_ids => [])
    end
end
