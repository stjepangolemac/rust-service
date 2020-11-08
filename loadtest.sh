#!/bin/sh

SERVICE_URL=$(minikube service --url example-chart)

CALC=1\/
FORMULA=$CALC${RPS:-1}
DELAY=$(bc -l <<< $FORMULA)
ADDED_ZERO=$(sed -e 's/^\./0./' -e 's/^-\./-0./' <<< $DELAY)

while curl $SERVICE_URL; do sleep $ADDED_ZERO; done;
