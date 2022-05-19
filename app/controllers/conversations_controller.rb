class ConversationsController < ApplicationController

    before_action :authenticate_user!

    def index
        @conversations = Conversation.participating(Current.user)
    end
    
end
