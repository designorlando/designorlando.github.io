## Setup

- `gem install middleman`
- `bundle`
- `middleman s` (`./bin/middleman s`, if using rbenv/binstubs)

## Adding Talks

There is a `data/talks.yml` file that holds each talk. Each talk looks something like this:

```yaml
- number: 1 # The talk number
  next: true # Is this talk the next talk?
  date: '05/14/13' # The date of the talk
  title: 'Design Thinking Workshop' # The talk title
  meetup: true # Does the talk have a Meetup page?
  link: '116801002' # The Meetup ID (found in URL at the end) if a Meetup page, otherwise general link
  speaker: 'Robb Schiller' # The talk speaker, if applicable
  speaker_link: 'http://twitter.com/robbschiller' # The talk speaker link (Twitter), if applicable
  slides_link: 'https://speakerdeck.com/robbschiller/design-thinking-workshop-design-orlando-may-2013' # The talk slide link, if applicable
```

For upcoming talks that aren't schedule yet, just provide the `number`, `date`, and `unfilled: true` values.

```yaml
- number: 1 # The talk number
  date: '05/14/13' # The date of the talk
  unfilled: true # If the talk hasn't been filled yet
```

## Build

- Run `middleman build` (or `./bin/middleman build`) *before* pushing up your changes

## Deploy

- Run `rake deploy`, which will build and push the static files to `master`.
