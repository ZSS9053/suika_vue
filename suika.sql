SET NAMES UTF8;
DROP DATABASE IF EXISTS suika_vue;
CREATE DATABASE suika_vue CHARSET=UTF8;
USE suika_vue;
/**用户表**/
CREATE TABLE wm_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(20) NOT NULL DEFAULT '',
  upwd VARCHAR(32) NOT NULL DEFAULT '',
  email VARCHAR(128) NOT NULL DEFAULT '',
  phone VARCHAR(20) NOT NULL DEFAULT '',
  avatar VARCHAR(100) NOT NULL DEFAULT '',
  gender VARCHAR(1) NOT NULL DEFAULT '',
  runame VARCHAR(20) NOT NULL DEFAULT ''
);
INSERT INTO wm_user VALUES
  (NULL,"琴","qin123456","123@qq.com","13511112222","img/avatar/default.png","女","晓琴"),
  (NULL,"ding","ding123456","123@qq.com","13511112223","","男","张丁"),
  (NULL,"mary","hua123456","123@qq.com","13511112224","","女","李晓花"),
  (NULL,"张","qin123456","1234@qq.com","13511112222","","男","张三"),
  (NULL,"dingding","123123","123@qq.com","13511112223","","男","张丁"),
  (NULL,"花","hua123456","123@qq.com","13511112224","","女","梁雨"),
  (NULL,"baby","123456","123@qq.com","13511112222","","女","晓琴"),
  (NULL,"青烟","ding123456","123@qq.com","13511112223","","男","张丁"),
  (NULL,"花hua","hua123456","123@qq.com","13511112224","","女","李晓花"),
  (NULL,"sunny","qin123456","123@qq.com","13511112222","","女","晓琴"),
  (NULL,"tom","ding123456","123@qq.com","13511112223","","男","张丁"),
  (NULL,"野百合","hua123456","123@qq.com","13511112224","","女","杨来");

/**首页轮播广告**/
CREATE TABLE index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(168) NOT NULL DEFAULT '',
  title VARCHAR(64) NOT NULL DEFAULT '',
  del BOOL
);
INSERT INTO index_carousel VALUES
  (NULL,'img/products/banners/banner01.jpg','轮播广告1',1),
  (NULL,'img/products/banners/banner02.jpg','轮播广告2',0),
  (NULL,'img/products/banners/banner03.jpg','轮播广告3',0),
  (NULL,'img/products/banners/banner04.jpg','轮播广告4',0),
  (NULL,'img/products/banners/banner05.jpg','轮播广告5',1),
  (NULL,'img/products/banners/banner06.jpg','轮播广告6',0);

/**商品种类**/
CREATE TABLE products_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32) NOT NULL DEFAULT ''
);
INSERT INTO products_family VALUES
  (NULL,'skirt'),    #裙
  (NULL,'shirt'),    #T恤
  (NULL,'knitwear'), #雪纺
  (NULL,'skirt'),    #针织衫
  (NULL,'pants');    #裤子

/**商品**/
CREATE TABLE products(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT NOT NULL,                    #所属产品类
  title VARCHAR(128) NOT NULL DEFAULT '',    #主标题
  price DECIMAL(10,2),                       #价格
  spec VARCHAR(64) NOT NULL,                 #颜色、规格
  pname VARCHAR(32) NOT NULL DEFAULT '',     #商品名称
  shelf_time BIGINT,                         #上架时间 
  sold_count INT,                            #已售数量
  is_onsale BOOLEAN,                         #是否在售
  is_del BOOLEAN NOT NULL DEFAULT 0,         #是否删除
  is_collect BOOLEAN DEFAULT 0               #是否收藏
);
INSERT INTO products VALUES
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',115,'#E7701D','T恤',1509156563575,0,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',79,'#E7702D','裙子',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',79.9,'#E7703D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',125,'#E7704D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',122,'#E7705D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',110,'#E7706D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',99.5,'#E7707D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',120,'#E7708D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',120,'#E7709D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',120,'#E7710D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',120,'#E7711D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',120,'#E7712D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',120,'#E7712D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',220,'#E7712D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'冬季韩版情侣面包服棉服短款宽松加厚棉衣连帽外套',120,'#E7712D','棉袄',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'学生针织上衣假两件套宽松短半身裙',130,'#E7712D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'宽松显瘦阔腿裤韩版休闲九分裤子',140,'#E7712D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',120,'#E7712D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',120,'#E7712D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',120,'#E7712D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',120,'#E7712D','T恤',1509156563575,29,1,DEFAULT,DEFAULT),
  (NULL,1,'纯色薄款七分袖针织衫薄外套上衣',120,'#E7713D','T恤',1509156563575,29,1,DEFAULT,DEFAULT);

/**商品图片**/
CREATE TABLE product_pic(
  cid INT PRIMARY KEY AUTO_INCREMENT,      #产品的图片的编号
  product_id INT NOT NULL,                 #产品的编号
  img_src VARCHAR(128) NOT NULL DEFAULT '' #图片路径
);
INSERT INTO product_pic VALUES
  (NULL,1,'img/products/product01.jpg'),
  (NULL,1,'img/details/product-lg-left-01img.jpg'),
  (NULL,1,'img/details/product-sm-left-02img.jpg'),
  (NULL,1,'img/details/product-sm-left-03img.jpg'),
  (NULL,1,'img/details/product-sm-left-04img.jpg'),
  (NULL,2,'img/products/product02.jpg'),
  (NULL,3,'img/products/product03.jpg'),
  (NULL,4,'img/products/product04.jpg'),
  (NULL,5,'img/products/product05.jpg'),
  (NULL,6,'img/products/product06.jpg'),
  (NULL,7,'img/products/product07.jpg'),
  (NULL,8,'img/products/product08.jpg'),
  (NULL,9,'img/products/product09.jpg'),
  (NULL,10,'img/products/product10.jpg'),
  (NULL,11,'img/products/product11.jpg'),
  (NULL,12,'img/products/product12.jpg'),
  (NULL,13,'img/products/product13.jpg'),
  (NULL,14,'img/products/product14.jpg'),
  (NULL,15,'img/products/product15.jpg'),
  (NULL,16,'img/products/product16.jpg'),
  (NULL,17,'img/products/product17.jpg'),
  (NULL,18,'img/products/product18.jpg'),
  (NULL,19,'img/products/product19.jpg'),
  (NULL,20,'img/products/product20.jpg'),
  (NULL,21,'img/products/product20.jpg'),
  (NULL,22,'img/products/product21.jpg');
/**购物车**/
CREATE TABLE shopping_cart(
  sid INT PRIMARY KEY AUTO_INCREMENT,  #购物车编号
  user_id INT,                         #用户编号
  product_id INT,                      #产品编号
  count INT,                           #加入产品数
  is_checked BOOLEAN DEFAULT 0         #是否被选中
);
INSERT INTO shopping_cart VALUES
(NULL,1,1,2,0),
(NULL,2,1,2,0);
/**用户收货地址表**/