class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.string :user_id.integer
      t.string :rateable_type.string
      t.string :rateable_id.integer
      t.string :score.integer

      t.timestamps
    end
  end
end
