prompt() {
  local question=$1
  local default=$2
  local var=$3

  echo "$question [$default]:"
  read answer
  if [[ -z "$answer" ]]; then
    if [[ -z "$default" ]]; then
      echo "must set value"
      exit 1
    fi
    eval "$var=$default"
  else
    eval "$var=$answer"
  fi
}
