class CreateProfiles < ActiveRecord::Migration[6.0]
  def self.up
      create_table :profiles do |t|

          t.string :user_id                   #identification number - unique
          t.string :authentication_id         #cognito authentication number -unique
          t.string :username                  #user chosen username. -unique
          t.string :organization_name         #name of the company/COP/other organization
          t.string :address                   #address of the organization
          t.string :phone_number              #phone number of organization
          t.datetime :account_created_date    #date of account creation 

          t.timestamps   #this was already here
      end
  end

  def self.down
      drop_table :profiles
  end
end

class CreateTerms < ActiveRecord::Migration[6.0]
  def change
    create_table :terms do |t|
      t.string :word
      t.text :definition

      t.timestamps
    end
  end
end