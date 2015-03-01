class SquaresController < ApplicationController
  before_action :set_pool
  before_action :set_square, only: [:show, :edit, :update, :destroy]

  # GET /squares
  # GET /squares.json
  def index
    @squares = @pool.squares
  end

  # GET /squares/1
  # GET /squares/1.json
  def show
  end

  # GET /squares/new
  def new
    @square = @pool.squares.new
  end

  # GET /squares/1/edit
  def edit
  end

  # POST /squares
  # POST /squares.json
  def create
    @square = @pool.squares.new(square_params)

    respond_to do |format|
      if @square.save
        format.html { redirect_to pool_square_path(@pool, @square), notice: 'Square was successfully created.' }
        format.json { render :show, status: :created, location: @square }
      else
        format.html { render :new }
        format.json { render json: @square.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /squares/1
  # PATCH/PUT /squares/1.json
  def update
    respond_to do |format|
      if @square.update(square_params)
        format.html { redirect_to pool_square_path(@pool, @square), notice: 'Square was successfully updated.' }
        format.json { render :show, status: :ok, location: @square }
      else
        format.html { render :edit }
        format.json { render json: @square.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /squares/1
  # DELETE /squares/1.json
  def destroy
    @square.destroy
    respond_to do |format|
      format.html { redirect_to pool_squares_url(@pool), notice: 'Square was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_square
      @square = @pool.squares.where(:id => params[:id]).first!
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_pool
      @pool = Pool.find(params[:pool_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def square_params
      params.require(:square).permit(:x, :y)
    end
end
