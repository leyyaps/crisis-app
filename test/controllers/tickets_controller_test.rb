require 'test_helper'

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_url
    assert_response :success
  end

  test "should create ticket" do
    assert_difference('Ticket.count') do
      post tickets_url, params: { ticket: { cover_image: @ticket.cover_image, date: @ticket.date, description: @ticket.description, opening_time: @ticket.opening_time, small_image: @ticket.small_image, square_image: @ticket.square_image, theme: @ticket.theme, ticket_id: @ticket.ticket_id } }
    end

    assert_redirected_to ticket_url(Ticket.last)
  end

  test "should show ticket" do
    get ticket_url(@ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_url(@ticket)
    assert_response :success
  end

  test "should update ticket" do
    patch ticket_url(@ticket), params: { ticket: { cover_image: @ticket.cover_image, date: @ticket.date, description: @ticket.description, opening_time: @ticket.opening_time, small_image: @ticket.small_image, square_image: @ticket.square_image, theme: @ticket.theme, ticket_id: @ticket.ticket_id } }
    assert_redirected_to ticket_url(@ticket)
  end

  test "should destroy ticket" do
    assert_difference('Ticket.count', -1) do
      delete ticket_url(@ticket)
    end

    assert_redirected_to tickets_url
  end
end
