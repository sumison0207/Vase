class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.text :body
      t.string :title
      t.string :image
      t.string :material
      t.integer :user_id

      t.timestamps
    end
  end
end
