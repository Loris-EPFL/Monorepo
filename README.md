WARN[0250] a network with name lava_network exists but was not created for project "masterproject".
Set `external: true` to use an existing network 
[+] Running 11/9
 ✔ Network masterproject_default               Created                                                                                                                                                0.1s 
 ✔ Volume "masterproject_postgres-data"        Created                                                                                                                                                0.0s 
 ✔ Volume "masterproject_lava_data"            Created                                                                                                                                                0.0s 
 ✔ Container masterproject-lava-node-init-1    Created                                                                                                                                                0.0s 
 ✔ Container sui-indexer-postgres              Created                                                                                                                                                0.0s 
 ✔ Container supabase-analytics                Created                                                                                                                                                0.0s 
 ✔ Container masterproject-fullnode-1          Created                                                                                                                                                0.0s 
 ✔ Container supabase-imgproxy                 Created                                                                                                                                                0.0s 
 ✔ Container supabase-vector                   Created                                                                                                                                                0.0s 
 ✔ Container masterproject-lava-node-config-1  Created                                                                                                                                                0.0s 
 ✔ Container sui-sender-indexer                Created                                                                                                                                                0.0s 
 ⠋ Container supabase-auth                     Creating                                                                                                                                               0.0s 
 ⠋ Container supabase-rest                     Creating                                                                                                                                               0.0s 
 ⠋ Container supabase-studio                   Creating                                                                                                                                               0.0s 
 ⠋ Container supabase-kong                     Creating                                                                                                                                               0.0s 
 ⠋ Container supabase-edge-functions           Creating                                                                                                                                               0.0s 
 ⠋ Container realtime-dev.supabase-realtime    Creating                                                                                                                                               0.0s 
 ⠋ Container supabase-pooler                   Creating                                                                                                                                               0.0s 
 ⠋ Container supabase-meta                     Creating                                                                                                                                               0.0s 
 ⠋ Container lava-node                         Creating                                                                                                                                               0.0s 
Error response from daemon: Conflict. The container name "/lava-node" is already in use by container "b894279f2c98548b3051936b1efeee653f4ebd6ef093122d0854576c559431cd". You have to remove (or rename) that container to be able to reuse that name.
