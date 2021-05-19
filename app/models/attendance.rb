class Attendance < ApplicationRecord
    after_create :participation_send

    validates :stripe_customer_id, presence: true
    
    belongs_to :user
    belongs_to :event
    
    def participation_send
        ParticipationMailer.participate_email(self.attendee, self).deliver_now
    end
end
