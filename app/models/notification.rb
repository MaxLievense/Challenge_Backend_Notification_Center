class Notification < ApplicationRecord
    validates_presence_of :title
    validates_presence_of :description
    has_rich_text :description
    has_many :comments, dependent: :destroy
end
