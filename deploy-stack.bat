@echo off
set tipo_instancia=t2.small
aws cloudformation deploy --stack-name WordPressServer --template-file main.yml --capabilities CAPABILITY_NAMED_IAM --parameter-overrides EC2InstanceType=%tipo_instancia%

if %errorlevel% == 0 (
  aws cloudformation list-exports --query "Exports[?Name=='WordPressServer-ServerPublicIP'].Value"
  echo "≧◠‿◠≦"
) else (
  echo "Ha fallado"
  echo "( ˘︹˘ )"
)