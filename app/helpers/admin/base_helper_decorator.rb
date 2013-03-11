Spree::Admin::BaseHelper.class_eval do
  def link_to_add_fields(name, target, options = {})
    name = '' if options[:no_text]
    css_classes = options[:class] ? options[:class] + " add_fields" : "add_fields"
    link_to name, 'javascript:', :data => { :target => target }, :class => css_classes
  end

  def link_to_remove_fields(name, f, options = {})
    name = '' if options[:no_text]
    options[:class] = '' unless options[:class]
    options[:class] += 'no-text with-tip' if options[:no_text]
    url = f.object.persisted? ? [:admin, f.object] : '#'
    link_to_with_icon('icon-remove', name, url, :class => "remove_fields #{options[:class]}", :data => {:action => 'remove'}, :title => t(:remove)) + f.hidden_field(:_destroy)
  end

  def preference_field_options(options)
    field_options = case options[:type]
      when :integer
        { :size => 10,
          :class => 'input_integer' }
      when :boolean
        {}
      when :string
        { :size => 10,
          :class => 'input_string span12' }
      when :password
        { :size => 10,
          :class => 'password_string span12' }
      when :text
        { :rows => 15,
          :cols => 85,
          :class => 'span12' }
      else
        { :size => 10,
          :class => 'input_string span12' }
    end

    field_options.merge!({
      :readonly => options[:readonly],
      :disabled => options[:disabled],
      :size     => options[:size]
    })
  end
end
