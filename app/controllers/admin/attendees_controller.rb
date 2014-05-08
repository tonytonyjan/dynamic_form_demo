class Admin::AttendeesController < AdminController
  before_action :set_admin_form
  before_action :set_admin_attendee, only: [:show, :edit, :update, :destroy]

  # GET /admin/attendees
  # GET /admin/attendees.json
  def index
    @admin_attendees = @admin_form.attendees.all.order('id DESC').page(params[:page])
  end

  # GET /admin/attendees/1
  # GET /admin/attendees/1.json
  def show
  end

  # GET /admin/attendees/new
  def new
    @admin_attendee = Admin::Attendee.new
  end

  # GET /admin/attendees/1/edit
  def edit
  end

  # POST /admin/attendees
  # POST /admin/attendees.json
  def create
    @admin_attendee = @admin_form.attendees.new(admin_attendee_params)
    respond_to do |format|
      if @admin_attendee.save
        format.html { redirect_to admin_form_attendee_path(@admin_form, @admin_attendee), notice: t('crud.created_successfully!', name: Admin::Attendee.model_name.human) }
        format.json { render :show, status: :created, location: @admin_attendee }
      else
        format.html { render :new }
        format.json { render json: @admin_attendee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/attendees/1
  # PATCH/PUT /admin/attendees/1.json
  def update
    respond_to do |format|
      if @admin_attendee.update(admin_attendee_params)
        format.html { redirect_to admin_form_attendee_path(@admin_form, @admin_attendee), notice: t('crud.updated_successfully!', name: Admin::Attendee.model_name.human) }
        format.json { render :show, status: :ok, location: @admin_attendee }
      else
        format.html { render :edit }
        format.json { render json: @admin_attendee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/attendees/1
  # DELETE /admin/attendees/1.json
  def destroy
    @admin_attendee.destroy
    respond_to do |format|
      format.html { redirect_to [@admin_form, Attendee] }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_attendee
      @admin_attendee = Admin::Attendee.find(params[:id])
    end

    def set_admin_form
      @admin_form = Admin::Form.find(params[:form_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_attendee_params
      params
        .require(:admin_attendee)
        .permit(
          :user_id, :form_id, field_values_attributes: %i[id _destroy attendee_id field_id value]
        )
    end
end
