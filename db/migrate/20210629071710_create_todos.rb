# frozen_string_literal: true

class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :title, null: false, default: ''
      t.text :memo
      t.timestamps
    end
  end
end
