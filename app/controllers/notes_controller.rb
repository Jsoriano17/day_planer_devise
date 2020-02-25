class NotesController < ApplicationController
  before_action :set_plans 
  before_action :set_note, only: [:show, :edit, :update, :destroy]
  def index
    @notes = @plan.notes
  end

  def show
  end

  def new

  end
  
  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_plans
    @plan = Plan.find(params[:plan_id])
  end
  
  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:body)
  end

end
