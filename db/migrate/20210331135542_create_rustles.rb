class CreateRustles < ActiveRecord::Migration[5.2]
  def change
    create_table :rustles do |t|
      t.text :content
      #t.timestamps
    end
  end
end
