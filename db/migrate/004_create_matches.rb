class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
	t.integer :word_id
	t.integer :phrase_id
	t.integer :degree
      t.timestamps
    end
  end
end
