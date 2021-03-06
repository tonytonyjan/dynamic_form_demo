class AttendeesController < ApplicationController
  before_action :set_form, only: %i[new create]

  def index
    @attendees = current_user.attendees.page(params[:page])
  end

  def show
    @attendee = current_user.attendees.find(params[:id])
  end

  def new
    @attendee = Attendee.new
  end

  def create
    @attendee = @form.attendees.new(attendee_params)
    @attendee.user = current_user
    if @attendee.save
      redirect_to @attendee
    else
      render :new
    end
  end

  private
  def set_form
    @form = Form.find(params[:form_id])
  end

  def attendee_params
    params.require(:attendee).permit(
      field_values_attributes: [:id, :_destroy, :attendee_id, :field_id, :value, value: []]
    )
  end
end
