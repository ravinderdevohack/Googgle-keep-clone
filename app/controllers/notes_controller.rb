class NotesController < ApplicationController
 protect_from_forgery with: :null_session
  def index
    @notes = Note.all.order(:id)
  end

  def new
    @action = 'new'
    @note = Note.new()
  end

  def create
    # debugger
    @note = Note.new(note_params)
    if @note.save!
      respond_to do |format|
        format.json{render json: @note.id.to_json}
      end
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
    @note = Note.find(params[:id])
    # debugger
    @note.update(deleted: 1)
    redirect_to root_path
  end

  def note_update
    # debugger
    @note = Note.find(params[:id])
    @description = params[:description]
    @note.update(note_params)
  end

  private

  def note_params
    params.permit(:title, :description, :date, :time, :image)
    # description: params[:description], title: params[:title], pinned: params[:pinned], 
      # archive: params[:archive], image: params[:image], date: params[:date], time: params[:time]
    # params.require(:note).permit(:title, :description, :pinned, :archive, :date, :time, :image, :deleted)
  end

end
