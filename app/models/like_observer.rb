require 'my_logger'

class LikeObserver < ActiveRecord::Observer   
    observe :like

  def after_create(record)
    
    @like = Like.last
    
    puts @like.inspect
    
    puts "======================================================================================"
    @notify=Notifylike.new(:name => @like.user.profile.firstname, :user_id => @like.recipe.user_id, :like_id => @like.id)
    @notify.save
    
    @logger = MyLogger.instance
    @logger.logInformation("###############Observer Demo:#")
    @logger.logInformation("+++ likeObserver: The like has been added 50")
    @logger.logInformation("##############################")

    
  end
end
