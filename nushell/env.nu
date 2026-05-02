$env.PATH = (
    $env.PATH 
    | prepend '/opt/homebrew/bin'
    | append [
        $"($env.HOME)/.local/bin"
        $"($env.HOME)/.cargo/bin"
        "/usr/local/bin" # The missing piece for Ollama
    ]
    | uniq
)

$env.ENABLE_CLAUDEAI_MCP_SERVERS = "false"
