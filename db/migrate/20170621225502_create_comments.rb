class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :body.text
      t.string :user_id.integer
      t.string :review_id.integer
      t.string :rating.integer

      t.timestamps
    end
  end
end
