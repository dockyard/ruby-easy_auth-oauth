module EasyAuth::OAuth1::Controllers::Sessions

  private

  def after_successful_sign_in_with_o_auth1(identity)
    send("after_successful_sign_in_with_o_auth1_for_#{params[:provider]}", identity)
  end

  def after_successful_sign_in_url_with_o_auth1(identity)
    send("after_successful_sign_in_url_with_o_auth1_for_#{params[:provider]}", identity)
  end

  def after_failed_sign_in_with_o_auth1(identity)
    send("after_failed_sign_in_with_o_auth1_for_#{params[:provider]}", identity)
  end
end
