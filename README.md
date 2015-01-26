UIButtonDemo
============

简单设置uibutton 的imageview离button左边的距离
>[btn setImageLeft:24];

设置文字离button左边的距离
>[btn setTitleLeft:10];

设置文字居中
>[btn setTitleCenter];

设置图片在文字右边（self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft）
>[btn setimageToTitleRight];

设置图片和文字都居中，图片在上,padding为图片跟文字的间距
>[btn setImageAndTitleCenterImageTopWithpadding:0];

设置图片和文字都居中，文字在上,padding为图片跟文字的间距
>[btn setImageAndTitleCenterTitleTopWithpadding:0];
