#/bin/bash
#Define function
#delay tasks - pause deployments
pause () {
  echo "Pause 5 seconds ..."
  sleep 5
}

#loadvars for full iac deploys
loadvars() {
   echo "Loading Vars ..."
   VARS=$2
   NAME_UPPER=$(RELEASE_ENVIRONMENTNAME^^}

   
