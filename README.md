# Exceptional.io Slack integrations

A node app that proxies exceptions notifications from [exceptional.io](https://www.exceptional.io) to [Slack](http://slack.com).

## How to get it going:

### Install

Check it out of git:

	git clone https://github.com/dorian/ExceptionalIO2Slack.git

Deploy to heroku:

	heroku create
	git push heroku master

This will tell you your url: `https://creative-name-1234.herokuapp.com`

### Config

#### Environmental Vars

You will need to set the following environmental variables:

You can do this the easy way with heroku:

	SLACK_BOTNAME=exceptional
	SLACK_CHANNEL=#channel
	SLACK_ORG=the-subdomain-in-the-url
	SLACK_TOKEN=a-webhook-token

With Heroku: `heroku config:set SLACK_BOTNAME=exceptional SLACK_CHANNEL=#channel SLACK_ORG=the-subdomain-in-the-url SLACK_TOKEN=a-webhook-token`

You can also do it in a `.env` to test it locally and start the app with `coffee app.coffee`.

### Exceptional.io config

Add the `https://creative-name-1234.herokuapp.com/exception` hook to the the webhooks in the Exceptional.io interface.

### That should do it.

## TODO

There probably needs to be some better security on the url that is posted to the webhooks. Maybe pass through the `token` that comes from slack via webhook url.

Probably other things as well.

## YAY!

![party hard!](http://i.imgur.com/1fbd1Ks.gif)

Hit me up if you have problems or concerns: [@bydorian](http://twitter.com/bydorian) / [dorian@bespokepost.com](mailto:dorian@bespokepost.com)

Thanks to [@harper](http://twitter.com/harper) for the [original inspiration](https://github.com/modestinc/CircleCI2Slack).
