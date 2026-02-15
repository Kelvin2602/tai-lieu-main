[CmdletBinding()]
param (
    [string]$TargetProject = (Get-Location)
)

$KitRoot = $PSScriptRoot
$AgentDir = Join-Path $TargetProject ".agent"

Write-Host "🚀 Starting Antigravity Integration for project: $TargetProject"

# Ensure .agent directory exists
if (!(Test-Path $AgentDir)) {
    New-Item -ItemType Directory -Force -Path $AgentDir | Out-Null
    Write-Host "Created .agent directory at $AgentDir"
}

# 1. Install Skills
$SkillsDir = Join-Path $AgentDir "skills"
if (!(Test-Path $SkillsDir)) { New-Item -ItemType Directory -Force -Path $SkillsDir | Out-Null }
Copy-Item -Path "$KitRoot\Skills\*" -Destination $SkillsDir -Recurse -Force
Write-Host "✅ Installed Skills (Core + Everything Claude Skills)."

# 2. Install Agents
$AgentsDir = Join-Path $AgentDir "agents"
if (!(Test-Path $AgentsDir)) { New-Item -ItemType Directory -Force -Path $AgentsDir | Out-Null }
Copy-Item -Path "$KitRoot\Agents\*" -Destination $AgentsDir -Recurse -Force
Write-Host "✅ Installed Specialized Agents."

# 3. Install MCP Config
# We install it to .agent/mcp_config.json which is a common convention, or root.
# Let's put it in the root of the project as mcp_config.json if it doesn't exist, 
# or inside .agent/mcp/ if we want to be cleaner. Let's stick to root for easier discovery by tools.
$DestMcpConfig = Join-Path $TargetProject "mcp_config.json"
if (Test-Path $DestMcpConfig) {
    Copy-Item -Path $DestMcpConfig -Destination "$DestMcpConfig.bak" -Force
    Write-Host "⚠️ Existing mcp_config.json backed up to $DestMcpConfig.bak"
}
Copy-Item -Path "$KitRoot\mcp_config.json" -Destination $DestMcpConfig -Force
Write-Host "✅ Installed MCP Configuration (mcp_config.json)."

# 4. Link Workflows
# Instead of copying 1000+ files to every project, we create a reference file.
$WorkflowsDir = Join-Path $AgentDir "workflows"
if (!(Test-Path $WorkflowsDir)) { New-Item -ItemType Directory -Force -Path $WorkflowsDir | Out-Null }

$WorkflowReadmeContent = @"
# Antigravity Global Workflows Reference

This project is integrated with the Antigravity Kit.
Access global N8N workflows at: $KitRoot\Workflows

To use a workflow:
1. Open the path above.
2. Find the JSON file you need.
3. Import it into your N8N instance.
"@
Set-Content -Path (Join-Path $WorkflowsDir "ANTIGRAVITY_WORKFLOWS_REF.md") -Value $WorkflowReadmeContent
Write-Host "✅ Linked Workflows Reference."

Write-Host "🎉 Antigravity Integration Complete! Your project is now supercharged."
