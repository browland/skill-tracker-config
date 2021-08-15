# Configuration for Skill Tracker project

## Terraform

The terraform directory contains config to provision the VM instances.

## Ansible

The ansible directory contains config to set up each instance. Tested on Ubuntu 20.04.1 LTS.

The nginx config includes modifications made by manually running `certbot` on the server to support SSL - so far only needed for the docker registry.
Via: `certbot --nginx -d registry.benrowland.net`

## Site certificate

