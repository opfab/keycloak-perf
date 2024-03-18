
#!/bin/sh
num_times=$1
start_time=$(date +%s)
for ((i=1; i<=$num_times; i++))
do
    curl -s -X POST -H "Authorization:Basic b3BmYWItY2xpZW50Om9wZmFiLWtleWNsb2FrLXNlY3JldA==" -d "username=admin&password=test&grant_type=password&client_id=opfab-client" localhost:89/auth/realms/dev/protocol/openid-connect/token >> /dev/null
done
end_time=$(date +%s)
echo "Number of token requests: $num_times"
execution_time=$((end_time - start_time))
echo "Execution time: $execution_time seconds"



