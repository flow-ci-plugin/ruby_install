# ************************************************************
#
# This step will install your project dependencies
#
#   Variables used:
#
#   Outputs:
#
# ************************************************************

cd $FLOW_CURRENT_PROJECT_PATH

if [[ ! -f ./Gemfile ]]; then
  echo -e "${ANSI_RED}No such file ./Gemfile!${ANSI_RESET}"
  flow_terminate 2
fi

flow_cmd "bundle install --jobs=3 --retry=3" --echo --retry --assert
