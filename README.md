##caffe自动安装(盆友们先star再fork好吗~_~)
### 安装普通依赖项, 编译cpu-only caffe:
* 使用`sh install-caffe-all.sh`来安装caffe需要的c++库以及python包,还将会在home目录下载caffe源代码并编译cpu-only版caffe;
* 使用`sh install-caffe-lite.sh`可以实现简洁安装, 仅安装编译caffe C++接口所必需的依赖项, 不安装支持Python接口的众多Python package. 

至此,caffe已经安装完成,但没有GPU支持.

如果你的计算机安装有支持`cuda`的显卡, 请继续按一下步骤安装`cuda`

### 安装cuda, 编译caffe_with_gpu
* 根据你的系统版本 [下载](https://developer.nvidia.com/cuda-downloads) cuda离线安装包,在"Architecture"这个选项中, **Intel x_64**或者**AMD x_64** CPU请选择`x_86_64`, IBM P8工作站请选择`ppc64le`, 最后install type选择`deb(local)`本地安装文件.
* 使用`cuda.sh xxx.deb`安装cuda, `xxx.deb`为上一步下载的安装包文件名.
* **进入`caffe`目录将`Makefile.config`文件中的`CPU_ONLY := 1`注释掉.**
* 使用`make`命令重新编译caffe.


___
强烈建议大家使用**pip** 管理Python package, 不要用ubuntu系统的`apt-get install`来安装python包.
### pip的一些常用命令:

1. `sudo -H pip install package-name`安装package, 例如`sudo -H pip install numpy`, 你甚至可以指定安装的版本:`sudo -H pip install numpy>=1.11.0`
2. `pip search package-name`查找某个Python package;
3. `sudo -H pip uninstall package-name`卸载;
4. `pip list` 列出已安装的package.

`install-caffe-all.sh`或`install-caffe-lite.sh`


___

<http://zhaok.xyz>
