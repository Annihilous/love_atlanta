class AddAgesAndTypeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :is_all_ages, :boolean, default: true, null: false
    add_column :events, :activity, :string
    add_column :events, :featured_image, :string
  end
end
