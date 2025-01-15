# username password
curl --location 'http://localhost:9090/realms/super-realm/protocol/openid-connect/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'grant_type=password' \
--data-urlencode 'client_id=keycloak-client' \
--data-urlencode 'username=yassirjr' \
--data-urlencode 'password=1234' \
--data-urlencode 'client_secret=jR7hJ494U0rC9w15UA75FQDoa0D2K6Hm'


# refresh token
curl --location 'http://localhost:9090/realms/super-realm/protocol/openid-connect/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'grant_type=refresh_token' \
--data-urlencode 'client_id=keycloak-client' \
--data-urlencode 'refresh_token=eyJhbGciOiJIUzUxMiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJkMjk1ZTJiOS02YTM5LTRhNDgtOWVkYy1kOTFhYTVmYWI4OTQifQ.eyJleHAiOjE3MzY5NjE2MjYsImlhdCI6MTczNjk1OTgyNiwianRpIjoiY2EyMzAzZjgtNTE3OC00ZDFkLWE0NTItZjQ3MTQxZWU5MDcxIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo5MDkwL3JlYWxtcy9zdXBlci1yZWFsbSIsImF1ZCI6Imh0dHA6Ly9sb2NhbGhvc3Q6OTA5MC9yZWFsbXMvc3VwZXItcmVhbG0iLCJzdWIiOiI2ZWNlYWI4MS1jZmFmLTQyZDMtOWY0Zi00NmEzMWM3ZDUyYWEiLCJ0eXAiOiJSZWZyZXNoIiwiYXpwIjoia2V5Y2xvYWstY2xpZW50Iiwic2lkIjoiYjUyODliYTItY2ZjNC00NTRjLWJlMTAtOWVlMDNiNThhZDE2Iiwic2NvcGUiOiJlbWFpbCB3ZWItb3JpZ2lucyBhY3Igcm9sZXMgcHJvZmlsZSBiYXNpYyJ9.2oI6LZ-IjRbktOQ9D9cLuWTRvZL0CgiqPDBCy_nOIrHynzphE08zOZaxXnzftWab5sFGB-5iP3evmymq3yGAJw'

# client credentials
curl --location 'http://localhost:9090/realms/super-realm/protocol/openid-connect/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'grant_type=client_credentials' \
--data-urlencode 'client_id=keycloak-client' \
--data-urlencode 'client_secret=jR7hJ494U0rC9w15UA75FQDoa0D2K6Hm'

