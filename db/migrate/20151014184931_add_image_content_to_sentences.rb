class AddImageContentToSentences < ActiveRecord::Migration
  def change
    add_column :sentences, :image_content, :string
  end
end
