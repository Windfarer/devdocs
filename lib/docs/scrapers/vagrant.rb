module Docs
  class Vagrant < UrlScraper
    self.name = 'Vagrant'
    self.type = 'vagrant'
    self.release = '1.9.2'
    self.base_url = 'https://www.vagrantup.com/docs/'
    self.root_path = 'index.html'
    self.links = {
      home: 'https://www.vagrantup.com/',
      code: 'https://github.com/mitchellh/vagrant'
    }

    html_filters.push 'vagrant/entries', 'vagrant/clean_html'

    options[:attribution] = <<-HTML
      &copy; 2010&ndash;2017 Mitchell Hashimoto<br>
      Licensed under the MPL 2.0 License.
    HTML
  end
end
