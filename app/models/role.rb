class Role < ActiveRecord::Base
  has_many :jobs
  has_many :departments, through: :jobs

  accepts_nested_attributes_for :departments, allow_destroy: true, reject_if: :all_blank

   def core_skills
    jobs.find_by(core: true).skills
  end
end
