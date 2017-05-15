class TodoItem < ApplicationRecord
  validates :title, :discription, presence: true
end
