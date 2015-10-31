class Skill < ActiveRecord::Base
  has_many :job_skills
  has_many :department_roles, through: :job_skills
end
