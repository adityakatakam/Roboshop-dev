cp mongo.repo /etc/yum.repos.d/mongo.repo

dnf install mongodb-org -y

sed -i 's/127.0.0.0/0.0.0.0g' /etc/mongod.conf

systemctl enable mongod
systemctl restart mongod

