# 网上办事大厅教程文档

[![Deploy to GitHub Pages](https://github.com/userAlex110/docs-tutorial/actions/workflows/pages.yml/badge.svg)](https://github.com/userAlex110/docs-tutorial/actions/workflows/pages.yml)

> 有缘关注，随缘更新 —— 网上办事大厅操作教程与常见问题解答

这是一个基于 [Jekyll] + [Just the Docs] 主题构建的文档网站，旨在帮助用户熟悉、使用和管理网上办事大厅服务。

**在线预览**: https://userAlex110.github.io/docs-tutorial

---

## 文档内容

本教程将复杂的业务流程拆解成易懂的步骤，配以示例和配图，帮助你快速上手、顺利办结事项。

### 核心教程

| 章节 | 内容概述 |
|------|----------|
| [创建填表服务](./docs/000创建填表服务.md) | 如何创建一个新的填表服务 |
| [服务配置](./docs/001服务配置.md) | 服务的基础配置步骤 |
| [表单设计](./docs/002表单设计.md) | 使用标题、网格布局、单行文本、上传文件、日期、数据表格等控件设计表单 |
| [两种打印模板](./docs/003两种打印模板.md) | docx 和 PDF 打印模板的制作与使用 |
| [表单控制显隐](./docs/004表单控制显影.md) | 使用 JavaScript 动态控制表单控件的显示或隐藏 |

### 打印模板详解

- [docx 打印模板](./docs/打印模板/docx打印模板.md) - Word 文档模板制作流程
- [PDF 打印模板](./docs/打印模板/pdf打印模板.md) - PDF 模板 HTML 编写规范与 Freemarker 语法
- [上传打印模板](./docs/打印模板/上传打印模板.md) - 模板上传操作指南
- [使用打印模板](./docs/打印模板/使用打印模板.md) - 打印功能使用说明
- [Visual Studio Code 配置](./docs/打印模板/visualStudioCode.md) - 推荐编辑器与 XML 插件配置

---

## 适用对象

- **新手用户**：学习创建填表服务与基本操作
- **系统管理员**：掌握配置与维护技巧
- **开发者**：了解打印模板制作与表单高级功能

---

## 本地开发

### 环境要求

- Ruby 3.3+
- Bundler

### 安装与预览

```bash
# 安装依赖
bundle install

# 启动本地服务器
bundle exec jekyll serve

# 访问 http://localhost:4000/docs-tutorial/
```

详细配置请参考 [_config.yml](./_config.yml)。

---

## 项目结构

```
.
├── _config.yml          # Jekyll 站点配置
├── _data/
│   └── navigation.yml   # 导航配置
├── docs/                # 教程文档目录
│   ├── 000创建填表服务.md
│   ├── 001服务配置.md
│   ├── 002表单设计.md
│   ├── 003两种打印模板.md
│   ├── 004表单控制显影.md
│   ├── js-control/      # JS 控制相关
│   └── 打印模板/        # 打印模板专题
├── assets/              # 静态资源
│   ├── images/          # 图片资源
│   └── resources/       # 可下载资源
└── index.md             # 首页
```

---

## 如何贡献

如果你发现错误或有改进建议，欢迎：

1. 提交 [GitHub Issue](https://github.com/userAlex110/docs-tutorial/issues)
2. 提交 Pull Request
3. 联系维护团队

### 文档规范

- 使用 Markdown 格式编写
- 图片统一存放在 `docs/images/对应主题/` 目录
- 新文档需添加 Front Matter：
  ```yaml
  ---
  title: 文档标题
  nav_order: 数字排序
  parent: 父级页面标题（如有）
  ---
  ```

---

## 相关链接

- [网上办事大厅](https://ehall.cdu.edu.cn/tp_fp/view?m=fp#act=fp/formHome)
- [HTML 生成器 AI 助手](https://udify.app/chat/0KqdE7UhQceLvA2q)

---

## 许可证

本项目采用 [MIT License](./LICENSE) 开源协议。

[Jekyll]: https://jekyllrb.com
[Just the Docs]: https://just-the-docs.github.io/just-the-docs/
