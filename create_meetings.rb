require 'rubygems'
require 'json'
require 'date'

file = File.read('./_data/meetings.json')

meetings = JSON.parse(file)

def post_body(meeting)

album = meeting["album_id"] == "" ? nil : "picasa_album_id: #{meeting["album_id"]}"
talk_ids = meeting["talks"].map {|m| m["id"]}.join(" ")
sponsor_ids = meeting["sponsors"].map {|m| m["id"]}.join(" ")
venue_id = meeting.dig("venue","id")


"---
layout: post
title:  '#{meeting["title"]}'
date:   #{meeting["date"]}
venue_id: #{venue_id}
talk_ids: #{talk_ids.to_s}
sponsor_ids: #{sponsor_ids.to_s}
#{album}
---

#{meeting["description"]}
"
end

meetings.each do |m|
  meeting = m["meeting"]
  File.write("./_encontros/#{meeting['slug']}.md", post_body(meeting))
end
