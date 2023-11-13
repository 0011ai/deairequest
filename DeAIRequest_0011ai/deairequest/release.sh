#!/bin/bash
rm -rf dist/*
python3 -m build
git add .
git commit -m $1
git push origin main
twine upload -r testpypi dist/*
twine upload dist/*

