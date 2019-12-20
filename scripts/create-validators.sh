#! /bin/bash
#
# If the ~/.lighthouse/validators directory does not exist, creates
# $VALIDATOR_COUNT validators. If the directory does exist, the script does
# nothing.

if [ "$START_VALIDATOR" != "" ]; then
	if [ ! -d ~/.lighthouse/validators ]; then
		if [ "$SEND_DEPOSITS" != "" ]; then
			lighthouse \
				--debug-level $DEBUG_LEVEL \
				account \
				validator \
				new \
				--send-deposits \
				--eth1-endpoint $DEPOSITS_ETH1_NODE \
				--password $PASSWORD_FILE \
				--deposit-value $DEPOSIT_VALUE \
				random \
				$VALIDATOR_COUNT
		else
			lighthouse \
				--debug-level $DEBUG_LEVEL \
				account \
				validator \
				new \
				--deposit-value $DEPOSIT_VALUE \
				random \
				$VALIDATOR_COUNT
		fi
	else
		echo "Validator directory already exists. Not creating validators."
	fi
fi
