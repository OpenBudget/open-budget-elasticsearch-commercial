#!/bin/bash
docker build . -t budgetkey/open-budget-elasticsearch-commercial --cache-from budgetkey/open-budget-elasticsearch-commercial
docker push budgetkey/open-budget-elasticsearch-commercial
