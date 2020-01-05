class CreateDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :decks do |t|
      t.string :name

      t.timestamps
    end

    create_join_table :cards, :decks
  end
end
