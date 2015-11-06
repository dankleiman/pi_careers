class Role < ActiveRecord::Base
  has_many :jobs
  has_many :departments, through: :jobs
end
