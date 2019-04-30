#!/bin/bash
set -euo pipefail

rsync -avz --delete dist/ markneub@neuinteractive.com:/var/www/neuinteractive
