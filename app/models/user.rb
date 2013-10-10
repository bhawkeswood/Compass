class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :deals
  has_many :tasks, through: :deals

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates_uniqueness_of :email
end
