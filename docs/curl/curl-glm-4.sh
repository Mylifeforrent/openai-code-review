curl -X POST \
        -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiIsInNpZ25fdHlwZSI6IlNJR04ifQ.eyJhcGlfa2V5IjoiZTk2NDI3ODVhMWYyNGNkMmFlNzYxODliN2QzZTIwY2MiLCJleHAiOjE3NTE2NzE1NTE1MjUsInRpbWVzdGFtcCI6MTc0OTA3OTU1MTUzMX0.A_yifnTsJBOc2eoa35PLturX5hCJ2vXlpYI1sY6ocd0" \
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