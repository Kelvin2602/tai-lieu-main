---
description: Deploy the Universal Auto-Loop Agent into the current workspace
---
This workflow deploys the Universal Auto-Loop Agent structure to your current directory.

1. Create the necessary directories:
// turbo
```bash
mkdir context
mkdir state
```

2. Copy the agent engine:
// turbo
```bash
copy ".agent/skills/Universal-Auto-Agent/resources/run_automation.py" "run_automation.py"
```

3. Copy the configuration files:
// turbo
```bash
copy ".agent/skills/Universal-Auto-Agent/resources/context/rules.md" "context/rules.md"
copy ".agent/skills/Universal-Auto-Agent/resources/context/objective.md" "context/objective.md"
copy ".agent/skills/Universal-Auto-Agent/resources/state/tasks.json" "state/tasks.json"
```

4. Final Instructions:
> **Deployment Complete!**
> 1. Edit `context/objective.md` to define your project goal.
> 2. List the steps in `state/tasks.json`.
> 3. Configure the model command in `run_automation.py` (default: 'claude').
> 4. Run: `python run_automation.py`
