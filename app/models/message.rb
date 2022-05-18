class Message < ApplicationRecord
    belongs_to :user, default: -> { Current.user }
    belongs_to :conversation
end
