class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :neme
      t.string :messages
      t.string :timestamps
      t.string :image
      t.string :text
    end
  end
end
