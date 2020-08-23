# TEST C FILE
./Colleen > tmp_Colleen && diff tmp_Colleen Colleen.c

# TEST JS FILE
node Colleen.js > tmp_Colleen && diff tmp_Colleen Colleen.js

exit 0
