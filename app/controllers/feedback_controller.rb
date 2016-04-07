class FeedbackController < ApplicationController
  require 'digest/md5'
  require 'mail'

  def mailing_list
  end

  def subscribe
    @list_id = ENV["MAILCHIMP_LIST"]
    @email = params[:email]
    #unless User.find_by(email: @email)
    #UserMailer.welcome_email(@email)


    mail = Mail.new do
      from     'me@test.lindsaar.net'
      to       'you@test.lindsaar.net'
      subject  'Here is the image you wanted'
      body     "File.read('body.txt')"
    end

    Mail.defaults do
      delivery_method :smtp, address: "localhost", port: 1025
    end

    mail.deliver











    render "subscribe"



      #gb = Gibbon::Request.new
      #gb.lists(@list_id).members.create(
      #  body:
      #  {
      #    email_address: @email,
      #    status: "subscribed"
      #  })
    #else
    #  render "subscriber_exist"
    #end
  end

  def unsubscribe
    @list_id = ENV["MAILCHIMP_LIST"]
    @email = params[:email][:address]
    unless User.find_by(email: @email, subscribe: 1)
      user = User.find_by(email: @email, subscribe: 1)
      user.subscribe  = 0
      user.save
      gb1 = Gibbon::Request.new
      md5_email = Digest::MD5.hexdigest(@email.downcase)
      gb1.lists(@list_id).members(md5_email).update(
        body:
        {
          status: "unsubscribed"
        })
    else
      render "subscriber_not_exist"
      UserMailer.goodbye_email(@email)
    end
  end

  def comfirm_subscription
  end

  def request_catalogs
  end

  def quick_order
  end

  def message
  end

end
