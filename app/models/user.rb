class User < ActiveRecord::Base
  has_many :talks
  validates :name, presence: true
end
