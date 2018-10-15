require 'google/apis/youtube_v3'

namespace :youtube do
  task :videoget => :environment  do
    youtube = Google::Apis::YoutubeV3::YouTubeService.new
    youtube.key = ENV['YOUTUBE_API_KEY']
    channel_ids = Youtuber.all

    channel_ids.each do |channel_id|
      results = youtube.list_searches('id,snippet', channel_id: channel_id,
                                      order: 'date', max_results: 5)

      Youtuber.find(channel_id: channel_id)

      results.items.each do |result|
        video = result.id
        video_id = video.video_id
        snippet = result.snippet
        title = snippet.title
        # youtuber = snippet.channel_title
        # videoimg = snippet.thumbnails.medium.url
        # video_url = 'https://www.youtube.com/watch?v=' + video.video_id
        # new_video = Youtube.new(
        #   title: title,
        #   video_id: video_id,
        #   youtuber: youtuber,
        #   remote_videoimg_url: videoimg,
        #   video_url: video_url,
        #   youtube_created: snippet.published_at
        # )
        # new_video.save
      end
    end
  end
end
