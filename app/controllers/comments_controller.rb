class CommentsController < ApplicationController
    before_action :set_notification
    broadcasts_to :notification

    def create
        @notification.comments.create! params.required(:comment).permit(:content)
        redirect_to @notification
    end

    private
        def set_notification
            @notification = Notification.find(params[:notification_id])
        end 
end
