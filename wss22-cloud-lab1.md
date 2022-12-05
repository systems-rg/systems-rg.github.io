```py
import pathlib
from multiprocessing import Pool


def word_count_map(file):
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