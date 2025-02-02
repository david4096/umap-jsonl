# UMAP-JSONL

![output](https://github.com/user-attachments/assets/942e4e7b-0382-42bc-8fa3-1fca1b007426)


**UMAP-JSONL** is a command-line tool for generating UMAP plots and KMeans clustering from JSONL data files. This tool leverages UMAP for dimensionality reduction and KMeans for clustering, producing customizable visualizations in PNG format.

## Features

- **UMAP Visualization**: Create 2D UMAP plots from JSONL data.
- **KMeans Clustering**: Apply KMeans clustering with a configurable number of clusters.
- **Customizable Plot Size**: Set the figure size for your output plot.
- **Flexible Command-Line Interface**: Easily configure parameters and specify input/output files.

## Installation

You can install **UMAP-JSONL** using `pip`:

```sh
pip install umap-jsonl
```

Usage

To generate a UMAP plot with KMeans clustering, use the following command:

```sh

umap-jsonl input_file <input_file> --output_file <output_file> --num_results <num_results> --n_neighbors <n_neighbors> --min_dist <min_dist> --n_components <n_components> --n_clusters <n_clusters> --plot_size <width> <height>

Command-Line Arguments

    input_file: Path to the JSONL input file.
    --output_file: Path to the output PNG file (default: output.png).
    --n_neighbors: Number of neighbors for UMAP (default: 15).
    --min_dist: Minimum distance for UMAP (default: 0.1).
    --n_components: Number of components for UMAP (default: 2).
    --n_clusters: Number of clusters for KMeans (default: 3).
    --plot_size: Size of the output plot in inches (default: 8,6). Provide width and height separated by a comma.

```

Basic usage, provide a .jsonl file as a positional argument

```sh

umap-jsonl tests/hf_datasets_100000.jsonl

```

Advanced usage, set details of umap algorithm, change plot size, etc.

```sh

umap-jsonl --input_file data.jsonl --output_file my_plot.png --num_results 10 --n_neighbors 15 --min_dist 0.2 --n_components 2 --n_clusters 4 --plot_size 10 8

```

Development

To contribute to UMAP-JSONL, clone the repository and install the development dependencies:

```sh

git clone https://github.com/david4096/umap-jsonl.git
cd umap-jsonl
pip install -e .

```

Running Tests

To run tests, use:

```sh

python -m unittest discover -s tests

```

License

This project is licensed under the MIT License - see the LICENSE file for details.
Contact

For any questions or issues, please contact David Steinberg at your.email@example.com.
