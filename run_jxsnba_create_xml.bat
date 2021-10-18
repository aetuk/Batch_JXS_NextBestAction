set "outputxml=%1.xml" 
set nbaurl=http://132.145.65.68:8080/bre/postdata
echo ^<root^> >> %outputxml%
for /F "tokens=*" %%A in ('jq-win64.exe -c ".[]" %1') do curl -H "Content-Type: application/json" -X POST %nbaurl% -d %%A >> %outputxml%
echo ^<^/root^> >> %outputxml%