class Role < ActiveRecord::Base
  has_many :department_roles
  has_many :departments, through: :department_roles
end
