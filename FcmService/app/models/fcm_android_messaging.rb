class FcmAndroidMessaging < ActiveRecord::Base
  after_save :do_foobar


  private
  def do_foobar

   @a=self.user_id
   @b='test'



  end
end
