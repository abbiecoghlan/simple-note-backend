class NotesController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show, :update, :destroy]
  
    def index
        notes = Note.all
        render json: notes
    end 

    def show 
        note = Note.find_by(id: params[:id])
        render json: note
    end 

    def create
        note = Note.create(note_params)
        render json: { note: NoteSerializer.new(note)}, status: :created
    end

    def update
        note = Note.find_by(id: params[:id])
        if note.update(note_params)
            render json: note
        else 
            render json: { error: 'failed to edit note' }, status: :not_acceptable
        end 
    end 

    def destroy
        note = Note.find_by(id: params[:id])
        note.destroy
        render json: {message: "Your note has been deleted"}
    end 

    private
   
    def note_params
        params.require(:note).permit(:title, :content, :archived, :user_id)
    end    

    # def current_note
    #     note = Note.find(params[:id])
    # end 

end
