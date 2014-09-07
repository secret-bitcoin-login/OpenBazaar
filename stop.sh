#!/bin/bash
for pid in `ps aux | grep "python.*tornadoloop.py" | grep -v grep |
  echo "Sending SIGTERM to ${pid}"
  kill ${pid}
  kill -9 ${pid}
done
