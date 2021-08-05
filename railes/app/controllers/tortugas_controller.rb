class TortugasController < ApplicationController
  before_action :set_tortuga, only: %i[ show edit update destroy ]

  # GET /tortugas or /tortugas.json
  def index
    @tortugas = Tortuga.all
  end

  # GET /tortugas/1 or /tortugas/1.json
  def show
  end

  # GET /tortugas/new
  def new
    @tortuga = Tortuga.new
  end

  # GET /tortugas/1/edit
  def edit
  end

  # POST /tortugas or /tortugas.json
  def create
    @tortuga = Tortuga.new(tortuga_params)

    respond_to do |format|
      if @tortuga.save
        format.html { redirect_to @tortuga, notice: "Tortuga was successfully created." }
        format.json { render :show, status: :created, location: @tortuga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tortuga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tortugas/1 or /tortugas/1.json
  def update
    respond_to do |format|
      if @tortuga.update(tortuga_params)
        format.html { redirect_to @tortuga, notice: "Tortuga was successfully updated." }
        format.json { render :show, status: :ok, location: @tortuga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tortuga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tortugas/1 or /tortugas/1.json
  def destroy
    @tortuga.destroy
    respond_to do |format|
      format.html { redirect_to tortugas_url, notice: "Tortuga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tortuga
      @tortuga = Tortuga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tortuga_params
      params.require(:tortuga).permit(:name, :apellido, :edad, :email)
    end
end
