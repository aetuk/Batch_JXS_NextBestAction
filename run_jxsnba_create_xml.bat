set "outputxml=%1.xml" 
echo ^<root^> >> %outputxml%
for /F "tokens=*" %%A in ('jq-win64.exe -c ".[]" %1') do curl -H "Content-Type: application/json" -X POST http://132.145.65.68:8080/bre/postdata -d %%A >> %outputxml%
echo ^<^/root^> >> %outputxml%