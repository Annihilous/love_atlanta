class CreatePartnerships < ActiveRecord::Migration
  def change
    create_table :partnerships do |t|
      t.integer :event_id
      t.integer :partner_id

      t.timestamps null: false
    end
  end
end
