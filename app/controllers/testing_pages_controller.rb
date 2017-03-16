class TestingPagesController < ApplicationController
  before_action :set_testing_page, only: [:show, :edit, :update, :destroy]

  # GET /testing_pages
  # GET /testing_pages.json
  def index
    @testing_pages = TestingPage.all
  end

  # GET /testing_pages/1
  # GET /testing_pages/1.json
  def show
  end

  # GET /testing_pages/new
  def new
    @testing_page = TestingPage.new
  end

  # GET /testing_pages/1/edit
  def edit
  end

  # POST /testing_pages
  # POST /testing_pages.json
  def create
    @testing_page = TestingPage.new(testing_page_params)

    respond_to do |format|
      if @testing_page.save
        format.html { redirect_to @testing_page, notice: 'Testing page was successfully created.' }
        format.json { render :show, status: :created, location: @testing_page }
      else
        format.html { render :new }
        format.json { render json: @testing_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testing_pages/1
  # PATCH/PUT /testing_pages/1.json
  def update
    respond_to do |format|
      if @testing_page.update(testing_page_params)
        format.html { redirect_to @testing_page, notice: 'Testing page was successfully updated.' }
        format.json { render :show, status: :ok, location: @testing_page }
      else
        format.html { render :edit }
        format.json { render json: @testing_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testing_pages/1
  # DELETE /testing_pages/1.json
  def destroy
    @testing_page.destroy
    respond_to do |format|
      format.html { redirect_to testing_pages_url, notice: 'Testing page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testing_page
      @testing_page = TestingPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testing_page_params
      params.require(:testing_page).permit(:home, :help, :about)
    end
end
