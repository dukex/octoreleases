class ReleaseMailer < ApplicationMailer
  def new_release(release, project)
    @release = release
    @project = project
    mail(to: "dukekhaos@gmail.com",
         bcc: [project.listeners.map(&:email)])
  end
end
