module DisclaimerHelper

  def supported_browser?(user_agent_string)
    browser = Browser.new(ua: user_agent_string )
    !(browser.chrome? || (browser.ie? && browser.version.to_i < 9))
  end

  def already_shown

  end
end
