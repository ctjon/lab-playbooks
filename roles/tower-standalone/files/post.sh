curl --insecure --user ctjon:pass1234 -H "Content-Type: application/json" -X POST -d '{"username":"ctjon","password":"pass1234"}' https://tower.mbp.tjon.net/api-token-auth/
echo done
curl --insecure --user ctjon:pass1234 -H "Content-Type: application/json" -X POST -d '{"username":"ctjon","password":"pass1234"}' https://tower.mbp.tjon.net/api/v1/job_templates/10/
echo done2
