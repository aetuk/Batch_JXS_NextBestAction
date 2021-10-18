set inputcsv=%1
set outputcsv=%2
set "outputjson=%inputcsv%.json" 
set "outputjson2=%inputcsv%.json.xml" 
call run_create_jsonfile_from_csv.bat %inputcsv% %outputjson%
call run_jxsnba_create_xml.bat %outputjson%  
call run_create_csvfile_from_xml.bat %outputjson2% %outputcsv%  
del %outputjson% 
del %outputjson2%