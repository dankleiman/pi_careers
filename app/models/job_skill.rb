class JobSkill < ActiveRecord::Base
  belongs_to :department_role
  belongs_to :skill
end
