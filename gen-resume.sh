#!/bin/bash

SED="sed"
MARKDOWN="markdown"
MD_FILE="resume.md"
CONTENT_FILE="resume-content.html"
TEMPLATE_FILE="resume-template.html"
RESUME_FILE="resume.html"
PRINTABLE_TEMPLATE_FILE="resume-template-printable.html"
PRINTABLE_RESUME_FILE="resume-printable.html"

$MARKDOWN $MD_FILE > $CONTENT_FILE
$SED -e "/{{ content }}/{r $CONTENT_FILE" -e "d" -e "}" \
	$TEMPLATE_FILE > $RESUME_FILE
$SED -e "/{{ content }}/{r $CONTENT_FILE" -e "d" -e "}" \
	$PRINTABLE_TEMPLATE_FILE > $PRINTABLE_RESUME_FILE
