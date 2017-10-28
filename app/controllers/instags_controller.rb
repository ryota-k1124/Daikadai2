class InstagsController < ApplicationController
  before_action :set_instag, only: [:show, :edit, :update, :destroy]

  # GET /instags
  # GET /instags.json
  def index
    @instags = Instag.all
  end

  # GET /instags/1
  # GET /instags/1.json
  def show
  end

  # GET /instags/new
  def new
    @instag = Instag.new
  end

  # GET /instags/1/edit
  def edit
  end

  # POST /instags
  # POST /instags.json
  def create
    @instag = Instag.new(instag_params)

    respond_to do |format|
      if @instag.save
        format.html { redirect_to @instag, notice: 'Instag was successfully created.' }
        format.json { render :show, status: :created, location: @instag }
      else
        format.html { render :new }
        format.json { render json: @instag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instags/1
  # PATCH/PUT /instags/1.json
  def update
    respond_to do |format|
      if @instag.update(instag_params)
        format.html { redirect_to @instag, notice: 'Instag was successfully updated.' }
        format.json { render :show, status: :ok, location: @instag }
      else
        format.html { render :edit }
        format.json { render json: @instag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instags/1
  # DELETE /instags/1.json
  def destroy
    @instag.destroy
    respond_to do |format|
      format.html { redirect_to instags_url, notice: 'Instag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instag
      @instag = Instag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instag_params
      params.require(:instag).permit(:content, :image)
    end
end
