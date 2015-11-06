class AddCoreColumnToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :core, :boolean, default: :false
  end
end
