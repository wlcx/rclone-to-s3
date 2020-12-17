#!/usr/bin/env bash
mkdir -p ~/.config/rclone

cat << EOF > ~/.config/rclone/rclone.conf
[garage]
type = s3
provider = Other
env_auth = false
access_key_id = $ACCESS_KEY
secret_access_key = $SECRET_KEY
region = $REGION
endpoint = $ENDPOINT
force_path_style = true
acl = private
bucket_acl = private
EOF

rclone sync -v --delete-after $1 garage:$BUCKET
