class ChangeEventIdName < ActiveRecord::Migration
  def change
    rename_column :invites, :event_id, :attended_event_id
  end
end
