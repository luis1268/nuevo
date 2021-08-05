class LuisController < ApplicationController
  before_action :set_lui, only: %i[ show edit update destroy ]

  # GET /luis or /luis.json
  def index
    @luis = Lui.all
  end

  # GET /luis/1 or /luis/1.json
  def show
  end

  # GET /luis/new
  def new
    @lui = Lui.new
  end

  # GET /luis/1/edit
  def edit
  end

  # POST /luis or /luis.json
  def create
    @lui = Lui.new(lui_params)

    respond_to do |format|
      if @lui.save
        format.html { redirect_to @lui, notice: "Lui was successfully created." }
        format.json { render :show, status: :created, location: @lui }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lui.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /luis/1 or /luis/1.json
  def update
    respond_to do |format|
      if @lui.update(lui_params)
        format.html { redirect_to @lui, notice: "Lui was successfully updated." }
        format.json { render :show, status: :ok, location: @lui }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lui.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /luis/1 or /luis/1.json
  def destroy
    @lui.destroy
    respond_to do |format|
      format.html { redirect_to luis_url, notice: "Lui was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lui
      @lui = Lui.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lui_params
      params.require(:lui).permit(:name, :apellido, :edad, :email, :contrasena)
    end
end
