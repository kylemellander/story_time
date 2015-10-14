class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.column :content, :string
      t.column :user_id, :integer
      t.column :story_id, :integer
      t.column :image_id, :integer

      t.timestamps null: false
    end
  end
end
