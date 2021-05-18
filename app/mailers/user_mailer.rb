class UserMailer < ApplicationMailer
    default from: 'mesas.cedric@gmail.com'
    
    def welcome_email(user)
        @user = user
        @url = 'http://myfuckingeventbrite.com'
        mail(to: @user.email, subject: "Bienvenue à la maison. Ici, tout est doux !")
    end

    def event_inscription_email(user, event)
        @user = user
        @event = event
        mail(to: @user.email, subject: "Voici votre réservation !")
    end
end