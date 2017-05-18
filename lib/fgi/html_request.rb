module Fgi
  class HTMLRequest

    def initialize(title, description)
      @title = title
      @description = description
    end

    def push
      uri = URI.parse(generate_link)
      req = Net::HTTP::Post.new uri
      req['PRIVATE-TOKEN'] = Fgi::Config[:token]

      Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        @response = JSON.parse(http.request(req).body)
      end

      if !@response['iid'].nil?
        puts 'Your issue has been sucessfully created.'
        puts 'To view it, please follow the link bellow:'
        puts ''
        puts "#{Fgi::Config[:url]}/#{Fgi::Config[:project_namespaced]}/issues/#{@response['iid'].to_s}"
        puts ''
        puts 'Thank you for using Fast Gitlab Issues!'
      else
        puts %q(I'm not really sure what happened, but I believe something went wrong.)
        puts 'CALL HELP!!!'
      end
    end

    def generate_link
      Fgi::Config[:url] + '/api/v4/projects/' + Fgi::Config[:project_gitlab_id].to_s + '/issues?title=' + URI.encode(@title) + '&description=' + URI.encode(@description)
    end

  end
end
