class RustlesController < ApplicationController
  before_action :set_rustle, only: [:show, :edit, :update, :destroy]
  
  def index
    @rustles = Rustle.all
  end

  def new
    @rustle = Rustle.new
  end
  
  def create
    @rustle = Rustle.new(rustle_param)
    if params[:back]
       render :new
    else
      if @rustle.save
        redirect_to rustles_path, notice: "you rustle my heart!"
      else
        render :new
      end
    end
  end

  def confirm
    @rustle = Rustle.new(rustle_param)
    render :new if @rustle.invalid?
  end

  def edit
  end

  def show 
  end
 
  def update
    if @rustle.update(rustle_param)
      redirect_to rustles_path, notice: "You have edited your rustle!"
    else
      render :edit
    end
  end

  def destroy
    @rustle.destroy
    redirect_to rustles_path, notice: "You have deleted your rustle!"
  end

  private
  
  def rustle_param
    params.require(:rustle).permit(:content)
  end
  
  def set_rustle
    @rustle = Rustle.find(params[:id])
  end

end