class Event < ApplicationRecord
  validates :title, :content, :start_time, presence: true
end
