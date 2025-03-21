# Lambda function that uses EFS mount helper
import boto3
import os
import cfnresponse
import urllib.request

def handler(event, context):
    try:
        # Mount EFS
        os.makedirs('/mnt/efs', exist_ok=True)
        os.system(f'mount -t efs {event["ResourceProperties"]["FileSystemId"]}:/ /mnt/efs')
        
        # Create directories
        os.makedirs('/mnt/efs/config', exist_ok=True)
        os.makedirs('/mnt/efs/data', exist_ok=True)
        
        # Download config files
        urllib.request.urlretrieve(
            'https://github.com/MystenLabs/sui/raw/main/crates/sui-config/data/fullnode-template.yaml',
            '/mnt/efs/config/fullnode.yaml'
        )
        
        urllib.request.urlretrieve(
            'https://github.com/MystenLabs/sui-genesis/raw/main/mainnet/genesis.blob',
            '/mnt/efs/config/genesis.blob'
        )
        
        cfnresponse.send(event, context, cfnresponse.SUCCESS, {})
    except Exception as e:
        print(f"Error: {str(e)}")
        cfnresponse.send(event, context, cfnresponse.FAILED, {})