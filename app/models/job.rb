class Job < ActiveRecord::Base
  belongs_to :department
  belongs_to :role

  validates_presence_of :department
  validates_presence_of :role

  validates_uniqueness_of :role, scope: :department

  has_many :job_skills
  has_many :skills, through: :job_skills

  accepts_nested_attributes_for :skills, allow_destroy: true, reject_if: :all_blank

  def name
    "#{self.department.name} - #{self.role.name}"
  end

  def core_skills
    role.jobs.find_by(core: true).skills
  end
end
