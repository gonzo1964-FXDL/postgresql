#!/usr/bin/env bash

gatekeeper_status=$(spctl --status)

if [[ ${gatekeeper_status} ==  "assessments enabled" ]]
then
    echo "Gatekeeper is enabled do some stuff"
else
    echo "Gatekeeper is disabled do some stuff"
fi
