show_memory() {
  local index=$1
  local icon=$(get_tmux_option "@catppuccin_memory_icon" "󰍛")
  local color=$(get_tmux_option "@catppuccin_memory_color" "$thm_green")
  local text=$(get_tmux_option "@catppuccin_memory_text" "#{ram_percentage}")

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
