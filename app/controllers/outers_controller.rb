class OutersController < ApplicationController
  before_action :set_outer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /outers
  # GET /outers.json
  def index
    @outers = Outer.all
  end

  # GET /outers/1
  # GET /outers/1.json
  def show
    @outer = Outer.find(params[:id])
    @homes = Home.all
  end

  # GET /outers/new
  def new
    @outer = Outer.new
  end

  # GET /outers/1/edit
  def edit
  end

  # POST /outers
  # POST /outers.json
  def create
    @outer = Outer.new(outer_params)

    respond_to do |format|
      if @outer.save
        format.html { redirect_to @outer, notice: 'Outer was successfully created.' }
        format.json { render :show, status: :created, location: @outer }
      else
        format.html { render :new }
        format.json { render json: @outer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outers/1
  # PATCH/PUT /outers/1.json
  def update
    respond_to do |format|
      if @outer.update(outer_params)
        format.html { redirect_to @outer, notice: 'Outer was successfully updated.' }
        format.json { render :show, status: :ok, location: @outer }
      else
        format.html { render :edit }
        format.json { render json: @outer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outers/1
  # DELETE /outers/1.json
  def destroy
    @outer.destroy
    respond_to do |format|
      format.html { redirect_to outers_url, notice: 'Outer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outer
      @outer = Outer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outer_params
      params.require(:outer).permit(:name, :user_id)
    end
end
