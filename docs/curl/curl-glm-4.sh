curl -X POST \
        -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiIsInNpZ25fdHlwZSI6IlNJR04ifQ.eyJhcGlfa2V5IjoiZTk2NDI3ODVhMWYyNGNkMmFlNzYxODliN2QzZTIwY2MiLCJleHAiOjE3NDg5OTI4Mjc1NzEsInRpbWVzdGFtcCI6MTc0ODk5MTAyNzU3Nn0.Cua_B8w3mRjC4RcCPpdAGVETlL4TlbEAclktcdUURH8" \
        -H "Content-Type: application/json" \
        -H "User-Agent: Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)" \
        -d '{
          "model":"glm-4",
          "stream": "true",
          "messages": [
              {
                  "role": "user",
                  "content": "1+1"
              }
          ]
        }' \
  https://open.bigmodel.cn/api/paas/v4/chat/completions