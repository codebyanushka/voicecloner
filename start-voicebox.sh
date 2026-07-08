#!/bin/bash
# start-voicebox.sh
# One-command launcher for the Voicebox voice-cloning app (backend + web frontend)
# Usage: ./start-voicebox.sh   (run from anywhere, paths are absolute)

VOICEBOX_DIR="$HOME/voicebox"

echo "Starting Voicebox backend (port 17493)..."
cd "$VOICEBOX_DIR" || { echo "Voicebox directory not found at $VOICEBOX_DIR"; exit 1; }
source backend/venv/bin/activate
uvicorn backend.main:app --reload --port 17493 &
BACKEND_PID=$!

echo "Starting Voicebox web frontend (port 5173)..."
cd "$VOICEBOX_DIR/web" || { echo "web/ directory not found"; exit 1; }
bun run dev &
FRONTEND_PID=$!

echo ""
echo "Voicebox is starting up."
echo "Backend PID: $BACKEND_PID | Frontend PID: $FRONTEND_PID"
echo "Once ready, open: http://localhost:5173"
echo ""
echo "Press Ctrl+C to stop both servers."

# Wait for either process to exit, and clean up the other on Ctrl+C
trap "echo 'Stopping...'; kill $BACKEND_PID $FRONTEND_PID 2>/dev/null; exit" INT TERM
wait
