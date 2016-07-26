require 'rubygems'
require 'rake'
require 'rufus-scheduler'
scheduler = Rufus::Scheduler.new
scheduler.every '5s' do
# system 'bundle exec rake demo:mail_users'
 def test
  @user = User.new(name:'Suket shah',email:"shah_suket@network.elanco.com")
  puts 'Hello... Suket shah test'
  UserMailer.registration_confirmation(@user).deliver_now
 end 
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
