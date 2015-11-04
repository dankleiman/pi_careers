class AddDepartmentRoles < ActiveRecord::Migration
  def change
    create_table :department_roles do |t|
      t.integer :department_id, index: true
      t.integer :role_id, index: true

      t.timestamps null: false
    end
  end
end
