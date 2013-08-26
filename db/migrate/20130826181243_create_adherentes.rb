class CreateAdherentes < ActiveRecord::Migration
  def change
    create_table :adherentes do |t|
      t.string :nombre
      t.integer :user_id

      t.timestamps
    end
  end
end
