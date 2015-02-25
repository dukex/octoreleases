task bootstrap: :environment do
  Project.create! name: 'ember-cli/ember-cli'
end
