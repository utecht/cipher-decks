class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :Name
      t.string :Set
      t.string :Imagefile
      t.string :Color
      t.string :Rarity
      t.string :Cost
      t.string :Class
      t.string :Type
      t.string :Range
      t.string :Attack
      t.string :Support
      t.text :Skill1
      t.text :Skill2
      t.text :Skill3
      t.text :Skill4

      t.timestamps
    end
  end
end
