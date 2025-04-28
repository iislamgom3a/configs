# copy this to your .bashrc file in your home dir 
#-----------------------------------------------------------------
# compile cpp file & remove it's bin file "for clean dir" 
# take one arg "the name of c++ file"
cpp(){
    build.sh "$1" && echo "---------------------------------------------------------------------------------------------" 
    ./a.out	
    rm a.out 
}
# make dir with the name of the contest "first argument"
# make two txt files for inputs & outps (in.txt, out.txt)
# make a number of c++ files "second argument" 
contest(){
    mkdir -p "$1" && cd "$1" 
    touch in.txt 
    for ((i=0; i<$2; i++)); do
        file=$(printf "%s.cpp" "$(echo {a..z} | cut -d' ' -f$((i+1)))")
        touch "$file"
    done
} 
