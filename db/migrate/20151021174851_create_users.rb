class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :health, default: 100
      t.attachment :avatar
      t.timestamps
    end

    create_table :locations do |t|
      t.string :name
      t.attachment :avatar
      t.timestamps
    end

    create_table :zombies do |t|
      t.references :location, index: true
      t.attachment :avatar
      t.integer :strength
      t.timestamps
    end

    create_table :items do |t|
      t.boolean :food
      t.boolean :weapon
      t.string :name
      t.integer :value
      t.references :itemable, polymorphic: true, index: true
      t.attachment :avatar
      t.timestamps
    end
  end
end
