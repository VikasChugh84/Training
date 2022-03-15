class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
    # validations we can set it here as well but best practice to keep it on Model Side
  end

  def create
    @subject = Subject.new(subject_params_permit)
    if @subject.save
      redirect_to subjects_path, :notice => "Subject has successfully Saved"
    else
      render ('subjects/new')
    end
  end

  def edit
    @subject = Subject.find(params[:id]) 
  end

  def update
    @subject = Subject.find(params[:id])
    @subject.update(subject_params_permit)
    redirect_to subjects_path, :notice => "Subject has been updated"
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to subjects_path, :notice => "Subject has been destroyed"
  end

  private
    def subject_params_permit
      params.require(:subject).permit(:name, :position, :visible)
    end
end
