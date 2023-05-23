# declutter
Declutters your Ruby hashes and arrays by removing empty arrays and hashes.
Also has options for removing nils, redundancies and falses.

In this simple example, we create a hash structure that contains an empty array:

[import]: {"path": "functional/arrays/direct.rb"}

By running the hash through `Declutter.process`, we remove the empty array. If
an array contains only an empty array, then the whole array structure is
removed:

[import]: {"path": "functional/arrays/nested.rb", "range":"declutter"}

The same concept goes for empty hashes:

[import]: {"path": "functional/hashes/nested.rb", "range":"declutter"}

## Object oriented approach

To refine what elements are deleted, instantiate `Declutter` to set what type of
elements are deleted.

### nil

To delete nils, set `declutter.delete_nils` to true:

[import]: {"path": "object/nil/nil.rb", "range":"declutter"}

If deleting the nil values results in an empty array, then the array is deleted.

[import]: {"path": "object/nil/nil-to-empty.rb", "range":"declutter"}

### redundancies

To delete redundant elements in arrays, set `declutter.delete_redundancies` to
true.

[import]: {"path": "object/redundant.rb", "range":"declutter"}

### false

To delete false values, set `declutter.delete_falses` to true:

[import]: {"path": "object/falses.rb", "range":"declutter"}

### keep empty hashes and/or arrays

To keep empty hashes, set `declutter.delete_empty_hashes` to false:

[import]: {"path": "object/keep-hashes.rb", "range":"declutter"}

To keep empty arrays, set `declutter.delete_empty_arrays` to false:

[import]: {"path": "object/keep-arrays.rb", "range":"declutter"}

## History

| date         | version | notes           |
|--------------|---------|-----------------|
| May 23, 2023 | 1.0     | Initial upload. |