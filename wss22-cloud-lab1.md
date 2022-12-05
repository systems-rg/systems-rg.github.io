---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Cloud labs for WSS, 2022
layout: page
toc: false
---


```py
import pathlib
from multiprocessing import Pool


def word_count_map(file):
	wc = {}
	with open(file, mode='r', newline='\r') as f:
		...
		wc[word] = wc[word] + 1
	return wc

if __name__ == '__main__':
    wc_final = {}
    with Pool(8) as mexecutor:
        items = [f for f in pathlib.Path('data/').glob("*.txt")]
        for wc in mexecutor.imap_unordered(word_count_map, items):
            for w in wc:
                wc_final[w] = wc_final.get(w, 0) + wc[w]
```