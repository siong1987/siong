# siong.com

What do you think?  A website about me :)

## Development

We can see changes on the website by starting the local server `bundle exec middleman server`. Since we have `middleman-livereload` installed, changes will be automatically reflected without restarting the server.

## Deployment

1. First, build the files `bundle exec middleman build`.
2. Then, sync the files to Amazon S3 `bundle exec middleman s3_sync`.
3. Finally, make sure that you invalidate the cache on CloudFront `AWS_DISTRIBUTION_ID= AWS_ACCESS_KEY= AWS_SECRET= bundle exec middleman invalidate`.

Note: Refer to the local `.s3_sync` file for the necessary environment keys.
