class AddAssociationAttributesToEvents < ActiveRecord::Migration
  def change
    add_column :events,  :address_id, :integer
    add_column :addresses, :event_id, :integer
  end
end
