class NotesController < ApplicationController
 protect_from_forgery with: :null_session
  def index
    @notes = Note.all.order(:id)      

    @empty_note = Note.notes_empty
    Note.find(@empty_note[0].id).destroy if @empty_note.present?
    # debugger

  end

  def new
    @action = 'new'
    @note = Note.new()
  end

  def create
    @note = Note.new(note_params)
    @note.save!
    respond_to do |format|
      format.json{render json: @note.id.to_json}
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
    @note.update(note_params)
  end

  def destroy
    @note = Note.find(params[:id])
    if @note.deleted == 'show'
      @note.update(deleted: 1, deleted_time: Time.now)
    else      
      @note.update(deleted: 2)
    end
    redirect_to root_path
  end

  def restore
    # debugger
    @note = Note.find(params[:id])
    @note.update(deleted: 0, deleted_time: nil)
    redirect_to root_path
  end

  private

  def note_params
    params.permit(:title, :description, :date, :time, :image)
    # description: params[:description], title: params[:title], pinned: params[:pinned], 
  end

end
