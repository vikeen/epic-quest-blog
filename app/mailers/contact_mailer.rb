class ContactMailer < ApplicationMailer
    default to: Rails.configuration.default_to_email

    def contact_email
        @name = params[:name]
        @email = params[:email]
        @message = params[:message]
        
        mail(
            from: @email,
            subject: 'Contact Request (johnmrake.com)'
        )
    end
end
