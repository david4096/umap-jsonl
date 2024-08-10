cwlVersion: v1.2
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: "david4096/umap-jsonl:0.1.0"
inputs:
  jsonl_file:
    type: File
    inputBinding:
      position: 1
  n_neighbors:
    type: int
    default: 15
    inputBinding:
      prefix: --n_neighbors
  min_dist:
    type: float
    default: 0.1
    inputBinding:
      prefix: --min_dist
  n_clusters:
    type: int
    default: 3
    inputBinding:
      prefix: --n_clusters
  plot_size:
    type: string
    default: "8,6"
    inputBinding:
      prefix: --plot_size

outputs:
  output_plot:
    type: File
    outputBinding:
      glob: "output.png"

baseCommand: ["/bin/sh", "-c"]
arguments:
  - >
    umap-jsonl $(inputs.jsonl_file.path) \
     --n_neighbors $(inputs.n_neighbors) \
     --min_dist $(inputs.min_dist) \
     --n_clusters $(inputs.n_clusters) \
     --output_file output.png \
     --plot_size $(inputs.plot_size)