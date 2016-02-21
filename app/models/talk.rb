class Talk < ActiveRecord::Base
  validates :message, presence: true
end
