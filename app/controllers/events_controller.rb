class EventsController < ApplicationController
  include Pagy::Backend

  def index
    events = Event.includes(:instances).by_instance(params[:instance_id])
    # events = Event.by_instance(params[:instance_id])
    # events = Event.all
    pagy, objects = pagy(events, items: params[:items] || 2)
    render json: {pagy: pagy, objects: objects}
  end
end
