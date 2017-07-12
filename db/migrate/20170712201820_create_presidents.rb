class CreatePresidents < ActiveRecord::Migration
  def change
    create_table :presidents do |t|
      t.string :name
      t.integer :country_id
      t.integer :state_id

      t.timestamps null: false
    end
  end
end
