class CreateHeroePowers < ActiveRecord::Migration[7.0]
  def change
    create_table :heroe_powers do |t|
      t.string :strength
      t.integer :heroe_power
      t.integer :hero_id

      t.timestamps
    end
  end
end
