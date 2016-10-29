class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.references :user, foreign_key: true
      t.string :content
      t.string :text

      t.timestamps
    end
  end
end
