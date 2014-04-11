class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :text
      t.date :t_date

      t.timestamps
    end
  end
end
