require 'google/apis/youtube_v3'

# 今youtubeのデータがない状態 seedデータを作る
namespace :youtube do
  task :videoget => :environment  do
    youtube = Google::Apis::YoutubeV3::YouTubeService.new
    youtube.key = ENV['YOUTUBE_API_KEY']
    utatubers = Youtuber.all

    utatubers.each do |utatuber|
      utatuber_id = utatuber.channel_id
      results = youtube.list_searches('id,snippet', channel_id: utatuber_id,
                                      order: 'date', max_results: 5)
      results.items.each do |result|
        video = result.id
        snippet = result.snippet
        utatuber.movies.create(
          video_id: video.video_id,
          title: snippet.title,
          channel_title: snippet.channel_title,
          video_image: snippet.thumbnails.medium.url,
          video_url: 'https://www.youtube.com/watch?v=' + video.video_id,
          video_description: snippet.description,
          published_at: snippet.published_at
        )
        unless Movie.exsits?(video_id: video.video_id)
        end
      end
    end
  end
end
