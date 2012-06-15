use Config::Identity::GitHub;
 
# 1. Find either $HOME/.github-identity or $HOME/.github
# 2. Decrypt the found file (if necessary) read, and parse it
# 3. Throw an exception unless %identity has 'login' and 'token' defined
 
my %identity = Config::Identity::GitHub->load;
print "login: $identity{login} token: $identity{token}\n";
