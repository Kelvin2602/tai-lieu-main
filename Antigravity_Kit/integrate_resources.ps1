
$MCP_ROOT = "D:\tai-lieu-main\MCP"
$KIT_ROOT = "D:\tai-lieu-main\Antigravity_Kit"

# 1. Integrate Skills from everything-claude-code
$SourceSkills = "$MCP_ROOT\everything-claude-code\skills"
$DestSkills = "$KIT_ROOT\Skills\Everything_Claude_Skills"
if (!(Test-Path $DestSkills)) { New-Item -ItemType Directory -Force -Path $DestSkills | Out-Null }
Copy-Item -Path "$SourceSkills\*" -Destination $DestSkills -Recurse -Force
Write-Host "✅ Copied everything-claude-code skills to $DestSkills"

# 2. Integrate Agents from everything-claude-code
$SourceAgents = "$MCP_ROOT\everything-claude-code\agents"
$DestAgents = "$KIT_ROOT\Agents"
if (!(Test-Path $DestAgents)) { New-Item -ItemType Directory -Force -Path $DestAgents | Out-Null }
Copy-Item -Path "$SourceAgents\*" -Destination $DestAgents -Recurse -Force
Write-Host "✅ Copied everything-claude-code agents to $DestAgents"

# 3. Integrate Workflows from ultimate-n8n-ai-workflows (Only structure or key files to avoid huge copy if not needed, but user asked for ALL)
# N8N workflows are huge, so let's copy the 'workflows' folder specifically or just link it. User wants integration.
# Let's copy the main workflows folder.
$SourceWorkflows = "$MCP_ROOT\ultimate-n8n-ai-workflows\workflows"
$DestWorkflows = "$KIT_ROOT\Workflows\N8N_Workflows"
if (!(Test-Path $DestWorkflows)) { New-Item -ItemType Directory -Force -Path $DestWorkflows | Out-Null }
# Copying might take time if huge, but let's do it as requested
Copy-Item -Path "$SourceWorkflows\*" -Destination $DestWorkflows -Recurse -Force
Write-Host "✅ Copied N8N workflows to $DestWorkflows"

# 4. Consolidate MCP Config
# We will use the config from mcp-servers-local as base
$SourceMCPConfig = "$MCP_ROOT\mcp-servers-local\mcp_config.json"
$DestMCPConfig = "$KIT_ROOT\mcp_config.json"
Copy-Item -Path $SourceMCPConfig -Destination $DestMCPConfig -Force
Write-Host "✅ Copied base MCP config to $DestMCPConfig"

Write-Host "🎉 All resources integrated into Antigravity_Kit!"
