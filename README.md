# 小提 · AI 工作搭子

> 一个有人格设定的 AI 助手，加一套会自己找提示词的技能。
> 装进 WorkBuddy，你的 AI 就不再是「每次都要重新交代背景」的陌生人。

---

## 为什么做这个

大多数人用 AI 的方式是：每次打开都从零自我介绍一遍——我是谁、我要什么、按什么格式给我、别写客套话。三句话之后才开始正事。

这个项目解决的就是这件事。把你的称呼、城市、习惯、在做的项目写进几个 Markdown 文件，AI 每次会话开始先读它们。**省掉每次的前置对话。**

第二块是提示词能力。多数人不知道该怎么向 AI 提问，于是拿到一堆泛泛而谈的回答。这里内置了 32 条可直接套用的模板和 5 套框架，说一句「给我一个写周报的提示词」就能拿到成品，库里没有的它会联网去找。

---

## 特性

| 能力 | 说明 |
|---|---|
| **写** | 文章、文案、报告、周报、方案；能直接产出 Word / PPT / Excel |
| **查** | 全网检索、多源交叉验证，给带结论的调研而不是一堆链接 |
| **算** | 数据分析、Excel 公式、SQL、图表 |
| **做** | 写代码、搭网站和小工具、生成图片视频 |
| **记得你** | 称呼、城市、偏好、在做的项目跨会话保留 |
| **提示词** | 9 大类 32 条模板 + 5 套框架，随叫随到 |
| **不瞎编** | 默认约定：不确定就说不确定，不伪造数据与引用 |

---

## 快速开始

### 前置条件

