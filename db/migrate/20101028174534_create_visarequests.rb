class CreateVisarequests < ActiveRecord::Migration
  def self.up
    create_table :visarequests do |t|
      t.string :visa_card_account
      t.string :type_of_account
      t.string :apply_for_credit_increase
      t.string :account_number
      t.string :credit_limit_request
      t.string :other_limit
      t.string :applicant_name
      t.string :applicant_address
      t.string :applicant_city
      t.string :applicant_state
      t.integer :applicant_zip
      t.string :applicant_ssn
      t.string :applicant_home_phone
      t.string :applicant_work_phone
      t.string :applicant_email_address
      t.string :applicant_member_number
      t.string :applicant_employer
      t.string :applicant_income
      t.string :applicant_income_type
      t.string :applicant_income_frequency
      t.string :applicant_other_income_source
      t.string :applicant_other_income
      t.string :applicant_other_income_frequency
      t.string :joint_applicant_name
      t.string :joint_applicant_address
      t.string :joint_applicant_city
      t.string :joint_applicant_state
      t.integer :joint_applicant_zip
      t.string :joint_applicant_ssn
      t.string :joint_applicant_home_phone
      t.string :joint_applicant_work_phone
      t.string :joint_applicant_email_address
      t.string :joint_applicant_member_number
      t.string :joint_applicant_employer
      t.string :joint_applicant_income
      t.string :joint_applicant_income_type
      t.string :joint_applicant_income_frequency
      t.string :joint_applicant_other_income_source
      t.string :joint_applicant_other_income
      t.string :joint_applicant_other_income_frequency

      t.timestamps
    end
  end

  def self.down
    drop_table :visarequests
  end
end
