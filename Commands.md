Deploy Lava node stack :

# Delete the stack
aws cloudformation delete-stack --stack-name lava-node

# Wait for the deletion to complete
aws cloudformation wait stack-delete-complete --stack-name lava-node


```bash
   aws cloudformation deploy \
  --template-file ecs-deploy-dockerfile/cloudformation/lava-node-cf.yaml \
  --stack-name lava-node \
  --parameter-overrides \
  VpcId=vpc-09b242c14497ec489 \
  SubnetIds=subnet-0dd838152ff6971a7 \
  --capabilities CAPABILITY_IAM
   ```

   aws cloudformation deploy \
  --template-file ecs-deploy-dockerfile/cloudformation/sui-indexer-alt-cf.yaml \
  --stack-name lava-node \
  --parameter-overrides \
  VpcId=vpc-09b242c14497ec489 \
   DBUsername=your_custom_username \
  DBPassword=your_secure_password \
  SubnetIds=subnet-0dd838152ff6971a7 \
  --capabilities CAPABILITY_IAM

aws cloudformation deploy \
  --template-file ecs-deploy-dockerfile/cloudformation/supabase-cf.yaml \
  --stack-name supabase \
  --parameter-overrides \
  VpcId=vpc-09b242c14497ec489 \
  SubnetIds=subnet-0dd838152ff6971a7 \
  PostgresPassword=sui-indexer \
  JwtSecret=YourSecureJwtSecret \
  DashboardPassword=YourSecureDashboardPassword \
  KeyPair=supabase-key \
  --capabilities CAPABILITY_IAM


aws cloudformation deploy \
  --template-file ecs-deploy-dockerfile/cloudformation/supabase-direct-cf.yaml \
  --stack-name supabase-direct \
  --parameter-overrides \
  VpcId=vpc-09b242c14497ec489 \
  SubnetId=subnet-0dd838152ff6971a7 \
  PostgresPassword=YourSecurePostgresPassword \
  JwtSecret=YourSecureJwtSecret \
  KeyPair=Supabase \
  --capabilities CAPABILITY_IAM

  aws cloudformation deploy \
  --template-file ecs-deploy-dockerfile/cloudformation/stack-cf.yaml \
  --stack-name blockchain-stack \
  --parameter-overrides \
  VpcId=vpc-09b242c14497ec489 \
  SubnetIds=subnet-0dd838152ff6971a7 \
  PostgresPassword=YourSecurePostgresPassword \
  JwtSecret=YourSecureJwtSecret \
  KeyPair=Supabase \
  ResourcePrefix=blockchain-stack \
  SuiNodeImageVersion=mainnet-v1.19.1 \
  --capabilities CAPABILITY_IAM
