class PlannerBookingsController < ApplicationController
  before_action :set_planner_booking, only: %i[ show edit update destroy ]

  # GET /planner_bookings or /planner_bookings.json
  def index
    @planner_bookings = PlannerBooking.all
  end

  # GET /planner_bookings/1 or /planner_bookings/1.json
  def show
  end

  # GET /planner_bookings/new
  def new
    @planner_booking = PlannerBooking.new
  end

  # GET /planner_bookings/1/edit
  def edit
  end

  # POST /planner_bookings or /planner_bookings.json
  def create
    @planner_booking = PlannerBooking.new(planner_booking_params)

    respond_to do |format|
      if @planner_booking.save
        format.html { redirect_to planner_booking_url(@planner_booking), notice: "Planner booking was successfully created." }
        format.json { render :show, status: :created, location: @planner_booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @planner_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planner_bookings/1 or /planner_bookings/1.json
  def update
    respond_to do |format|
      if @planner_booking.update(planner_booking_params)
        format.html { redirect_to planner_booking_url(@planner_booking), notice: "Planner booking was successfully updated." }
        format.json { render :show, status: :ok, location: @planner_booking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @planner_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planner_bookings/1 or /planner_bookings/1.json
  def destroy
    @planner_booking.destroy

    respond_to do |format|
      format.html { redirect_to planner_bookings_url, notice: "Planner booking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planner_booking
      @planner_booking = PlannerBooking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def planner_booking_params
      params.require(:planner_booking).permit(:start_time, :end_time, :user_id, :planner_id)
    end
end
