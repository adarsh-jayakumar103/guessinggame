echo "WELCOME TO GUESSING GAME"
function nof {
echo "Guess the number of files in this directory:"
read guess
files=$(ls -1 | wc -l)
}
nof
while [[ $guess -ne $files ]]
do
if [[ $guess -lt $files ]]
then 
echo "Its less"
else
echo "Its high"
fi
nof
done

echo "Congratulations!!! Its the right answer"
echo "--" && ls -1
