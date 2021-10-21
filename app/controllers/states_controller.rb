class StatesController < ApplicationController
  before_action :set_state, only: %i[ show edit update destroy ]

  # GET /states or /states.json
  def index
    @states = State.all
  end

  # GET /states/1 or /states/1.json
  def show
  end

  # GET /states/new
  def new
    @state = State.new
  end

  # GET /states/1/edit
  def edit
  end

  # POST /states or /states.json
  def create
    @state = State.new(state_params)

  end

  # PATCH/PUT /states/1 or /states/1.json
  def update
   
  end

  # DELETE /states/1 or /states/1.json
  def destroy
    @state.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state
      @state = State.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def state_params
      params.require(:state).permit(:visited, :unvisited, :plan_to)
    end
end
