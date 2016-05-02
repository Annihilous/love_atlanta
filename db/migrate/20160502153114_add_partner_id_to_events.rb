class AddPartnerIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :partner_id, :integer
  end
end
