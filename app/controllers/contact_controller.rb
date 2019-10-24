class ContactController < ApplicationController
    def index
        @message_sent = params[:message_sent]
    end

    def send_email
        ContactMailer.with(
            name: params[:name],
            email: params[:email],
            message: params[:message],
        ).contact_email.deliver_later

        redirect_to action: :index, message_sent: true
    end
end
