Spree::Admin::NavigationHelper.class_eval do
  def link_to_clone(resource, options={})
    options[:data] = {:action => 'clone'}
    link_to_with_icon('icon-retweet', t(:clone), clone_admin_product_url(resource), options)
  end

  def button_link_to(text, url, html_options = {})
    if (html_options[:method] &&
        html_options[:method].to_s.downcase != 'get' &&
        !html_options[:remote])
      form_tag(url, :method => html_options.delete(:method)) do
        button(raw('<i class='+html_options.delete(:icon)+'></i> '+text), html_options.delete(:class), html_options)
      end
    else
      if html_options['data-update'].nil? && html_options[:remote]
        object_name, action = url.split('/')[-2..-1]
        html_options['data-update'] = [action, object_name.singularize].join('_')
      end

      html_options.delete('data-update') unless html_options['data-update']

      link_to(text_for_button_link(raw('<i class="'+html_options.delete(:icon)+'"></i> '+text), html_options), url, html_options)
    end
  end
  def link_to_with_icon(icon_name, text, url, options = {})
    options[:class] = (options[:class].to_s + " icon_link with-tip").strip
    if options[:no_text]
      options[:class] += " #{icon_name}"
    end
    options[:class] += ' no-text' if options[:no_text]
    options[:title] = text if options[:no_text]
    text = options[:no_text] ? '' : raw("<i class='#{icon_name}'></i> #{text}")
    options.delete(:no_text)
    link_to(text, url, options)
  end
end
