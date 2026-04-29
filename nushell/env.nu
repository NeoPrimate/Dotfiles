$env.PATH = (
    $env.PATH 
    | prepend '/opt/homebrew/bin'
    | append $"($env.HOME)/.local/bin"
    | uniq
)

$env.PATH = ($env.PATH | append $"($env.HOME)/.cargo/bin")

$env.ENABLE_CLAUDEAI_MCP_SERVERS = "false"
