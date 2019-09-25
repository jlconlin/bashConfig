# Function to convert a man page to pdf
function man2pdf(){ 
    man -t ${1:?Specify man as arg} | open -f -a preview; 
}
