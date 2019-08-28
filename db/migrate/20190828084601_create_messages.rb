class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.neme
      t.messages
      t.timestamps
      t.image
      t.text
    end
  end
end
