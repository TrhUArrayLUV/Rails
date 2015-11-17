class AddCompletedAtLuvliItems < ActiveRecord::Migration
  def change
    add_column :luvli_items, :completed_at, :datetime
  end
end
