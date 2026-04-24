wayfreeze & FREEZE_PID=$!;
sleep 0.1;
grim -g "$(slurp)" - | wl-copy;
kill $FREEZE_PID;
