class Conversation < ApplicationRecord
    belongs_to :sender, class_name: "User", default: -> { Current.user }
    belongs_to :recipient, class_name: "User"
    has_many :messages

    scope :participating, -> (user) { where("sender_id = ? OR recipient_id = ?", user.id, user.id) }
end
