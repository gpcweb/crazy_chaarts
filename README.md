# CrazyChaarts

CrazyChaarts is a gem that will help you to generate images charts using phantomjs and highcharts. So if you want to generate some charts you need to install phantomjs in your system and have highcharts-convert.js (and its dependencies) inside a folder in your rails app. By default CrazyChaarts expects highcharts-convert.js inside vendor/highcharts. However you can tell him to search inside another folder.

At the moment we can only generate LineCharts.

## Installation

### PhantomJs

    $ cd /usr/local/share
    $ sudo wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2
    $ sudo tar xjf phantomjs-1.9.7-linux-x86_64.tar.bz2
    $ sudo ln -s /usr/local/share/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/local/share/phantomjs
    $ sudo ln -s /usr/local/share/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs
    $ sudo ln -s /usr/local/share/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/bin/phantomjs

### CrazyCharts

Add this line to your application's Gemfile:

```ruby
gem 'crazy_chaarts'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install crazy_chaarts

## Usage

Inside your custom class, background job or controller:

```ruby
chart = CrazyChaarts::LineChart.new()
chart.categories = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dec']
chart.series_data = [
                      {
                        name: '2014',
                        data: [1230, 1530, 1470, 1590, 2450, 1260, 1850, 1260, 1620, 1320, 1470, 1840],
                        color: '#0B2E4F',
                        marker: {
                         symbol: 'circle'
                        }
                      },
                      {
                        name: '2015',
                        data: [1530, 1470, 1590, 1891, 1100, 890, 1250, 1470, 1860, 1230, 1320, 2200],
                        color: '#176E99',
                        marker: {
                         symbol: 'circle'
                        }
                      }
                    ]
chart.to_img()
```

This will generate a chart.json and a chart.png inside the tmp folder in your rails app.

If you want to change the name and location of your files, you can do it like so:

```ruby
chart = CrazyChaarts::LineChart.new({ input_file: "/some/path/file.json", output_file: "/some/path/file.png" })
```

If you want to override the default location of highcharts-convert.js:

```ruby
chart = CrazyChaarts::LineChart.new({ highcharts_path: "/some/path/highcharts-convert.js" })
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/crazy_chaarts. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

