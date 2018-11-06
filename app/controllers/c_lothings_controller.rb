class CLothingsController < ApplicationController
  before_action :set_c_lothing, only: [:show, :edit, :update, :destroy]

  # GET /c_lothings
  # GET /c_lothings.json
  def index
    @c_lothings = CLothing.all
  end

  # GET /c_lothings/1
  # GET /c_lothings/1.json
  def show
  end

  # GET /c_lothings/new
  def new
    @c_lothing = CLothing.new
  end

  # GET /c_lothings/1/edit
  def edit
  end

  # POST /c_lothings
  # POST /c_lothings.json
  def create
    @c_lothing = CLothing.new(c_lothing_params)

    respond_to do |format|
      if @c_lothing.save
        format.html { redirect_to @c_lothing, notice: 'C lothing was successfully created.' }
        format.json { render :show, status: :created, location: @c_lothing }
      else
        format.html { render :new }
        format.json { render json: @c_lothing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_lothings/1
  # PATCH/PUT /c_lothings/1.json
  def update
    respond_to do |format|
      if @c_lothing.update(c_lothing_params)
        format.html { redirect_to @c_lothing, notice: 'C lothing was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_lothing }
      else
        format.html { render :edit }
        format.json { render json: @c_lothing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_lothings/1
  # DELETE /c_lothings/1.json
  def destroy
    @c_lothing.destroy
    respond_to do |format|
      format.html { redirect_to c_lothings_url, notice: 'C lothing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_lothing
      @c_lothing = CLothing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_lothing_params
      params.require(:c_lothing).permit(:name, :category, :price, :description, :colour, :size, :outer_id)
    end
end
