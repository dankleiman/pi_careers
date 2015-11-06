class JobSkill < ActiveRecord::Base
  belongs_to :job
  belongs_to :skill

  validates_presence_of :job
  validates_presence_of :skill

  validates_uniqueness_of :skill, scope: :job

end
