#!/usr/bin/python3

from mastodon import Mastodon
import os

token = os.getenv('token')
instance = os.getenv('instance')
message = os.getenv('message')

#   Set up Mastodon
mastodon = Mastodon(
    access_token = token,
    api_base_url = instance
)

media = mastodon.media_post("/var/lib/motion/lastsnap.jpg", mime_type="image/jpeg")
mastodon.status_post(message, media_ids=media)
