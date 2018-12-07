require 'my_logger'

class CommentObserver < ActiveRecord::Observer
  
  #observe :comment
  #include Observable
    
  
  
     
  def after_create(record)
    
    @comment = Comment.last
    
    puts @comment.inspect
    
    @usernotification=Notification.new(:from_name => @comment.user.profile.firstname, :user_id => @comment.recipe.user_id, :comment_id => @comment.id)
    
    #puts @usernotification.inspect
    
    @usernotification.save
    
    @logger = MyLogger.instance
    @logger.logInformation("###############Observer Demo:#")
    @logger.logInformation("+++ CommentObserver: The comment has been added 40")
    @logger.logInformation("##############################")

    
  end

end