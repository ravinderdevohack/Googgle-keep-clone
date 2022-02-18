class NotesController < ApplicationController
  def index
    @notes = Note.all.order(:id)
  end

  def new
    @action = 'new'
    @note = Note.new()
  end

  def create
    @note = Note.new(note_params)
    debugger
    if @note.save!
      redirect_to root_path
    else
      render 'new'
    end

  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    @action = 'edit'
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to notes_path
    else
      render 'new'
    end
  end

  def destroy
  end

  private

  def note_params
    params.require(:note).permit(:title, :description, :pinned, :archive, :date, :time, :image, :deleted)
  end

end
