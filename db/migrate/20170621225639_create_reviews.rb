class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :title.string
      t.string :body.text
      t.string :user_id.integer
      t.string :movie_id.integer

      t.timestamps
    end
  end
end
