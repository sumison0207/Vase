class AddPeopleToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :people, :string
  end
end
