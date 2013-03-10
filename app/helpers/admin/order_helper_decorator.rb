Spree::Admin::OrdersHelper.class_eval do
  def event_links
    links = []
    @order_events.sort.each do |event|
      if @order.send("can_#{event}?")
        links << link_to(t(event), fire_admin_order_url(@order, :e => event),
                                :method => :put,
                                :class => "btn #{event}",
                                :data => { :confirm => t(:order_sure_want_to, :event => t(event)) })
      end
    end
    links.join('&nbsp;').html_safe
  end
end
