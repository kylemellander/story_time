class ChangeUserNameInSentence < ActiveRecord::Migration
  def change
    remove_column :sentences, :user_name, :string
    add_column :sentences, :author, :string
  end
end
