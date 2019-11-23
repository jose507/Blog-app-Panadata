class UserMailer < ActionMailer::Base
    default from: "jlrmyt@gmail.com"
  
    def newcomment_email(comment)
      @comment = comment
  
      mail(to: @user.email, subject: "New Comment Notify")
    end 
  end