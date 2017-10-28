class InstaController < ApplicationController
  before_action :set_instagram, only: [:show, :edit, :update, :destroy]
  # GET /insta
  # GET /insta.json
  def index
    @instagram=Instagram.all
  end

  # GET /insta/1
  # GET /insta/1.json
  def show
    
  end

  # GET /insta/new
  def new
    if params[:back]
      @instagram = Instagram.new(instagram_params)
    else
      @instagram = Instagram.new
    end
  end

  # GET /insta/1/edit
  def edit
  end

  # POST /insta
  # POST /insta.json
  def create
    @instagram = Instagram.new(instagram_params)

    respond_to do |format|
      if @instagram.save
        format.html { redirect_to @instagram, notice: 'instagram was successfully created.' }
        format.json { render :show, status: :created, location: @instagram }
      else
        format.html { render :new }
        format.json { render json: @instagram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insta/1
  # PATCH/PUT /insta/1.json
  def update
    respond_to do |format|
      if @instagram.update(instagram_params)
        format.html { redirect_to @instagram, notice: 'instagram was successfully updated.' }
        format.json { render :show, status: :ok, location: @instagram }
      else
        format.html { render :edit }
        format.json { render json: @instagram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insta/1
  # DELETE /insta/1.json
  def destroy
    @instagram.destroy
    respond_to do |format|
      format.html { redirect_to insta_url, notice: 'instagram was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instagram
      @instagram = Instagram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instagram_params
      params.require(:instagram).permit(:content, :image)
    end
  
end
