#!/bin/bash
dat=`date +%d.%m.%Y_%H%M%S`
#
pg_dump --file=ms01-${dat}.sql ms01 -U mspruck
