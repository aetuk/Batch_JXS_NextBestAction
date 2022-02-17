@echo off

if [%1]==[] goto usage
if [%2]==[] goto usage
@echo Executing run_create_jsonfile_from_csv

set inputcsv=%1
set outputcsv=%2
set "outputjson=%inputcsv%.json" 
set "outputjson2=%inputcsv%.json.xml" 
call run_create_jsonfile_from_csv.bat %inputcsv% %outputjson%

@echo Executing run_jxsnba_create_xml

call run_jxsnba_create_xml.bat %outputjson%  

@echo Executing run_create_csvfile_from_xml

call run_create_csvfile_from_xml.bat %outputjson2% %outputcsv%  
del %outputjson% 
del %outputjson2%



@echo Done.
goto :eof
:usage
@echo Usage: %0 input_csv_file output_csv_file
exit /B 1


