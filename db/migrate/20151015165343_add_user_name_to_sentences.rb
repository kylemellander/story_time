class AddUserNameToSentences < ActiveRecord::Migration
  def change
    add_column :sentences, :user_name, :string
    remove_column :sentences, :user_id, :integer
  end
end
