#!/bin/sh

sed -ie "/\.\. BEGIN_HTML/,/\.\. END_HTML/d" *.rst