一个 [WorkBuddy](https://www.workbuddy.cn) 客户端（Windows / macOS）。装好、登录。

除此之外没有依赖，全程离线可用。

### 方式一：一键脚本（推荐）

**Windows**：双击 `install.bat`

**macOS / Linux**：

```bash
chmod +x install.sh
./install.sh
```

脚本做三件事：

1. 把 `persona/` 下三份人设文件复制到 `~/.workbuddy/`
2. 把 `skills/ai-prompt-finder/` 复制到 `~/.workbuddy/skills/`
3. 已存在的同名文件自动备份为 `.bak`；**你已有的 `USER.md` 不会被覆盖**

### 方式二：手动

把文件放到这两个位置（Windows 下 `<用户名>` 换成你自己的）：

| 内容 | 目标路径 |
|---|---|
| `persona/SOUL.md`<br>`persona/IDENTITY.md`<br>`persona/USER.md` | Windows：`C:\Users\<用户名>\.workbuddy\`<br>macOS：`~/.workbuddy/` |
| `skills/ai-prompt-finder/`（整个文件夹） | Windows：`C:\Users\<用户名>\.workbuddy\skills\`<br>macOS：`~/.workbuddy/skills/` |

目录长这样：

```
.workbuddy/
├── SOUL.md
├── IDENTITY.md
├── USER.md
└── skills/
    └── ai-prompt-finder/
        ├── SKILL.md
        └── references/
            ├── prompt-library.md
            └── sources.md
```

### 装完之后

重启 WorkBuddy，随便开个会话，说：

```
初始化
```

它会问你三个问题（怎么称呼、哪个城市、想要什么风格），答完就正式上岗。以后不用再交代。

---

## 怎么用

不需要记任何指令，直接说需求：

```
帮我写个周报，这周做了这些事：……
```

```
给我一个写小红书文案的提示词
```

```
把这个 Excel 里的数据理一下，看有没有异常
```

```
我要做一个 XX，给我一套能让 AI 落地的提示词
```

最后一条是它比较特别的地方：遇到「开发一个 App / 做个小工具」这类需求，它默认**不会**直接替你写代码，而是给你一套可复制的提示词，让你去指挥别的 AI 干活。这套做法来自它的原主理人——把控制权留在自己手里。

---

## 提示词库里有什么

一句话：**9 个分类、32 条模板、5 套框架、1 张关键词索引表。**

| 分类 | 条数 | 内容 |
|---|---|---|
| 万能公式与兜底 | 2 | 通用公式、需求模糊时的兜底提问 |
| 写作与内容创作 | 4 | 文章、小红书、短视频脚本、批量标题 |
| 职场办公 | 5 | 周报、PPT 大纲、会议纪要、邮件、简历面试 |
| 编程开发 | 4 | 需求转代码、报错排查、代码解释、评审重构 |
| 学习与备考 | 4 | 费曼讲解、知识框架、出题自测、错题诊断 |
| 数据分析 | 4 | 分析思路、Excel 公式、SQL、分析报告 |
| AI 绘画与视频 | 3 | 绘画提示词、改写示例、视频分镜 |
| 生活与决策 | 3 | 旅行、购物对比、健身饮食 |
| 元提示词 | 3 | 提示词生成器、优化器、角色设定 |

五套框架：**RTF / CO-STAR / CRISPE / BROKE / LangGPT**，速查表在 §0。

模板长这样，`【】` 里是要替换的部分：

```
你是拥有 5 年经验的小红书爆款笔记写手，擅长【赛道：美妆/学习/职场/生活】内容。
请围绕【主题】写一篇小红书笔记，要求：
- 面向【人群】，语气像闺蜜分享，口语化、不端着
- 正文 300-500 字，多用短句和换行，适当加 emoji
- 给出 10 个爆款标题候选（带数字、有悬念、不夸张）
```

素材来自 GitHub 上两个大仓库（[awesome-chatgpt-prompts](https://github.com/f/awesome-chatgpt-prompts) 与[中文版](https://github.com/PlexPt/awesome-chatgpt-prompts-zh)）、[promptingguide.ai](https://www.promptingguide.ai)、LangGPT 等公开资料，经工程化改写为统一结构。来源明细见 `skills/ai-prompt-finder/references/sources.md`。

---

## 自定义

**改名字**：`IDENTITY.md` 里的 `Name`，以及 `SOUL.md` 开头那段。改完告诉它一声。

**改风格**：`SOUL.md` 的 `Vibe` 一节。想要更热情就删掉「少客套」，想要更严谨就在 `Boundaries` 里加一条。

**加技能**：往 `.workbuddy/skills/` 里丢新的技能文件夹，机制一样。

---

## 常见问题

**找不到 `.workbuddy` 文件夹？**
它可能被系统隐藏了。Windows 直接在资源管理器地址栏输入 `%USERPROFILE%\.workbuddy` 回车；macOS 在 Finder 里按 `Cmd + Shift + G`，输入 `~/.workbuddy`。

**需要联网吗？**
不需要。人设和提示词库全是本地文件。

**会上传我的数据吗？**
不会。`USER.md` 只存在你自己电脑上，这个仓库里那份是空白模板。

**这个仓库里包含作者的个人信息吗？**
不包含。人设已做脱敏，`USER.md` 是空白模板，初始化时由你自己填。

**支持别的 AI 客户端吗？**
人设文件本质是纯 Markdown，思路可以移植；但 `skills/` 目录和自动加载机制是 WorkBuddy 的约定格式。

---

## 目录结构

```
xiaoti-pack/
├── README.md
├── LICENSE
├── install.bat              Windows 一键安装
├── install.sh               macOS / Linux 一键安装
├── .gitignore
├── persona/
│   ├── SOUL.md              灵魂：行为准则、边界、语气
│   ├── IDENTITY.md          身份卡：名字、气质
│   └── USER.md              关于你（空白模板）
└── skills/
    └── ai-prompt-finder/
        ├── SKILL.md         技能定义与工作流
        └── references/
            ├── prompt-library.md   9 大类 32 条模板
            └── sources.md          优质来源与检索策略
```

---

## 许可

MIT。拿去用、改、再分发都行，保留版权声明即可。

提示词方法论部分来自公开资料的整理与改写，感谢那些愿意公开分享的人。
