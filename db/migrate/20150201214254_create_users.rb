class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

    	t.string :name
    	t.integer :game_id
    	t.integer :guess_home_score
    	t.integer :guess_away_score
      
    end
  end
end
