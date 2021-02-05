class TodotasksController < ApplicationController
  before_action :set_todotask, only: %i[ show edit update destroy ]

  # GET /todotasks or /todotasks.json
  def index
    @todotasks = Todotask.all
  end

  # GET /todotasks/1 or /todotasks/1.json
  def show
  end

  # GET /todotasks/new
  def new
    @todotask = Todotask.new
  end

  # GET /todotasks/1/edit
  def edit
  end

  # POST /todotasks or /todotasks.json
  def create
    @todotask = Todotask.new(todotask_params)

    respond_to do |format|
      if @todotask.save
        format.html { redirect_to @todotask, notice: "Todotask was successfully created." }
        format.json { render :show, status: :created, location: @todotask }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @todotask.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todotasks/1 or /todotasks/1.json
  def update
    respond_to do |format|
      if @todotask.update(todotask_params)
        format.html { redirect_to @todotask, notice: "Todotask was successfully updated." }
        format.json { render :show, status: :ok, location: @todotask }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @todotask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todotasks/1 or /todotasks/1.json
  def destroy
    @todotask.destroy
    respond_to do |format|
      format.html { redirect_to todotasks_url, notice: "Todotask was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todotask
      @todotask = Todotask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todotask_params
      params.require(:todotask).permit(:task_name, :duedate)
    end
end
