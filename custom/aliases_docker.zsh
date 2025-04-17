
export _APPS=$HOME/Work/apps/docker

# MYSQL
export _MYSQL_DOCKER="docker-compose -f $_APPS/docker_mysql.yml" 
alias mysql_start="$_MYSQL_DOCKER up -d"
alias mysql_stop="$_MYSQL_DOCKER down"
alias mysql_logs="$_MYSQL_DOCKER logs --tail=1000 --follow"
alias mysql_config="$_MYSQL_DOCKER config"
alias mysql_top="$_MYSQL_DOCKER top"
alias mysql_client="$_MYSQL_DOCKER run db mysql -h db -uroot -p"

# KAFKA
export _KAFKA_DOCKER="docker-compose -f $_APPS/kafka-docker/docker-compose-single-broker.yml" 
alias kafka_start="echo myip=\`localip\` > .env; cat .env; $_KAFKA_DOCKER up -d"
alias kafka_stop="$_KAFKA_DOCKER down"
alias kafka_logs="$_KAFKA_DOCKER logs --tail=1000 --follow"
alias kafka_config="$_KAFKA_DOCKER config"
alias kafka_top="$_KAFKA_DOCKER top"
alias kafka_shell="$_KAFKA_DOCKER exec kafka bash"

# LENSES - Kafka Dev Env
alias lenses_start="docker run -e ADV_HOST=127.0.0.1 -e EULA=\"https://dl.lenses.stream/d/?id=01fab875-f12d-47f9-8428-aa4b6c5a1465\" -e SAMPLEDATA=0 --rm -p 3030:3030 -p 9092:9092 -p 2181:2181 -p 8081:8081 -p 9581:9581 -p 9582:9582 -p 9584:9584 -p 9585:9585 landoop/kafka-lenses-dev"


# POSTGRES
export _POSTGRES_DOCKER="docker-compose -f $_APPS/docker_postgres.yml"
alias postgres_start="$_POSTGRES_DOCKER up -d"
alias postgres_stop="$_POSTGRES_DOCKER down"
alias postgres_logs="$_POSTGRES_DOCKER logs --tail=1000 --follow"
alias postgres_config="$_POSTGRES_DOCKER config"
alias postgres_top="$_POSTGRES_DOCKER top"
alias postgres_shell="$_POSTGRES_DOCKER exec postgres-db bash"


# SFTP Server
export _SFTP_DOCKER="docker-compose -f $_APPS/sftp-docker/docker_sftp.yml"
alias sftp_start="$_SFTP_DOCKER up -d"
alias sftp_stop="$_SFTP_DOCKER down"
alias sftp_logs="$_SFTP_DOCKER logs --tail=1000 --follow"
alias sftp_config="$_SFTP_DOCKER config"
alias sftp_top="$_SFTP_DOCKER top"
alias sftp_shell="$_SFTP_DOCKER exec atmoz-sftp bash"

# SFTP Server
export _VAULT_DOCKER="docker-compose -f $_APPS/vault-docker/docker_vault.yml"
alias vault_start="$_VAULT_DOCKER up -d"
alias vault_stop="$_VAULT_DOCKER down"
alias vault_logs="$_VAULT_DOCKER logs --tail=1000 --follow"
alias vault_config="$_VAULT_DOCKER config"
alias vault_top="$_VAULT_DOCKER top"
alias vault_shell="$_VAULT_DOCKER exec vault /bin/sh"
alias vault_setup="$_VAULT_DOCKER exec vault /bin/sh /vault/scripts/initial.sh"

# HADOOP
alias cloudera_start="docker run --hostname=quickstart.cloudera --privileged=true -d -i -t -v /Users/thakkarv/Work/data:/src --publish-all=true -p 8888 cloudera/quickstart /usr/bin/docker-quickstart"

# MONGO
alias mongo_start="docker run --name localmongo -d -p 27017:27017 mongo"
alias mongo_client="docker run -it --link localmongo:mongo --rm mongo sh -c 'exec mongo $MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017_TCP_PORT/test'"




# MISC
alias docker_ports="docker ps -q | xargs -n1 docker port"
