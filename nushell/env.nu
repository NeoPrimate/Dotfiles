$env.PATH = (
    $env.PATH 
    | split-row (char list_sep)
    | prepend '/opt/homebrew/bin'
    | append $"($env.HOME)/.local/bin"
    | uniq
)

$env.ENABLE_CLAUDEAI_MCP_SERVERS = "false"
