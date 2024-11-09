class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def display_form
    
    render({ :template => "item_templates/backdoor_form"})
  end

  def create_item
    i = Item.new
    i.link_url = params.fetch("query_link_url")
    i.link_description = params.fetch("query_link_description")
    i.thumbnail_url = params.fetch("query_thumbnail_url")
    i.save

    redirect_to("/")
  end
end
