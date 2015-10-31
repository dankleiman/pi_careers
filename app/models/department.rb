class Department < ActiveRecord::Base
  belongs_to :organization
  has_many :department_roles
  has_many :roles, through: :department_roles
end
