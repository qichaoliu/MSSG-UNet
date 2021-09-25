# Multilevel Superpixel Structured Graph U-Nets for Hyperspectral Image Classification
*******

Abstract: Limited by the shape-fixed kernels, convolutional neural networks (CNNs) are usually difficult to model difform land covers in hyperspectral images (HSIs), leading to inadequate land use. Recently, benefiting from the ability to conduct shape-adaptive convolutions and model complex patterns in graph-structured data, graph convolutional networks (GCNs) have been applied to HSI classification. However, due to the massive computation in GCNs, HSI is usually pretreated into a graph based on a specific superpixel segmentation, which limits the modeling of spatial topologies to the same scale. To break this limitation, we propose a multi-level superpixel structured graph U-Net (MSSGU) to learn multi-scale features on multi-level graphs. Specifically, we construct several hierarchical segmentations from fine to coarse by progressively merging adjacent superpixels and then convert them into multi-level graphs. Meanwhile, based on the merging relations between hierarchical superpixels, we establish the pooling and unpooling functions to transfer features from one graph to another, thereby enabling different-level graphs to collaborate in a single network. Different from concatenating different-scale features straightforwardly in the feature fusion stage, MSSGU fuses them in a coarse-to-fine progressive manner, which can generate subtler fusion features adaptive to the pixel-wise classification task. Moreover, we use a CNN instead of GCN to extract and fuse the pixel-level features, which greatly reduces the computation. Such the hybrid U-Net can exploit features of HSIs from a multi-scale hierarchical perspective, and its performance has been proved competitive with other deep-learning-based methods by extensive experiments on three benchmark data sets.


Early Access:
https://ieeexplore.ieee.org/document/9547387

Cite This:

Q. Liu, L. Xiao, J. Yang and Z. Wei, "Multilevel Superpixel Structured Graph U-Nets for Hyperspectral Image Classification," in IEEE Transactions on Geoscience and Remote Sensing, doi: 10.1109/TGRS.2021.3112586.

@ARTICLE{9547387,
  author={Liu, Qichao and Xiao, Liang and Yang, Jingxiang and Wei, Zhihui},
  journal={IEEE Transactions on Geoscience and Remote Sensing}, 
  title={Multilevel Superpixel Structured Graph U-Nets for Hyperspectral Image Classification}, 
  year={2021},
  volume={},
  number={},
  pages={1-15},
  doi={10.1109/TGRS.2021.3112586}}
