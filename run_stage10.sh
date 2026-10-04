#!/usr/bin/env bash
cd /home/l1zle/AutoResearchClaw
./.venv/bin/researchclaw run \
  -c /home/l1zle/AutoResearchClaw/artifacts/rc-20260901-030923-499c13/config.yaml \
  --output /home/l1zle/AutoResearchClaw/artifacts/rc-20260901-030923-499c13 \
  --from-stage CODE_GENERATION --to-stage CODE_GENERATION \
  --auto-approve --skip-preflight \
  --topic "$(cat /tmp/ercot_topic.txt)" \
  >> /tmp/stage10_run.log 2>&1
echo "EXIT_CODE=$?" >> /tmp/stage10_run.log
