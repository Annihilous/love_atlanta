class RemoveEventIdFromAddress < ActiveRecord::Migration
  def change
    remove_column :addresses, :event_id
  end
end
