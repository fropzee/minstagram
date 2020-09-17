class Post < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user
    has_many :comments
    before_create :set_active
    scope :active, -> { where active: true }
    
    private

    def set_active
        self.active = true
    end
end
