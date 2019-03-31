ERL_STDLIB="/Users/gia/Documents/Apps/erlang_otp/17.5/lib/stdlib-2.4/"
EBANK="/Users/gia/Documents/erl_ebank/ebank"
REPO="/Users/gia/Documents/erl_ebank/"

# Save the *.erl and *.hrl files
find $ERL_STDLIB -regex ".*[he]rl"  > ctags.files
find $EBANK -regex ".*[he]rl" >> ctags >> ctags.files

# Generate the tags
ctags -L ctags.files -f tags
