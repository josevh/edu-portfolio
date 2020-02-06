# EDU Portfolio

A **purpose-built** Jekyll theme created for my CSUMB ILP Portfolio.

It **does not** handle blogging. It is meant to display courses grouped via Jekyll collections.

**IT IS NOT MEANT TO BE USED BY OTHERS, BEWARE.**

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "edu-portfolio"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: edu-portfolio

plugins:
  - jekyll-seo-tag
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install edu-portfolio

## Usage

### Favicon
Add your own `_includes/favicon.html` to set your favicon. Example:  
```html
<link rel="icon" type="image/png" href="/myicon.png">
```

### Google Analytics
Add your tracking code to `_config.yml`
```yaml
google_analytics: UA-XXXXX-X
```

### Add your collections
In `_config.yml`, example:
```yaml
collections:
  col_1_name:  # e.g., "courses", "core", "concentration", "final", etc.
    output: true  # REQUIRED
    permalink: /:collection/:name
    nav_include: true  # REQUIRED, Will be included in nav.
    sort_by: nav_order  # REQUIRED, Defines how it will be sorted

defaults:  # NOT required, but convenient.
  -
    scope:
      path: ""
      type: "col_1_name"
    values:
      layout: "page"
      nav_order: 999
```

### Navbar
Pages come **after** collections. To sort pages in navbar:
```yaml
---
nav_order: 1
---
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hello. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `edu-portfolio.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

