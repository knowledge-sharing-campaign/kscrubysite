class RenameStartTimeToStartTime < ActiveRecord::Migration
  def change
    rename_column :events, :startTime, :start_time
  end
end
