class NotesController < ApplicationController
  before_action :set_plans 
  before_action :set_note, only: [:show, :edit, :update, :destroy]
  def index
    @notes = @plan.notes
  end

  def show
  end

  def new
    @note = Note.new
  end
  
  def create
    @note = @plan.notes.new(note_params)
    if @note.save
      redirect_to plan_notes_path	
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @note.update(note_params)
      redirect_to plan_notes_path	
    else
      render :edit
    end
  end

  def destroy
    @note.destroy
    redirect_to plan_notes_path	
  end

  private

  def set_plans
    @plan = Plan.find(params[:plan_id])
  end
  
  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:name, :time, :body)
  end

end
