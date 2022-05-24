class Notification < ApplicationRecord
    validates_presence_of :title
    validates_presence_of :description
    validates_presence_of :email

    has_rich_text :description
    has_many :comments, dependent: :destroy
    belongs_to :user
end
