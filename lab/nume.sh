#!/bin/bash
echo "Introduceti numele fisierului cautat: "
read filename
echo "Fisierele gasite: "
find . -type f -name "$filename"