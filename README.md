# flutter_clean_architecture

```
# lib目录下
.
├── app
│   ├── app.dart                                # app 入口
│   ├── config                                  # 配置
│   │   ├── const                               # 常量
│   │   │   ├── assets_name.dart                # 资源名称 
│   │   │   └── strings.dart                    # 一些其他的string常量
│   │   ├── internationalization                # GetX多语言
│   │   │   ├── cn_tw.dart
│   │   │   ├── cn_zh.dart
│   │   │   ├── en.dart
│   │   │   ├── index.dart
│   │   │   └── msg_keys.dart
│   │   ├── routes                              # 路由
│   │   │   ├── index.dart
│   │   │   └── router_name.dart
│   │   └── ui                                  # UI: 基于Material 3
│   │       ├── animations.dart
│   │       ├── colors.dart
│   │       ├── shapes.dart
│   │       ├── spacing.dart
│   │       ├── theme.dart
│   │       └── typography.dart
│   └── pages                                   # 根据业务不同的具体页面
│       ├── home
│       │   ├── home_page.dart
│       │   └── home_page_controller.dart
│       ├── news
│       │   ├── news_page.dart
│       │   └── news_page_controller.dart
│       └── widget
│           └── app_confirm_dialog.dart
├── build_app                                   # build app 的入口. 
│   ├── build_config.dart                       # envName, baseURL, 一些第三方SDK keys
│   ├── flavor                                  # flavor (flutter 的不同的环境)
│   │   ├── base_flavor.dart
│   │   ├── dev.dart
│   │   └── production.dart
│   └── main                                    # 程序的入口
│       ├── dev_main.dart
│       └── production_main.dart
├── core                                        # 通用的代码
│   ├── extensions                              # Flutter 标准库的扩展方法
│   │   ├── color.dart
│   │   ├── foundation.dart
│   │   └── string.dart
│   ├── http_service                            # 网络请求SDK的封装
│   │   ├── http_config.dart
│   │   └── http_impl.dart
│   ├── local_storage                           # 本地存储SDK的封装. 轻量化的用share_preferences, 大量数据用mmkv之类的数据库
│   │   ├── local_storage_impl.dart
│   │   └── local_storage_keys.dart
│   └── utils
│       ├── formate_date.dart
│       └── md5.dart
└── data                                        # 数据
    ├── models                                  # 数据模型 (json转对象)
    │   ├── order
    │   │   ├── order_detail.dart
    │   │   ├── pre_order.dart
    │   │   └── purchase_item.dart
    │   └── user.dart
    ├── repo                                     # 数据仓库(后台的数据接口)
    │   ├── api.dart
    │   ├── login_repo.dart
    │   └── news_repo.dart
    └── types                                    # 一些通用的数据类型(type )
        ├── foo_type.dart
        └── news_type.dart
```
