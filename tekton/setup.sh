#!/bin/bash

oc new-project pipeline-test
oc project pipeline-test
oc create serviceaccount pipeline
oc adm policy add-scc-to-user privileged -z pipeline
oc adm policy add-role-to-user edit -z pipeline
