require 'rubygems'
require 'rake'
require 'rufus-scheduler'
scheduler = Rufus::Scheduler.new
scheduler.every '5s' do
# system 'bundle exec rake demo:mail_users'
#@user
#UserMailer.demo_mail(@user).deliver_now
#mail to: "shah_suket@network.elanco.com", subject:"Registration confirmation" 
# @user = User.new(@name = 'Suket shah',@email = "shah_suket@network.elanco.com")
# UserMailer.demo_mail(@user).deliver_now
##system 'bundle exec rake demo:mail_users'
#system 'rake demo:mail_users'
puts 'Hello... Suket'
end 


# require 'rufus-scheduler'

# s = Rufus::Scheduler.new

# p [ :scheduled_at, Time.now ]

# #s.every '5s', :first_in => 0.4 do
# s.every '5m' do
#   p [ :every,  Time.now ]
#   puts 'Hello... Rufus'
# end

# s.join

private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email)
    end