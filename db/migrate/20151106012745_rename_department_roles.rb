class RenameDepartmentRoles < ActiveRecord::Migration
  def change
    rename_table :department_roles, :jobs
  end
end
