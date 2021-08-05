class ChocolatesController < ApplicationController
  before_action :set_chocolate, only: %i[ show edit update destroy ]

  # GET /chocolates or /chocolates.json
  def index
    @chocolates = Chocolate.all
  end

  # GET /chocolates/1 or /chocolates/1.json
  def show
  end

  # GET /chocolates/new
  def new
    @chocolate = Chocolate.new
  end

  # GET /chocolates/1/edit
  def edit
  end

  # POST /chocolates or /chocolates.json
  def create
    @chocolate = Chocolate.new(chocolate_params)

    respond_to do |format|
      if @chocolate.save
        format.html { redirect_to @chocolate, notice: "Chocolate was successfully created." }
        format.json { render :show, status: :created, location: @chocolate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chocolate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chocolates/1 or /chocolates/1.json
  def update
    respond_to do |format|
      if @chocolate.update(chocolate_params)
        format.html { redirect_to @chocolate, notice: "Chocolate was successfully updated." }
        format.json { render :show, status: :ok, location: @chocolate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chocolate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chocolates/1 or /chocolates/1.json
  def destroy
    @chocolate.destroy
    respond_to do |format|
      format.html { redirect_to chocolates_url, notice: "Chocolate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chocolate
      @chocolate = Chocolate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chocolate_params
      params.require(:chocolate).permit(:name, :apellido, :edad, :email)
    end
end
