class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.column :story_id, :integer
      t.column :content, :string

      t.timestamps null: false
    end
  end
end
