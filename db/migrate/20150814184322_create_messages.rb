class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :from
      t.string :of
      t.string :phone
      t.string :cell_phone
      t.text :message
      t.boolean :telephoned
      t.boolean :returned_your_call
      t.boolean :please_call
      t.boolean :please_call
      t.boolean :will_call_again
      t.boolean :came_to_see_you
      t.boolean :wants_to_see_you
      t.boolean :other
      t.string :other_text
      t.string :boolean
      t.string :signed

      t.timestamps null: false
    end
  end
end
