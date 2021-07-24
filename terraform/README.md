* Requires a local .env file containing an environment variable DO_PAT and DO_TOKEN containing the DO API key.
* Get droplet id with `doctl compute droplet list`
* Import DO setup into terraform state assuming a file exists containing digitalocean_droplet.do_droplet resource.:
```
terraform import -var "do_token=${DO_TOKEN}" digitalocean_droplet.do_droplet <droplet_id>
```
