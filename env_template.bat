@ECHO OFF
break>.env.example

FOR /f "delims==" %%G IN (.env) DO @ECHO %%G=YOUR_VALUE>>.env.example

ECHO ENV template created!