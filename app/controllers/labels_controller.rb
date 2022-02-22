class LabelsController < ApplicationController
  def index
    @labels = Label.all.order(:name)
  end

  def new
    @action = 'new'
    @label = Label.new()
  end

  def create
    @label = Label.new(label_params)
    debugger
    if @label.save!
      redirect_to labels_path
    else
      render 'new'
    end
  end

  def show
    @label = Label.find(params[:id])
  end

  def edit
    @action = 'edit'
    @label = Label.find(params[:id])
  end

  def update
    @label = Label.find(params[:id])
    if @label.update(label_params)
      redirect_to labels_path
    else
      render 'edit'
    end
  end

  def delete
  end



  private
  def label_params
    params.require(:label).permit(:name)
  end
end
