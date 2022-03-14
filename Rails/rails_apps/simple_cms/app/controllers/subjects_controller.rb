class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
  end

  def edit
    @subject = Subject.find(params[:id]) 
  end

  def update
    @subject = Subject.find(params[:id])
    @subject.update(name: params[:subject][:name])
    @subject.update(position: params[:subject][:position])
    redirect_to subjects_path, :notice => "Subject has been updated"
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to subjects_path, :notice => "Subject has been destroyed"
  end
end
