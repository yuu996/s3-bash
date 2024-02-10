#!/bin/sh
bucketName = "love-vau1113.me"
echo "----------change file-------------------------------"
aws s3 sync  s3://<バケット名> ./ --dryrun --exclude '*.sh'
echo "----------------------------------------------------"
echo ""
echo "同期しますか？"
echo ""
read -p "1:Yes 2:No : " is_sync
if [ "$is_sync" = "1" ]; then
    aws s3 sync --exclude './sync.sh' s3://<バケット名> ./ --exact-timestamps --delete --exclude '*.sh'
else
    echo ""
    echo "終了しました"
fi
