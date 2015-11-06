class Skill < ActiveRecord::Base
  has_many :job_skills
  has_many :jobs, through: :job_skills

  validates_uniqueness_of :name
end
