class PoolDetailsController < ApplicationController
  before_action :set_pool_detail, only: [:show, :edit, :update, :destroy]

  # GET /pool_details
  # GET /pool_details.json
  def index
    @pool_details = PoolDetail.all
  end

  # GET /pool_details/1
  # GET /pool_details/1.json
  def show
  end

  # GET /pool_details/new
  def new
    @pool_detail = PoolDetail.new
  end

  # GET /pool_details/1/edit
  def edit
  end

  # POST /pool_details
  # POST /pool_details.json
  def create
    @pool_detail = PoolDetail.new(pool_detail_params)

    respond_to do |format|
      if @pool_detail.save
        format.html { redirect_to @pool_detail, notice: 'Pool detail was successfully created.' }
        format.json { render :show, status: :created, location: @pool_detail }
      else
        format.html { render :new }
        format.json { render json: @pool_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pool_details/1
  # PATCH/PUT /pool_details/1.json
  def update
    respond_to do |format|
      if @pool_detail.update(pool_detail_params)
        format.html { redirect_to @pool_detail, notice: 'Pool detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @pool_detail }
      else
        format.html { render :edit }
        format.json { render json: @pool_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pool_details/1
  # DELETE /pool_details/1.json
  def destroy
    @pool_detail.destroy
    respond_to do |format|
      format.html { redirect_to pool_details_url, notice: 'Pool detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pool_detail
      @pool_detail = PoolDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pool_detail_params
      params.require(:pool_detail).permit(:axis_assignment, :position, :value)
    end
end
