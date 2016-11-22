class CreateNoos < ActiveRecord::Migration[5.0]
  def change
    create_table :noos do |t|
      t.text :url
      t.text :new_url

      t.timestamps
    end
  end
end
