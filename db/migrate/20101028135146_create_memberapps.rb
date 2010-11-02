class CreateMemberapps < ActiveRecord::Migration
  def self.up
    create_table :memberapps do |t|
      t.string :name
      t.string :salutation
      t.string :ssn
      t.string :date_of_birth
      t.string :joint_name
      t.string :joint_salutation
      t.string :joint_ssn
      t.string :joint_date_of_birth
      t.string :physical_address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :mailing_address
      t.string :mailing_city
      t.string :mailing_state
      t.integer :mailing_zip
      t.string :home_phone
      t.string :business_phone
      t.string :membership_eligibility
      t.string :describe_membership_eligibility
      t.string :privacy_code_for_member
      t.string :privacy_code_for_joint
      t.string :email_address
      t.string :best_time_to_call
      t.string :us_citizen
      t.string :prime_savings
      t.string :other_savings
      t.string :visa_debit_card
      t.string :audio_response_pin
      t.string :share_draft
      t.string :overdraft_protection

      t.timestamps
    end
  end

  def self.down
    drop_table :memberapps
  end
end
