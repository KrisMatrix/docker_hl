#!/usr/bin/perl
use warnings;
use strict;

my @container_ids = `docker ps -aq`; # container ids

foreach my $container_id (@container_ids) {
  `docker stop $container_id`;
  `docker rm $container_id`;
}

print $#container_ids+1," containers deleted\n";

my @image_ids = `docker images -q`;

foreach my $image (@image_ids) {
  `docker rmi -f $image`;
}

print $#image_ids+1," images deleted\n";

print "Completed\n";
