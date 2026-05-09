from flask import Flask, jsonify
import subprocess

app = Flask(__name__)

@app.route("/governance", methods=["GET"])
def governance_status():
    status = subprocess.check_output(
        ["bash", "runtime/telemetry/governance_status.sh"]
    ).decode()

    return jsonify({
        "governance_runtime": status
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
