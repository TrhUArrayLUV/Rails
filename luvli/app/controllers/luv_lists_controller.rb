class LuvListsController < ApplicationController
  before_action :set_luv_list, only: [:show, :edit, :update, :destroy]

  # GET /luv_lists
  # GET /luv_lists.json
  def index
    @luv_lists = LuvList.all
  end

  # GET /luv_lists/1
  # GET /luv_lists/1.json
  def show
  end

  # GET /luv_lists/new
  def new
    @luv_list = LuvList.new
  end

  # GET /luv_lists/1/edit
  def edit
  end

  # POST /luv_lists
  # POST /luv_lists.json
  def create
    @luv_list = LuvList.new(luv_list_params)

    respond_to do |format|
      if @luv_list.save
        format.html { redirect_to @luv_list, notice: 'Luv list was successfully created.' }
        format.json { render :show, status: :created, location: @luv_list }
      else
        format.html { render :new }
        format.json { render json: @luv_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /luv_lists/1
  # PATCH/PUT /luv_lists/1.json
  def update
    respond_to do |format|
      if @luv_list.update(luv_list_params)
        format.html { redirect_to @luv_list, notice: 'Luv list was successfully updated.' }
        format.json { render :show, status: :ok, location: @luv_list }
      else
        format.html { render :edit }
        format.json { render json: @luv_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /luv_lists/1
  # DELETE /luv_lists/1.json
  def destroy
    @luv_list.destroy
    respond_to do |format|
      format.html { redirect_to luv_lists_url, notice: 'Luv list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_luv_list
      @luv_list = LuvList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def luv_list_params
      params.require(:luv_list).permit(:title, :description)
    end
end
