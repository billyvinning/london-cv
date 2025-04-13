# london-cv

## Usage

Edit the files `cv.tex`, `coverletter.tex`.

## Build

The document is compiled with `xelatex`. To build the document, execute the following at the root of the package directory:

```
make clean && make
```

The output documents, `cv.pdf` and `coverletter.pdf`, will appear at the root of the package directtory.

## Contributing

After making changes to the base package, execute the following to build and update the example documents:

```
make clean && make && make update-examples
```

## License

This project is subject to the MIT license. Please refer to `LICENSE.txt`.
