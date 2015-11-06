class Department < ActiveRecord::Base
  belongs_to :organization
  has_many :jobs
  has_many :roles, through: :jobs
end
