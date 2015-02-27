require 'spec_helper'

describe UucsClient do
  it 'has a version number' do
    expect(UucsClient::VERSION).not_to be nil
  end

  it 'can get a token and uri' do
    uut = UucsClient.new 'localhost', '8080'
    answer = uut.get_token_and_uri 'test.zip'
    expect(answer['token'].length).to eq(20)
    expect(answer['uri']).not_to be nil
  end
end
