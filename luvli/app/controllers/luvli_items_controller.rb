class LuvliItemsController < ApplicationController
  before_action :find_luv_list

  def index

  end

  def new
    @luvli_item = @luv_list.luvli_items.new
  end
  def create
    @luvli_item = @luv_list.luvli_items.new(luvli_item_params)

    if @luvli_item.save
      flash[:success] = "Added a new luvli"
      redirect_to luv_list_luvli_items_path
    else
      flash[:error] = "There was a problem adding that luvli item"
      render action: :new
    end
  end

  def edit

    @luvli_item = @luv_list.luvli_items.find(params[:id])
  end
  def update
    @luvli_item = @luv_list.luvli_items.find(params[:id])
    if @luvli_item.update_attributes(luvli_item_params)
      flash[:success] = "Updated luvli"
      redirect_to luv_list_luvli_items_path
    else
      flash[:error] = "Unable to update luvli"
      render action: :edit
    end
  end

  def url_options
    { luv_list_id: params[:luv_list_id] }.merge(super)
  end
  def destroy
    @luvli_item = @luv_list.luvli_items.find(params[:id])
    if @luvli_item.destroy
      flash[:success] = "Luvli item was successfully deleted"
    else
      flash[:error] = "Luvli could not be deleted"
    end
    redirect_to luv_list_luvli_items_path

  end

  def complete
    @luvli_item = @luv_list.luvli_items.find(params[:id])
    @luvli_item.update_attribute(:completed_at, Time.now)
    redirect_to luv_list_luvli_items_path, notice: "Luvli item was marked as complete"
  end

  private
  def find_luv_list
    @luv_list = LuvList.find(params[:luv_list_id])
  end


  def luvli_item_params
    params[:luvli_item].permit(:content)
  end
end
