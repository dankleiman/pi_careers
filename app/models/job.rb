class Job < ActiveRecord::Base
  belongs_to :department, dependent: :destroy
  belongs_to :role, dependent: :destroy

  validates_presence_of :department
  validates_presence_of :role

  validates_uniqueness_of :role, scope: :department

  has_many :job_skills
  has_many :skills, through: :job_skills

  def name
    "#{self.department.name} - #{self.role.name}"
  end
end
