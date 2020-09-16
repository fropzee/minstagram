module UsersHelper
    def can_edit? profile_id
        user_signed_in? && current_user.id == profile_id
        
    end
end
