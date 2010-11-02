class CreateRfis < ActiveRecord::Migration
  def self.up
    create_table :rfis do |t|
      t.string :membership_application
      t.string :family_membership
      t.string :savings_account
      t.string :checking_account
      t.string :christmas_club_account
      t.string :money_market_account
      t.string :ira_savings
      t.string :ira_share_certificates
      t.string :share_certificates
      t.string :audio_response_system
      t.string :overdraft_loan_information
      t.string :personal_loan_information
      t.string :automobile_loan_information
      t.string :heloc
      t.string :mortgage_loan_information
      t.string :visa_classic_card
      t.string :visa_debit_card
      t.string :direct_deposit
      t.string :money_orders
      t.string :travelers_checks
      t.string :free_notary_service
      t.string :discount_tickets
      t.string :other_information
      t.string :questions_comments
      t.string :name
      t.string :phone_number
      t.string :email_address
      t.string :home_address
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end

  def self.down
    drop_table :rfis
  end
end
