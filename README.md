# Opal Native - React Native in Ruby

> JavaScript is just an implementation details

## Motivation

To provide a Ruby-friendly tool chain (this doesn't require node / npm)

## Usage

1. Clone or download this project
2. `bundle install`
3. `bundle exec pod install`
4. `open Sample.xcworksapce` to launch Xcode
5. `bundle exec thin -R config.ru start -p 8081` (switch port is not allowed currently)
6. Build & Run

### Debug

1. `Ctrl + Cmd + Z` to toggle menu, and select "Enable debugging".
2. Open `http://localhost:8081/` in Safari or Chrome to debug in inspector (haven't test in Firefox)

## TODO

- [ ] Source map is broken
- [ ] Publish as a gem
- [ ] Generate project or provide Xcode template
- [ ] Rewrite the original Movie.app example
