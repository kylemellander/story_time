class AddAttachmentImageToSentences < ActiveRecord::Migration
  def self.up
    change_table :sentences do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :sentences, :image
  end
end
