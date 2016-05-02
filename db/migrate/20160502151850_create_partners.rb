class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.text   :description
      t.string :website

      t.timestamps null: false
    end
  end
end
