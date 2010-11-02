# == Schema Information
# Schema version: 20101101135754
#
# Table name: loanapps
#
#  id                                                  :integer         not null, primary key
#  loan_type                                           :string(255)
#  line_of_credit_limit                                :string(255)
#  credit_limit_increase                               :string(255)
#  initial_amount_requested                            :string(255)
#  purpose_of_loan                                     :string(255)
#  collateral_offered                                  :string(255)
#  owned_by                                            :string(255)
#  type_of_credit                                      :string(255)
#  single_credit_life_insurance                        :string(255)
#  single_credit_insurance_age                         :string(255)
#  joint_credit_life_insurance                         :string(255)
#  joint_credit_insurance_age                          :string(255)
#  credit_disability_insurance                         :string(255)
#  credit_disability_insurance_age                     :string(255)
#  applicant_name                                      :string(255)
#  applicant_account_number                            :string(255)
#  applicant_ssn                                       :string(255)
#  applicant_date_of_birth                             :string(255)
#  applicant_marital_status                            :string(255)
#  applicant_drivers_license                           :string(255)
#  applicant_drivers_license_state                     :string(255)
#  applicant_home_phone                                :string(255)
#  applicant_business_phone                            :string(255)
#  applicant_email_address                             :string(255)
#  applicant_address                                   :string(255)
#  applicant_time_at_residence                         :string(255)
#  applicant_ownership                                 :string(255)
#  applicant_mortgage_owed_to                          :string(255)
#  applicant_mortgage_balance                          :string(255)
#  applicant_monthly_payment                           :string(255)
#  applicant_current_apr                               :string(255)
#  applicant_responsible_for_payment                   :string(255)
#  applicant_total_monthly_payment                     :string(255)
#  applicant_total_monthly_balances                    :string(255)
#  applicant_employer                                  :string(255)
#  applicant_income                                    :string(255)
#  applicant_type_of_income                            :string(255)
#  applicant_salary_frequency                          :string(255)
#  applicant_other_income                              :string(255)
#  applicant_source_of_other_income                    :string(255)
#  applicant_other_income_frequency                    :string(255)
#  applicant_reference_name                            :string(255)
#  applicant_reference_phone_number                    :string(255)
#  applicant_reference_relationship                    :string(255)
#  applicant_reference2_name                           :string(255)
#  applicant_reference2_phone_number                   :string(255)
#  applicant_reference2_relationship                   :string(255)
#  applicant_previous_employer1_job_title              :string(255)
#  applicant_previous_employer1_supervisor             :string(255)
#  applicant_previous_employer1_hours_weekly           :string(255)
#  applicant_previous_employer1_hourly_wages           :string(255)
#  applicant_previous_employer1_salary_frequency       :string(255)
#  applicant_previous_employer1_start_date             :string(255)
#  applicant_previous_employer1_length_of_employment   :string(255)
#  applicant_previous_employer2_job_title              :string(255)
#  applicant_previous_employer2_supervisor             :string(255)
#  applicant_previous_employer2_hours_weekly           :string(255)
#  applicant_previous_employer2_hourly_wages           :string(255)
#  applicant_previous_employer2_salary_frequency       :string(255)
#  applicant_previous_employer2_start_date             :string(255)
#  applicant_previous_employer2_length_of_employment   :string(255)
#  coapplicant_name                                    :string(255)
#  coapplicant_account_number                          :string(255)
#  coapplicant_ssn                                     :string(255)
#  coapplicant_date_of_birth                           :string(255)
#  coapplicant_marital_status                          :string(255)
#  coapplicant_drivers_license                         :string(255)
#  coapplicant_drivers_license_state                   :string(255)
#  coapplicant_home_phone                              :string(255)
#  coapplicant_business_phone                          :string(255)
#  coapplicant_email_address                           :string(255)
#  coapplicant_address                                 :string(255)
#  coapplicant_time_at_residence                       :string(255)
#  coapplicant_ownership                               :string(255)
#  coapplicant_mortgage_owed_to                        :string(255)
#  coapplicant_mortgage_balance                        :string(255)
#  coapplicant_monthly_payment                         :string(255)
#  coapplicant_current_apr                             :string(255)
#  coapplicant_responsible_for_payment                 :string(255)
#  coapplicant_total_monthly_payment                   :string(255)
#  coapplicant_total_monthly_balances                  :string(255)
#  coapplicant_employer                                :string(255)
#  coapplicant_income                                  :string(255)
#  coapplicant_type_of_income                          :string(255)
#  coapplicant_salary_frequency                        :string(255)
#  coapplicant_other_income                            :string(255)
#  coapplicant_source_of_other_income                  :string(255)
#  coapplicant_other_income_frequency                  :string(255)
#  coapplicant_reference_name                          :string(255)
#  coapplicant_reference_phone_number                  :string(255)
#  coapplicant_reference_relationship                  :string(255)
#  coapplicant_reference2_name                         :string(255)
#  coapplicant_reference2_phone_number                 :string(255)
#  coapplicant_reference2_relationship                 :string(255)
#  coapplicant_previous_employer1_job_title            :string(255)
#  coapplicant_previous_employer1_supervisor           :string(255)
#  coapplicant_previous_employer1_hours_weekly         :string(255)
#  coapplicant_previous_employer1_hourly_wages         :string(255)
#  coapplicant_previous_employer1_salary_frequency     :string(255)
#  coapplicant_previous_employer1_start_date           :string(255)
#  coapplicant_previous_employer1_length_of_employment :string(255)
#  coapplicant_previous_employer2_job_title            :string(255)
#  coapplicant_previous_employer2_supervisor           :string(255)
#  coapplicant_previous_employer2_hours_weekly         :string(255)
#  coapplicant_previous_employer2_hourly_wages         :string(255)
#  coapplicant_previous_employer2_salary_frequency     :string(255)
#  coapplicant_previous_employer2_start_date           :string(255)
#  coapplicant_previous_employer2_length_of_employment :string(255)
#  created_at                                          :datetime
#  updated_at                                          :datetime
#

