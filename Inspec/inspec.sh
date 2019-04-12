#!/bin/bash

# This shell script verifies the package installs that are passed in test.rb file

echo "Summary of services available to patch as of `date '+%Y-%m-%d %H:%M'` " 2>&1 | tee -a //tmp/patches.`date '+%Y%m%d-%H:%M'`

for FILE in /Path/to/the/serverlist /path/to/another/serverlist

do

	echo "Processing $FILE"

	for HOST in `cat $FILE`

		do
			echo "Verifying $HOST"
			nslookup $HOST
			echo "Checking services FireEye, ESET, Quest KACE, Chocolatey for $HOST"
			inspec exec /path/to/ruby.rb -t winrm://user_name:password@$HOST 2>&1 | tee -a //tmp/patches.`date '+%Y%m%d-%H:%M'`
		done
done
