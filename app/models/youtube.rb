class Youtube < ApplicationRecord
  
    DEVELOPER_KEY = 'AIzaSyD84eiqpPc8K6Dg7BdwmdFWZ7MQ85AW8F4'
    YOUTUBE_API_SERVICE_NAME = 'youtube'
    YOUTUBE_API_VERSION = 'v3'

    def get_service
        client = Google::APIClient.new(
         :key => DEVELOPER_KEY,
         :authorization => nil,
         :application_name => $PROGRAM_NAME,
         :application_version => '1.0.0'
         )
        youtube = client.discovered_api(YOUTUBE_API_SERVICE_NAME, YOUTUBE_API_VERSION)
    end

    return client, youtube　#検索結果をclientとyoutubeに戻す


def main
  opts = Trollop::options do
    opt :q, 'Search term', :type => String, :default => 'Google'
    opt :max_results, 'Max results', :type => :int, :default => 25
  end

  client, youtube = get_service

  begin
    # Call the search.list method to retrieve results matching the specified
    # search.listメソッドを呼び出して、指定されたものと一致する結果を取得します
    # query term.
    search_response = client.execute!(
      :api_method => youtube.search.list,
      :parameters => {
        :part => 'snippet',
        :q => opts[:q],
        :maxResults => opts[:max_results]
      }
    )

    videos = []
    channels = []
    playlists = []


end

