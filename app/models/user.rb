class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :deals
  has_many :tasks, through: :deals
end
