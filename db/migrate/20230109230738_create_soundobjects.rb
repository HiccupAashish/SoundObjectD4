class CreateSoundobjects < ActiveRecord::Migration[6.1]
  def change
    create_table :soundobjects do |t|
      t.string :Name
      t.string :image
      t.string :description
      t.string :color

      t.timestamps
    end
  end
end
