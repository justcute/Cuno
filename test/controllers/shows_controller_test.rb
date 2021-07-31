require 'test_helper'

class ShowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @show = shows(:one)
  end

  test 'should get index' do
    get shows_url
    assert_response :success
  end

  test 'should get new' do
    get new_show_url
    assert_response :success
  end

  test 'should create show' do
    assert_difference('Show.count') do
      post shows_url,
           params: { show: { country: @show.country, date: @show.date, description: @show.description, duration: @show.duration,
                             sertification: @show.sertification, title: @show.title, trailer: @show.trailer } }
    end

    assert_redirected_to show_url(Show.last)
  end

  test 'should show show' do
    get show_url(@show)
    assert_response :success
  end

  test 'should get edit' do
    get edit_show_url(@show)
    assert_response :success
  end

  test 'should update show' do
    patch show_url(@show),
          params: { show: { country: @show.country, date: @show.date, description: @show.description, duration: @show.duration,
                            sertification: @show.sertification, title: @show.title, trailer: @show.trailer } }
    assert_redirected_to show_url(@show)
  end

  test 'should destroy show' do
    assert_difference('Show.count', -1) do
      delete show_url(@show)
    end

    assert_redirected_to shows_url
  end
end
