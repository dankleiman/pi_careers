class UpdateJobSkills < ActiveRecord::Migration
  def change
    rename_column :job_skills, :department_role_id, :job_id
  end
end
