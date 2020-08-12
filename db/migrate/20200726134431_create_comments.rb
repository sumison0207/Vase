class CreateComments < ActiveRecord::Migration[6.0]
  def create
    create_table :comments do |t|
      t.string :comment
      t.references :user, null: false, foreign_key: true
      t.references :tweet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
