module TwetsHelper
  def can_retwett(twet)
    if twet.user_id == current_user.id
      return false
    elsif has_retwetted(twet)
      return false
    else
      return true
    end
  end
  
  def has_retwetted(twet)
    retwett(twet).present? ? true : false
  end
  
  def retwett(twet)
    current_user.retwetts.where(:twet_id => twet.id).first
  end
  
end
