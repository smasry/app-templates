initializer 'sendmail.rb', <<-CODE
#use the -f option in the arguments if you want
# to specify a sender address
# ex. -i -t -f nobody@example.com
ActionMailer::Base.sendmail_settings = {
  :location =>  '/usr/sbin/sendmail',
  :arguments => '-i -t'
}
CODE