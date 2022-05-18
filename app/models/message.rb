class Message < ApplicationRecord
    belongs_to :user, default: -> { Current.user }
    belongs_to :conversation

    def sender
        user
    end

    def recipient
        return conversation.recipient if sender == conversation.sender
        return conversation.sender if sender == conversation.recipient
    end
end
