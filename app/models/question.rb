class Question < ActiveRecord::Base

  attr_accessible :name, :answer
  has_and_belongs_to_many :users
end
