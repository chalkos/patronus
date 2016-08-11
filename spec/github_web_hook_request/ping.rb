class GithubWebHookRequest
  class Ping < GithubWebHookRequest
    def initialize(request: nil)
      @body = {
        zen: 'random-string',
        hook_id: 1,
        hook: {
          id: 1,
          url: 'https://api.github.com/repos/octocat/Hello-World/hooks/1',
          test_url: 'https://api.github.com/repos/octocat/Hello-World/hooks/1/test',
          ping_url: 'https://api.github.com/repos/octocat/Hello-World/hooks/1/pings',
          name: 'web',
          events: %w(status pull_request comment_issue),
          active: true,
          config: {
            url: 'http://example.com/webhook',
            content_type: 'json'
          },
          updated_at: '2011-09-06T20:39:23Z',
          created_at: '2011-09-06T17:26:27Z'
        }
      }
      super('ping', request)
    end
  end
end