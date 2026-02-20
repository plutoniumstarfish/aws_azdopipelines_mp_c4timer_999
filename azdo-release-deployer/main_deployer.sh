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

   
case "$NAME_UPPER" in
*DEV*
echo "Load DEV Bucket"
echo 'export BUCKET_NAME="wsp-dev-use2-s3-1ambda-deployment-package"* »> $VARS
if [I SNAME_UPPER == "DEV1 DEPLOYMENT" ]]; then
echo 'export TFVARS_PATH="/opt/agent/tfvars/dev1_use2_v1.tfvars"* >> $VARS
echo 'export ENV_IAC="dev1_use2_v1"' » $VARS
echo 'export ENV_PACKAGE="dev1_v1"' »› $VARS elif [[ $NAME_UPPER == "DEV DEPLOYMENT" ]l; then
echo 'export TFVARS_PATH="/opt/agent/tfvars/dev1_use2_v1.tfvars"* ›> $VARS
echo 'export ENV_TAC="dev_use2"' »> SVARS
echo 'export ENV_PACKAGE="dev_v1"' »> $VARS
elif [I SNAME_UPPER = "DEV2 DEPLOYMENT" 11; then
echo 'export TFVARS_PATH="/opt/agent/tfvars/dev2_use2_v1.tfvars"* »> $VARS
echo 'export ENV_IAC="dev2_use2_v1"' »> $VARS
echo 'export ENV_PACKAGE="dev2_v1"' »> $VARS
elif L[ SNAME_UPPER = "DEV3 DEPLOYMENT" 11; then
echo 'export TFVARS_PATH="/opt/agent/tfvars/dev3_use2_v1.tfvars"* >> $VARS
echo 'export ENV_TAC="dev3_use2_v1"* »> $VARS
echo 'export ENV_PACKAGE="dev3_v1"' >> $VARS
else
