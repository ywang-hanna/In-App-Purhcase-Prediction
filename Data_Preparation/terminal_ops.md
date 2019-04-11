# split `attributes.csv` into pieces

`split -l 19000000 attributes_new.csv segment`

# remove lines with trouble

`sed -n '/\\"/!p' segmentaa > attr1.csv`

# remove lines with `attribute_value` of strange strings

`sed -n '/_/!p' attr1.csv > attribute1.csv`

# add header to `attribute1.csv`

`{ echo "session_id, attribute, attribute_value, user_id_hash"; cat attribute1.csv; } > attributes1.csv`