class DashboardFormController < ApplicationController
  before_action :set_information_form, only: %i[ show edit update destroy ]

  # GET /information_forms or /information_forms.json
  def index
    @dashboard_form = DashboardForm.all
  end

  # GET /information_forms/1 or /information_forms/1.json
  def show
  end

  # GET /information_forms/new
  def new
    @dashboard_form = DashboardForm.new
  end

  # GET /information_forms/1/edit
  def edit
  end

  # POST /information_forms or /information_forms.json
  def create
    @dashboard_form = DashboardForm.new(dashboard_form_params)

    respond_to do |format|
      if @information_form.save
        format.html { redirect_to dashboard_form_url(@dashboard_form), notice: "Company File was successfully created." }
        format.json { render :show, status: :created, location: @information_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dashboard_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /information_forms/1 or /information_forms/1.json
  def update
    respond_to do |format|
      if @dashboard_form.update(dashboard_form_params)
        format.html { redirect_to dashboard_form_url(@dashboard_form), notice: "Company was successfully updated." }
        format.json { render :show, status: :ok, location: @information_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dashboard_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /information_forms/1 or /information_forms/1.json
  def destroy
    @dashboard_form.destroy

    respond_to do |format|
      format.html { redirect_to dashboard_form_url, notice: "Company was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard_form
      @dashboard_form = DashboardForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def information_form_params
      params.require(:dashboard_form).permit(:company_name, :address, :pounds_per_litre, :comment, :rating)
    end
end
