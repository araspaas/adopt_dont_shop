class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :image
      t.string :name
      t.string :age
      t.string :sex
      t.string :shelter_id
      t.timestamps
    end
  end
end
