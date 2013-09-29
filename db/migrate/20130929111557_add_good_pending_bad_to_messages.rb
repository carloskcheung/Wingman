class AddGoodPendingBadToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :good, :boolean
    add_column :messages, :pending, :boolean
    add_column :messages, :bad, :boolean
  end
end
