Spree::Admin::NavigationHelper.class_eval do
  def link_to_clone(resource, options={})
    options[:data] = {:action => 'clone'}
    link_to_with_icon('icon-retweet', t(:clone), clone_admin_product_url(resource), options)
  end
end
