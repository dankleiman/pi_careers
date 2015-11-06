class AddJobSkills < ActiveRecord::Migration
  def change
    create_table :job_skills do |t|
      t.integer :skill_id, index: true
      t.integer :department_role_id, index: true

      t.timestamps null: false
    end
  end
end
