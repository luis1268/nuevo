class AngelitoprosController < ApplicationController
  before_action :set_angelitopro, only: %i[ show edit update destroy ]

  # GET /angelitopros or /angelitopros.json
  def index
    @angelitopros = Angelitopro.all
  end

  # GET /angelitopros/1 or /angelitopros/1.json
  def show
  end

  # GET /angelitopros/new
  def new
    @angelitopro = Angelitopro.new
  end

  # GET /angelitopros/1/edit
  def edit
  end

  # POST /angelitopros or /angelitopros.json
  def create
    @angelitopro = Angelitopro.new(angelitopro_params)

    respond_to do |format|
      if @angelitopro.save
        format.html { redirect_to @angelitopro, notice: "Angelitopro was successfully created." }
        format.json { render :show, status: :created, location: @angelitopro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @angelitopro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /angelitopros/1 or /angelitopros/1.json
  def update
    respond_to do |format|
      if @angelitopro.update(angelitopro_params)
        format.html { redirect_to @angelitopro, notice: "Angelitopro was successfully updated." }
        format.json { render :show, status: :ok, location: @angelitopro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @angelitopro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /angelitopros/1 or /angelitopros/1.json
  def destroy
    @angelitopro.destroy
    respond_to do |format|
      format.html { redirect_to angelitopros_url, notice: "Angelitopro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_angelitopro
      @angelitopro = Angelitopro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def angelitopro_params
      params.require(:angelitopro).permit(:name, :apellido, :edad, :email)
    end
end
