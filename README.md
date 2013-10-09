GMon Scripts
============
These scripts are used to generate metrics for
[GMon](https://github.com/gwoo/gmon).

Usage
-----
GMon receives a scripts path or looks in the current working directory for
a path called `scripts`. Using symlinks we can share scripts between
installations.

Creating Metrics
----------------
A metric is a script in any language that outputs in a standardized format
that GMon can understand. The format is a simple space seperated list of values.

	<name>|<value>|<message>|<tag1> <tag2> <tagN>

You can have any number of tags after the message. If you do not want a
message you can use two spaces. Both the message and tags are optional.