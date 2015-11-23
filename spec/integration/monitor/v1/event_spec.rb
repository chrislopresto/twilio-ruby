##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

require 'spec_helper.rb'

describe 'Event' do
  it "can fetch" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.monitor.v1.events("AEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://monitor.twilio.com/v1/Events/AEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "actor_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "actor_type": "account",
          "description": null,
          "event_data": {
              "friendly_name": {
                  "previous": "SubAccount Created at 2014-10-03 09:48 am",
                  "updated": "Mr. Friendly"
              }
          },
          "event_date": "2014-10-03T16:48:25Z",
          "event_type": "account.updated",
          "links": {
              "actor": "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "resource": "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
          },
          "resource_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "resource_type": "account",
          "sid": "AEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "source": "api",
          "source_ip_address": "10.86.6.250",
          "url": "https://monitor.twilio.com/v1/Events/AEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))
    
    actual = @client.monitor.v1.events("AEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    
    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.monitor.v1.events.list()
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://monitor.twilio.com/v1/Events',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "events": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "actor_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "actor_type": "account",
                  "description": null,
                  "event_data": {
                      "friendly_name": {
                          "previous": "SubAccount Created at 2014-10-03 09:48 am",
                          "updated": "Mr. Friendly"
                      }
                  },
                  "event_date": "2014-10-03T16:48:25Z",
                  "event_type": "account.updated",
                  "links": {
                      "actor": "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "resource": "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
                  },
                  "resource_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "resource_type": "account",
                  "sid": "AEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "source": "api",
                  "source_ip_address": "10.86.6.250",
                  "url": "https://monitor.twilio.com/v1/Events/AEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ],
          "meta": {
              "first_page_url": "https://monitor.twilio.com/v1/Events?PageSize=50&Page=0",
              "key": "events",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://monitor.twilio.com/v1/Events?PageSize=50&Page=0"
          }
      }
      ]
    ))
    
    actual = @client.monitor.v1.events.list()
    
    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "events": [],
          "meta": {
              "first_page_url": "https://monitor.twilio.com/v1/Events?PageSize=50&Page=0",
              "key": "events",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://monitor.twilio.com/v1/Events?PageSize=50&Page=0"
          }
      }
      ]
    ))
    
    actual = @client.monitor.v1.events.list()
    
    expect(actual).to_not eq(nil)
  end
end