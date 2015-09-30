#!/bin/bash

SED="sed"
MARKDOWN="markdown"
MD_FILE="resume.md"
CONTENT_FILE="resume-content.html"
TEMPLATE_FILE="resume-template.html"
RESUME_FILE="resume.html"

$MARKDOWN $MD_FILE > $CONTENT_FILE
$SED -e "/{{ content }}/{r $CONTENT_FILE" -e "d}" $TEMPLATE_FILE > $RESUME_FILE