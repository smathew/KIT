class Emailer < ActionMailer::Base
  # request for more information sent to the credit union
  def rfi_email(app)
    #Setting the content of the email
    recipients  "smathew@shareone.com"
	#recipients  "kit@kitfcu.org"
	from        "web_services@shareone.com"
	subject     "KIT FEDERAL CREDIT UNION - INFORMATION REQUEST (online forms)"
	
	body :app => app
  end

  # reply to person who requested more information
  def replytosender_email(email)
    #Setting the content of the email
    recipients   email
	#recipients  email + ", kit@kitfcu.org"
	from        "kit@kitfcu.org"
	subject     "Message from KIT FEDERAL CREDIT UNION"
	
	body 		"Thank You. Your request for information has been received." 
  end
  
  # membership application sent to the credit union
  def memberapp_email(app)
    #Setting the content of the email
    recipients  "smathew@shareone.com"
	#recipients  "memberservices@kitfcu.org"
	from        "web_services@shareone.com"
	subject     "KIT FEDERAL CREDIT UNION - MEMBERSHIP APPLICATION (online forms)"
	
	body :app => app
  end
  
  # message sent to applicant for his membership application
  def memberappreply_email(email)
    #Setting the content of the email
    recipients  email
	#recipients  email + ", memberservices@kitfcu.org"
	from        "kit@kitfcu.org"
	subject     "Message from KIT FEDERAL CREDIT UNION"
	
	body 		"Thank You. Your membership application has been received."
  end
  
  # visa application sent to the credit union
  def visarequest_email(app)
	recipients  "smathew@shareone.com"
	#recipients  "loandepartment@kitfcu.org"
	from        "web_services@shareone.com"
	subject     "KIT FEDERAL CREDIT UNION - VISA APPLICATION (online forms)"
	
	body :app => app
  end
  
  # message sent to applicant for his visa application
  def visaappreply_email(email)
    #Setting the content of the email
    recipients  email
	#recipients  email + ", loandepartment@kitfcu.org"
	from        "kit@kitfcu.org"
	subject     "Message from KIT FEDERAL CREDIT UNION"
	
	body 		"Thank You. Your VISA Application has been received."
  end
  
  
  # loan application sent to the credit union
  def loanapp_email(app)
    #Setting the content of the email
    recipients  "smathew@shareone.com"
	#recipients  "loandepartment@kitfcu.org"
	from        "web_services@shareone.com"
	subject     "KIT FEDERAL CREDIT UNION - LOAN APPLICATION (online forms)"
	
	body :app => app
  end
  
  # message sent to applicant acknowledging his loan application
  def loanappreply_email(email)
    #Setting the content of the email
    recipients  email
	#recipients  email + ", loandepartment@kitfcu.org"
	from        "kit@kitfcu.org"
	subject     "Message from KIT FEDERAL CREDIT UNION"
	
	body 		"Thank You. Your loan application has been received."
  end
end
