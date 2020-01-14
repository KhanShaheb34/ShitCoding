import re, json
from functools import partial

# Fixing mojibake escapes
fix_mojibake_escapes = partial(
     re.compile(rb'\\u00([\da-f]{2})').sub,
     lambda m: bytes.fromhex(m.group(1).decode()))

# Reading the file as binary data
with open('message_1.json', 'rb') as binary_data:
    repaired = fix_mojibake_escapes(binary_data.read())
data = json.loads(repaired.decode('utf8'))
messages = data['messages']

# Writing only the messages to a file
file = open('clean.txt', 'w+', encoding='utf-8');
for message in messages:
    file.write(message['sender_name'])
    file.write('\n\t')
    if 'content' in message:
        file.write(message['content'])
    file.write('\n')
file.close()
