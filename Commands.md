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

