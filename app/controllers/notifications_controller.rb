class NotificationsController < ApplicationController
  before_action :set_notification, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /notifications or /notifications.json
  def index
    @notifications_received = Notification.where(email: current_user.email).order("created_at DESC")
    @notifications_sent = Notification.where(user_id: current_user.id).order("created_at DESC")
  end

  # GET /notifications/1 or /notifications/1.json
  def show
  end

  # GET /notifications/new
  def new
    @notification = Notification.new
  end

  # GET /notifications/1/edit
  def edit
  end

  # POST /notifications or /notifications.json
  def create
    email_list = notification_params['email'].split(';').uniq
    if email_list.count == 0 || notification_params['title'] == ""
      flash[:red] = "For a notification, atleast a 'Title' and an 'Email' is required."
      redirect_to '/notifications/new'
      return 
    else
      email_list.each do |email|
        single_notification = Notification.new(notification_params)
        single_notification.user_id = current_user.id
        single_notification.email = email
        single_notification.save
      end
    end
    flash[:green] = "Notification was successfully created."
    redirect_to :action => 'index'
    # TODO NotificationsMailer.recieved(@notification).deliver_later
  end

  # PATCH/PUT /notifications/1 or /notifications/1.json
  def update
    respond_to do |format|
      if @notification.update(notification_params)
        format.html { redirect_to notification_url(@notification), green: "Notification was successfully updated." }
        format.json { render :show, status: :ok, location: @notification }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notifications/1 or /notifications/1.json
  def destroy
    @notification.destroy

    respond_to do |format|
      format.html { redirect_to notifications_url, green: "Notification was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notification
      @notification = Notification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def notification_params
      params.require(:notification).permit(:title, :description, :email)
    end
end
