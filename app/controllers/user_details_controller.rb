class UserDetailsController < ApplicationController
  # before_action :set_user_details, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /user_details or /user_details.json
  def index
    @user_details = current_user&.user_details&.where&.not("permissions.access": :owner)
  end

  # GET /user_details/1 or /user_details/1.json
  def show
  end

  # GET /user_details/new
  def new
    # @user_detail = current_user.user_details.build
  end

  # GET /user_details/1/edit
  def edit
  end

  # POST /user_details or /user_details.json
  def create
    # binding.pry
    @user_detail = current_user.user_details.build(user_detail_params)
    respond_to do |format|
      if @user_detail.save
        format.html { redirect_to @user_detail, notice: "user_detail was successfully created." }
        format.json { render :show, status: :created, location: @user_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_details/1 or /user_details/1.json
  def update
    binding.pry
    respond_to do |format|
      if @user_detail.update(user_detail_params)
        format.html { redirect_to @user_detail, notice: "user_detail was successfully updated." }
        format.json { render :show, status: :ok, location: @user_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_details/1 or /user_details/1.json
  def destroy
    @user_detail.destroy
    respond_to do |format|
      format.html { redirect_to user_details_url, notice: "user_detail was successfully deleted." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @user_detail = current_user.user_details.find_by(id: params[:id])
    redirect_to user_details_path, notice: "Not authorised to edit this user_detail" if @user_detail.nil?
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_detail
      @user_detail = UserDetail.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def user_detail_params
      params.require(:user_detail).permit(:first_name, :last_name, :email, :phone, :twitter, :user_id)
    end
end
