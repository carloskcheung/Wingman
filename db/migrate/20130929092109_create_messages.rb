class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :text
      t.string :phone
      t.boolean :verified

      t.timestamps
    end
  end
end
