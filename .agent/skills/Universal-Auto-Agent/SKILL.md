---
name: Universal Auto Application Bot
description: A universally applicable Autonomous Agent Loop
---

# Universal Auto Application Bot

This skill allows you to deploy an autonomous agent loop into any project.
The agent loop consists of a Python script that continuously executes tasks from a JSON file, maintaining context and state.

## Resources
The resources are located in `./resources/`.
- `run_automation.py`: The main loop script.
- `state/tasks.json`: The task list.
- `context/rules.md`: The system prompt/rules.
- `context/objective.md`: The project objective.

## How to use
Run the workflow `/auto` to scaffold these files into your current workspace.
Then, edit `context/objective.md` and run `python run_automation.py`.
