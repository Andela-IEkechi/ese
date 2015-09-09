class TvsController < ApplicationController
  before_action :set_tv, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  def index
    @tvs = Tv.all
  end

  def show
  end

  def new
    @tv = Tv.new
  end

  def edit
  end

  def create
    @tv = Tv.new(tv_params)

    respond_to do |format|
      if @tv.save
        format.html { redirect_to @tv, notice: 'Tv was successfully created.' }
        format.json { render :show, status: :created, location: @tv }
      else
        format.html { render :new }
        format.json { render json: @tv.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @tv.update(tv_params)
        format.html { redirect_to @tv, notice: 'Tv was successfully updated.' }
        format.json { render :show, status: :ok, location: @tv }
      else
        format.html { render :edit }
        format.json { render json: @tv.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tv.destroy
    respond_to do |format|
      format.html { redirect_to tvs_url, notice: 'Tv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_tv
      @tv = Tv.find(params[:id])
    end

    def tv_params
      params.require(:tv).permit(:title, :description, :published, :youtube_url)
    end
end
