class AddUserIdToTweets < ActiveRecord::Migration[6.0]
  def create
    add_column :tweets, :user_id, :integer
  end
end