class Loanapp < ActiveRecord::Base
	validates_presence_of :loan_type, :type_of_credit, :purpose_of_loan, :applicant_name, :applicant_account_number, :applicant_ssn, :applicant_date_of_birth, :applicant_drivers_license, :applicant_drivers_license_state, :applicant_home_phone, :applicant_email_address, :applicant_address, :applicant_employer, :applicant_income, :applicant_reference_name, :applicant_reference_phone_number, :applicant_reference_relationship
	
	# give all details of joint member if his/her name is mentioned
	validates_presence_of :coapplicant_account_number, :coapplicant_ssn, :coapplicant_date_of_birth, :coapplicant_drivers_license, :coapplicant_drivers_license_state, :coapplicant_home_phone, :coapplicant_email_address, :coapplicant_address, :if => "!coapplicant_name.blank?"
	
	#validating input for email address
	EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates_format_of :applicant_email_address, :with => EmailRegex, :if => "!applicant_email_address.blank?"
	validates_format_of :coapplicant_email_address, :with => EmailRegex, :if => "!coapplicant_email_address.blank?"
	
	#validating input for any phone numbers entered
	Phoneformat = /\A[0-9]{3}+-[0-9]{3}+-[0-9]{4}+\z/i
	validates_format_of :applicant_home_phone, :with => Phoneformat, :if => "!applicant_home_phone.blank?"
	validates_format_of :applicant_business_phone, :with => Phoneformat, :if => "!applicant_business_phone.blank?"
	validates_format_of :coapplicant_home_phone, :with => Phoneformat, :if => "!coapplicant_home_phone.blank?"
	validates_format_of :coapplicant_business_phone, :with => Phoneformat, :if => "!coapplicant_business_phone.blank?"
	
	#validating input for any SSN entered
	SSNformat = /\A[0-9]{3}+-[0-9]{2}+-[0-9]{4}+\z/i
	validates_format_of :applicant_ssn, :with => SSNformat, :if => "!applicant_ssn.blank?"
	validates_format_of :coapplicant_ssn, :with => SSNformat, :if => "!coapplicant_ssn.blank?"
	
	validates_presence_of :line_of_credit_limit, :if => :request_lineofcredit?
	validates_presence_of :credit_limit_increase, :if => :request_limitincrease?
	validates_presence_of :initial_amount_requested, :if => :request_collateralsecured?
	def request_lineofcredit?
		loan_type == "Line of Credit"
	end
	def request_limitincrease?
		loan_type == "Credit Limit Increase"
	end
	def request_collateralsecured?
		loan_type == "Collateral Secured"
	end 
	
	validates_presence_of :single_credit_insurance_age, :if => :request_singleage?
	validates_presence_of :joint_credit_insurance_age, :if => :request_jointage?
	validates_presence_of :credit_disability_insurance_age, :if => :request_disabilityage?
	def request_singleage?
		single_credit_life_insurance == "Yes"
	end
	def request_jointage?
		joint_credit_life_insurance == "Yes"
	end
	def request_disabilityage?
		credit_disability_insurance == "Yes"
	end
end
