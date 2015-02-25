task releases: :environment do
  client = Octokit::Client.new client_id: "cabf088575874350dfb1", client_secret: "536aae6cd43857abe18cf30f49f837cb30713ab2"

  Project.all.each do |project|
    latest = client.latest_release(project.name)
    if latest[:id] > project.latest_release.to_i
      # notify
      # latest[:body]
      # latest[:html_url]
      project.update_attribute :lastest_release, latest[:id]
    end
  end
end
