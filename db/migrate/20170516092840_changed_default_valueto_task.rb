class ChangedDefaultValuetoTask < ActiveRecord::Migration[5.0]
  def change
    change_column :tasks, :done, :boolean, default: false
  end
end
