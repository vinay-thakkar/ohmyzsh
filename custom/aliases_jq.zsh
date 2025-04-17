# cat ./src/main/resources/avro/streaming.royalties.identified-royalties.avsc | scale
# alias scale="jq '.fields[]|{name, type}|select(.type|objects)|select(.type.logicalType==\"decimal\")|{name, scale: .type.scale}'"
alias scale="jq '.fields[]|flatten|{name: .[0], type: .[-1]}|select(.type|objects)|{name, type: .type.logicalType, precision: .type.precision, scale: .type.scale}|select(.type == \"decimal\")'"
alias  base="jq '.fields[]|flatten|{name: .[0], type: .[-1]}|select(.type|objects)|{name, type: .type.logicalType, precision: .type.precision, scale: .type.scale}'"
alias   csv="jq -s '(map(keys)|add|unique|sort) as \$cols|map(. as \$row|\$cols|map(\$row[.]|tostring)) as \$rows|\$cols,\$rows[]| @csv'"

# aws lambda list-functions | rcalc_lambda
alias rcalc_lambda="jq '.Functions[]|select(.FunctionName|contains(\"rcalc\"))|{FunctionName,Handler,FunctionArn}'"

