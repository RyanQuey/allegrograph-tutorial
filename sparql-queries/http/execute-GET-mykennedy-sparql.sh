BASEDIR=$(dirname "$0")

# first arg will be path to sparql file
SPARQL_FILE_PATH=${1:-$BASEDIR/../sparql/harvard-alums.rq}

# uri encode the sparql query
QUERY=$(cat $SPARQL_FILE_PATH | jq -sRr @uri)

# outputs as nice human readable format
curl \
    -H "Accept: text/table" \
    --user admin:pass \
    http://localhost:10035/repositories/mykennedy?query=$QUERY

# alternatively, get as json
# uses jq at the end to pretty print results, first drilling down into .results.bindings and breaking out the array, then displaying only values of the x (subject) and p (predicate)
#curl \
    #-H "Accept: application/sparql-results+json" \
    #--user admin:pass \
    #http://localhost:10035/repositories/mykennedy?query=$QUERY \
    #| jq .results.bindings[] 

# some other possible formats: application/json, application/n-quads, application/n-triples, application/rdf+xml, application/trig, application/trix, application/x-direct-upis, application/x-turtle, text/integer, text/nquads, text/plain, text/rdf+n3, text/table, text/turtle, text/x-nquads
