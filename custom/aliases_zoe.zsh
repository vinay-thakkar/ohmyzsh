alias -g n5="--max-records 5"
alias -g n25="--max-records 25"
alias -g 1d="--from P1D"
alias -g 1h="--from PT1H"

alias -g here="--from-file ./data.json"
alias -g console="--from-stdin"

alias zoe="zoe --silent"
alias zoec="zoe topics consume"
alias zoep="zoe topics produce --topic"

alias zoea="zoe -c avro"
alias zoeac="zoea topics consume"
alias zoeap="zoea topics produce --topic"

alias toe="zoe -o table"
alias toec="toe topics consume --verbose"
alias toep="toe topics produce --topic"

alias toea="toe -c avro"
alias toeac="toea topics consume --verbose"
alias toeap="toea topics produce --topic"


