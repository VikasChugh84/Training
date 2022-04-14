class ProjectPagesController < ApplicationController
  before_action :set_project_page, only: %i[ show edit update destroy ]

  # GET /project_pages or /project_pages.json
  def index
    @project_pages = ProjectPage.all
  end

  # GET /project_pages/1 or /project_pages/1.json
  def show
  end

  # GET /project_pages/new
  def new
    @project_page = ProjectPage.new
  end

  # GET /project_pages/1/edit
  def edit
    @projects = Project.all
  end

  # POST /project_pages or /project_pages.json
  def create
    @project_page = ProjectPage.new(project_page_params)

    respond_to do |format|
      if @project_page.save
        format.html { redirect_to project_page_url(@project_page), notice: "Project page was successfully created." }
        format.json { render :show, status: :created, location: @project_page }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_pages/1 or /project_pages/1.json
  def update
    @projects = Project.all
    respond_to do |format|
      if @project_page.update(project_page_params)
        format.html { redirect_to project_page_url(@project_page), notice: "Project page was successfully updated." }
        format.json { render :show, status: :ok, location: @project_page }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_pages/1 or /project_pages/1.json
  def destroy
    @project_page.destroy

    respond_to do |format|
      format.html { redirect_to project_pages_url, notice: "Project page was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_page
      @project_page = ProjectPage.find(params[:id])
    end

    def project_page_params
      params.require(:project_page).permit(:project_id, :title, :description, :project_content)
    end
end
