show_session_centre() {
  local index=$1
  local icon=$(get_tmux_option "@catppuccin_session_centre_icon" "")
  local color=$(get_tmux_option "@catppuccin_session_centre_color" "#{?client_prefix,$thm_red,$thm_orange}")
  local text=$(get_tmux_option "@catppuccin_session_centre_text" "#S")

  local left_sep="◢"
  local right_sep="◤"

  local show_left_sep="#[fg=$color,bg=$thm_bg,nobold,nounderscore,noitalics]${left_sep}"
  local show_icon="#[fg=$thm_bg,bg=$color,nobold,nounderscore,noitalics]${icon} "
  local show_text="#[fg=$thm_bg,bg=$color]${text}"
  local show_right_sep="#[fg=$color,bg=$thm_bg,nobold,nounderscore,noitalics]${right_sep}"

  echo "$show_left_sep$show_icon$show_text$show_right_sep"
}
