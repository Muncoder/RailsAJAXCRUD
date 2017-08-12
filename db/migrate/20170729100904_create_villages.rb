class CreateVillages < ActiveRecord::Migration
  def change
    create_table :villages do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
