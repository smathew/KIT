# == Schema Information
# Schema version: 20101028174534
#
# Table name: visarequests
#
#  id                                     :integer         not null, primary key
#  visa_card_account                      :string(255)
#  type_of_account                        :string(255)
#  apply_for_credit_increase              :string(255)
#  account_number                         :string(255)
#  credit_limit_request                   :string(255)
#  other_limit                            :string(255)
#  applicant_name                         :string(255)
#  applicant_address                      :string(255)
#  applicant_city                         :string(255)
#  applicant_state                        :string(255)
#  applicant_zip                          :integer
#  applicant_ssn                          :string(255)
#  applicant_home_phone                   :string(255)
#  applicant_work_phone                   :string(255)
#  applicant_email_address                :string(255)
#  applicant_member_number                :string(255)
#  applicant_employer                     :string(255)
#  applicant_income                       :string(255)
#  applicant_income_type                  :string(255)
#  applicant_income_frequency             :string(255)
#  applicant_other_income_source          :string(255)
#  applicant_other_income                 :string(255)
#  applicant_other_income_frequency       :string(255)
#  joint_applicant_name                   :string(255)
#  joint_applicant_address                :string(255)
#  joint_applicant_city                   :string(255)
#  joint_applicant_state                  :string(255)
#  joint_applicant_zip                    :integer
#  joint_applicant_ssn                    :string(255)
#  joint_applicant_home_phone             :string(255)
#  joint_applicant_work_phone             :string(255)
#  joint_applicant_email_address          :string(255)
#  joint_applicant_member_number          :string(255)
#  joint_applicant_employer               :string(255)
#  joint_applicant_income                 :string(255)
#  joint_applicant_income_type            :string(255)
#  joint_applicant_income_frequency       :string(255)
#  joint_applicant_other_income_source    :string(255)
#  joint_applicant_other_income           :string(255)
#  joint_applicant_other_income_frequency :string(255)
#  created_at                             :datetime
#  updated_at                             :datetime
#

class Visarequest < ActiveRecord::Base
	validates_presence_of :type_of_account, :applicant_name, :applicant_address, :applicant_city, :applicant_state, :applicant_zip, :applicant_ssn, :applicant_home_phone, :applicant_email_address, :applicant_member_number, :applicant_employer, :applicant_income
	
	validate :request_jointinfo
	def request_jointinfo
		errors.add(:base, "Fill in required Joint Applicant details as you've selected a Joint Account to be opened") unless type_of_account == "Apply for a INDIVIDUAL ACCOUNT"
	end 
	
	# give all details of joint member if his/her name is mentioned
	validates_presence_of :joint_applicant_address, :joint_applicant_city, :joint_applicant_state, :joint_applicant_zip, :joint_applicant_ssn, :joint_applicant_home_phone, :if => "!joint_applicant_name.blank?"
	
	#validating input for email address
	EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates_format_of :applicant_email_address, :with => EmailRegex, :if => "!applicant_email_address.blank?"
	validates_format_of :joint_applicant_email_address, :with => EmailRegex, :if => "!joint_applicant_email_address.blank?"
	
	#validating input for any phone numbers entered
	Phoneformat = /\A[0-9]{3}+-[0-9]{3}+-[0-9]{4}+\z/i
	validates_format_of :applicant_home_phone, :with => Phoneformat, :if => "!applicant_home_phone.blank?"
	validates_format_of :applicant_work_phone, :with => Phoneformat, :if => "!applicant_work_phone.blank?"
	validates_format_of :joint_applicant_home_phone, :with => Phoneformat, :if => "!joint_applicant_home_phone.blank?"
	validates_format_of :joint_applicant_work_phone, :with => Phoneformat, :if => "!joint_applicant_work_phone.blank?"
	
	validates_presence_of :account_number, :credit_limit_request, :if => :request_creditincrease?
	def request_creditincrease?
		apply_for_credit_increase == "Yes"
	end
	
	validates_presence_of :other_limit, :if => :request_ifother?
	def request_ifother?
		credit_limit_request == "Increase my credit limit by the amount specified"
	end
end

