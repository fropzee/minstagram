module UsersHelper
    def can_edit? profile_id
        user_signed_in? && current_user.id == profile_id   
    end

    def profile_picture user, width = 100
        image_path = user.image.present? ? user.image.url : "default.png"
        image_tag(image_path, width: width)
    end
    
end
