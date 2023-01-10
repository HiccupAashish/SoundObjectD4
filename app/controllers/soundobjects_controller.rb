class SoundobjectsController < ApplicationController
  before_action :set_soundobject, only: %i[ show edit update destroy ]

  # GET /soundobjects or /soundobjects.json
  def index
    @soundobjects = Soundobject.all
    render json: @soundobjects
  end

  # GET /soundobjects/1 or /soundobjects/1.json
  def show
  end

  # GET /soundobjects/new
  def new
    @soundobject = Soundobject.new
  end

  # GET /soundobjects/1/edit
  def edit
  end

  # POST /soundobjects or /soundobjects.json
  def create
    @soundobject = Soundobject.new(soundobject_params)

    respond_to do |format|
      if @soundobject.save
        format.html { redirect_to soundobject_url(@soundobject), notice: "Soundobject was successfully created." }
        format.json { render :show, status: :created, location: @soundobject }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @soundobject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /soundobjects/1 or /soundobjects/1.json
  def update
    respond_to do |format|
      if @soundobject.update(soundobject_params)
        format.html { redirect_to soundobject_url(@soundobject), notice: "Soundobject was successfully updated." }
        format.json { render :show, status: :ok, location: @soundobject }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @soundobject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soundobjects/1 or /soundobjects/1.json
  def destroy
    @soundobject.destroy

    respond_to do |format|
      format.html { redirect_to soundobjects_url, notice: "Soundobject was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soundobject
      @soundobject = Soundobject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def soundobject_params
      params.require(:soundobject).permit(:Name, :image, :description, :color)
    end
end
