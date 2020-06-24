class Api::V1::MessagesController < ApplicationController
  before_action :find_channel

  def index
    @messages = @channel.messages.order('created_at ASC')
    render json: @messages
  end

  def create
    @message = Message.new(content: params[:content])
    @message.channel = @channel
    @message.user = current_user
    @message.save
    render json: @message
  end

  private

  def find_channel
    @channel = Channel.find_by(name: params[:channel_id])
  end
end
