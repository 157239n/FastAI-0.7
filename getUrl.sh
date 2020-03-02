#!/bin/bash

echo "http://localhost:5000/$(docker exec -it fastai_old jupyter notebook list | grep http | cut -b 21-76)"
