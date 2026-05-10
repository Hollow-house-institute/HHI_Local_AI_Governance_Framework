from flask import Flask, request, jsonify
from datetime import datetime
import json, os

app = Flask(__name__)

DRIFT_SCORE = 0

def log_event(event):
    os.makedirs("runtime/telemetry", exist_ok=True)
    with open("runtime/telemetry/governance_events.jsonl","a") as f:
        f.write(json.dumps(event) + "\n")

@app.route("/governance", methods=["POST"])
def governance():
    global DRIFT_SCORE

    data = request.json
    prompt = data.get("prompt","")

    risk = "LOW"

    if any(x in prompt.lower() for x in ["bypass","override","disable","ignore safety"]):
        risk = "HIGH"
        DRIFT_SCORE += 25
    else:
        DRIFT_SCORE += 5

    stop_authority = DRIFT_SCORE >= 75

    event = {
        "timestamp": datetime.utcnow().isoformat() + "Z",
        "prompt": prompt,
        "risk": risk,
        "behavioral_drift_score": DRIFT_SCORE,
        "decision_boundary": "ENFORCED",
        "stop_authority": stop_authority
    }

    log_event(event)

    return jsonify(event)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8010)
