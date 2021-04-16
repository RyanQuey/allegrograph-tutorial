BASEDIR=$(dirname "$0")

# first arg will be path to sparql file
SPARQL_FILE_PATH=${1:-$BASEDIR/../sparql/foaf-example/insert.rq}

# uri encode the sparql query
QUERY=$(cat $SPARQL_FILE_PATH | jq -sRr @uri)

# uses jq at the end to pretty print results, first drilling down into .results.bindings and breaking out the array, then displaying only values of the x (subject) and p (predicate)
curl -XPOST \
    -H "Accept: text/table" \
    --user admin:pass \
    http://localhost:10035/repositories/mykennedy?query=$QUERY
