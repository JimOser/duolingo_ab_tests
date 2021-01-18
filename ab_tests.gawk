#!/opt/local/bin/gawk -f
# Usage:
# Using your web browser login to your duolingo account at www.duolingo.com
# Download the json file from www.duolingo.com/users/your_user_name
# ./ab_tests.gawk users_JimOser10/*.json
BEGIN {
 RS="},"
}
FNR == 1{
  n = 0
  print FILENAME
}
/\"treated\"\:true.*"eligible\"\:true/ {
  n = n + 1
  printf ("%3d %s \n", n, $1 ) 
}
