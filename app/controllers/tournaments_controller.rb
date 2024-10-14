class TournamentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tournament, only: %i[show edit update destroy]

  # GET /tournaments or /tournaments.json
  def index
    @tournaments = current_user.tournaments
  end

  # GET /tournaments/1 or /tournaments/1.json
  def show
  end

  # GET /tournaments/new
  def new
    @tournament = current_user.tournaments.build
  end

  # GET /tournaments/1/edit
  def edit
  end

  # POST /tournaments or /tournaments.json
  def create
    @tournament = current_user.tournaments.build(tournament_params)

    respond_to do |format|
      if @tournament.save
        format.html { redirect_to tournaments_path, notice: "Tournament was successfully created." }
        format.json { render :show, status: :created, location: @tournament }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tournaments/1 or /tournaments/1.json
  def update
    respond_to do |format|
      if @tournament.update(tournament_params)
        format.html { redirect_to tournaments_path, notice: "Tournament was successfully updated." }
        format.json { render :show, status: :ok, location: @tournament }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tournaments/1 or /tournaments/1.json
  def destroy
    @tournament.destroy!

    respond_to do |format|
      format.html { redirect_to tournaments_path, status: :see_other, notice: "Tournament was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament
      @tournament = current_user.tournaments.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tournament_params
      params.require(:tournament).permit(:name, :buy_in, :award, :position, :quantity_players, :start_date, :end_date, :link, :online, :platform)
    end
end
