namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they have overtime or not"
  task sms: :environment do
    # 1. Schedule to run at Sunday at 5pm
    # 2. Iterate over all employees
    # 3. Skip AdminUsers
    # 4. Send a link that has instructions and a link to log time
    
    # User.all.each do |user|
    #   SmSTool.send_sms()
    # end

    # number: "123456789"
    # no spaces or dashes
    # exactly 10 characters
    # all characters have to be a number

  end

end
