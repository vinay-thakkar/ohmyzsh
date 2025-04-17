#PATHS
export _ARGOS=$HOME/Work/code/argos
export _IPT=$_ARGOS/aip/intake-planning
export _DEMCAP=$_ARGOS/aip/demand_capture
export _PAAS_SHARED=$_ARGOS/paas-shared
export _CC=$_ARGOS/hydra/clickandcollect

# Project Home
alias argos=$_ARGOS
alias demcap=$_DEMCAP
alias ipt=$_IPT
alias paas=$_PAAS_SHARED
alias cc=$_CC

# Intake Planning
alias ipt-poc=$_IPT/tech-stack-poc
alias ipt-libs=$_IPT/libraries/ipt-jenkins-lib
alias ipt-services=$_IPT/services

alias s1-inventory=$_IPT/services/s1-projected-inventory
alias s2-burndown=$_IPT/services/s2-burndown-inventory
alias s3-prioritisation=$_IPT/services/s3-prioritisation

alias s0-stockonhand=$_IPT/services/s0-stock-on-hand-source
alias s0-customerorder=$_IPT/services/s0-customer-order-source
alias s0-purchaseorder=$_IPT/services/s0-purchase-order-source
alias s0-transferorder=$_IPT/services/s0-transfer-order-source

alias s0-target=$_IPT/services/s0-stock-target-source
alias s0-forecast=$_IPT/services/s0-forecast-source

alias s1-expiry=$_IPT/services/s1-purchase-order-expiry-processor
alias s3-deficit=$_IPT/services/s3-deficit-calculator


# PaaS
alias paas-seed=$_PAAS_SHARED/seed-jobs
alias paas-libs=$_PAAS_SHARED/pipeline-shared-libs

# CC
alias cc-local=$_CC/hydra-local


# SERVERS
alias demcapdev="ssh dxaa2cloenode02"
alias demcapprd1="ssh pxaa2cloudera04.argosretailgroup.com"
alias demcapprd2="ssh pxaa2cloudera05.argosretailgroup.com"


# Git Pull all the repos
alias pull_all="find $_ARGOS -name .git -type d -execdir git pull -v ';'"
alias status_all="find . -name .git -type d -print -execdir sh -c '(git status -s && echo )' \;"