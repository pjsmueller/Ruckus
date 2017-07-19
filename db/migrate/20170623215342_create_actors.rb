class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :api_id

      t.timestamps
    end
  end
end
