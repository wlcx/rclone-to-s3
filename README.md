# Copy to s3 with rclone GitHub Action

Use rclone to upload files to s3-compatible storage. Useful for deploying static sites. Uses the `rclone sync` command to deploy.

## Usage
In a workflow:

```yml
- name: Deploy to s3
  uses: wlcx/rclone-to-s3@main
  with:
    endpoint: ${{ secrets.ENDPOINT}}
    access_key: ${{ secrets.ACCESS_KEY }}
    secret_key: ${{ secrets.SECRET_KEY }}
    bucket: 'mybucket'
    region: 'someregion'
    # Optional, these are the default values:
    source_dir: 'public'
    target_dir: '/'
```
