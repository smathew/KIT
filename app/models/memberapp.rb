# == Schema Information
# Schema version: 20101028135146
#
# Table name: memberapps
#
#  id                              :integer         not null, primary key
#  name                            :string(255)
#  salutation                      :string(255)
#  ssn                             :string(255)
#  date_of_birth                   :string(255)
#  joint_name                      :string(255)
#  joint_salutation                :string(255)
#  joint_ssn                       :string(255)
#  joint_date_of_birth             :string(255)
#  physical_address                :string(255)
#  city                            :string(255)
#  state                           :string(255)
#  zip                             :integer
#  mailing_address                 :string(255)
#  mailing_city                    :string(255)
#  mailing_state                   :string(255)
#  mailing_zip                     :integer
#  home_phone                      :string(255)
#  business_phone                  :string(255)
#  membership_eligibility          :string(255)
#  describe_membership_eligibility :string(255)
#  privacy_code_for_member         :string(255)
#  privacy_code_for_joint          :string(255)
#  email_address                   :string(255)
#  best_time_to_call               :string(255)
#  us_citizen                      :string(255)
#  prime_savings                   :string(255)
#  other_savings                   :string(255)
#  visa_debit_card                 :string(255)
#  audio_response_pin              :string(255)
#  share_draft                     :string(255)
#  overdraft_protection            :string(255)
#  created_at                      :datetime
#  updated_at                      :datetime
#

class Memberapp < ActiveRecord::Base
	validates_presence_of :name, :ssn, :date_of_birth, :home_phone, :email_address, :physical_address, :city, :state, :zip, :membership_eligibility, :describe_membership_eligibility, :privacy_code_for_member
	
	# give all details of joint member if his/her name is mentioned
	validates_presence_of :joint_ssn, :joint_date_of_birth, :privacy_code_for_joint, :if => "!joint_name.blank?"
	
	#validating input for email address
	EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates_format_of :email_address, :with => EmailRegex, :if => "!email_address.blank?"
	
	#validating input for any phone numbers entered
	Phoneformat = /\A[0-9]{3}+-[0-9]{3}+-[0-9]{4}+\z/i
	validates_format_of :home_phone, :with => Phoneformat, :if => "!home_phone.blank?"
	validates_format_of :business_phone, :with => Phoneformat, :if => "!business_phone.blank?"
	
	#validating input for any SSN entered
	SSNformat = /\A[0-9]{3}+-[0-9]{2}+-[0-9]{4}+\z/i
	validates_format_of :ssn, :with => SSNformat, :if => "!ssn.blank?"
	validates_format_of :joint_ssn, :with => SSNformat, :if => "!joint_ssn.blank?"
	
	validates_presence_of :overdraft_protection, :if => :request_protection?
	def request_protection?
		share_draft == "yes"
	end
	
	validate :atleast_one_is_checked
	def atleast_one_is_checked
		errors.add(:base, "Select atleast one type of account you would like to open") unless prime_savings == "yes" || other_savings == "yes" || visa_debit_card == "yes" || audio_response_pin == "yes"
	end

end
