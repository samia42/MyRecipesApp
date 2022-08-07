module ApplicationHelper
    def Gravatar_for(user,options={size:80})
        gravatar_id=Digest::MD5::hexdigest(user.email.downcase)
        size=options[:size]
        garavatar_url="https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
        image_tag(garavatar_url,alt:user.chefname,class:"rounded-circle")
     end
end
