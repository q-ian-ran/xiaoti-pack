# 优质提示词来源与联网检索策略

> 使用方式：优先查本地库（prompt-library.md）；没有合适模板时，按本文件的策略联网搜集，优先访问下列常青来源。

最后整理：2026-10-16

## 一、常青来源清单

### 综合提示词库（世界级）
| 来源 | 地址 | 特点 | 适合 |
|---|---|---|---|
| Awesome ChatGPT Prompts | github.com/f/awesome-chatgpt-prompts（在线版 prompts.chat） | 99k+ Star，英文鼻祖级角色提示词合集 | 英文角色类提示词 |
| awesome-chatgpt-prompts-zh | github.com/PlexPt/awesome-chatgpt-prompts-zh | 中文"调教指南"，100+ 中文角色模板（写作/编程/教育/生活） | 中文场景首选 |
| ChatGPT Shortcut | aishort.top（github.com/rockbenben/ChatGPT-Shortcut） | 中文提示词速查手册，按职业与场景分类 | 快速找中文提示词 |
| GPTS-Prompt-Collection | github.com/B3o/GPTS-Prompt-Collection | 精选 GPTs 商店提示词 | 找产品级提示词 |

### 方法论 / 框架
| 来源 | 地址 | 特点 |
|---|---|---|
| Prompt Engineering Guide | promptingguide.ai（DAIR.AI，含中文版） | 系统教程：少样本、思维链、ReAct 等 18 种技术 |
| LangGPT 结构化提示词 | github.com/langgptai/LangGPT | 模块化模板（角色/技能/规则/流程），适合做可复用提示词与智能体 |
| Claude 官方提示词工程指南 | docs.claude.com（Prompt Engineering 章节，含中文） | 官方最佳实践 |
| OpenAI 提示词指南 | platform.openai.com/docs/guides/prompt-engineering | 官方六策略 |

### 图像 / 视频生成
| 来源 | 地址 | 特点 |
|---|---|---|
| PromptHero | prompthero.com | 按图反查提示词 |
| OpenArt / Lexica | openart.ai / lexica.art | SD/MJ 提示词与作品库 |
| 即梦 / 可灵 灵感社区 | 各平台站内 | 中文绘画/视频提示词参考 |
| WaytoAGI | waytoagi.com（飞书知识库） | 中文 AI 社区，含提示词专题合集 |

## 二、联网检索策略（按顺序执行）

### 关键词公式
- 中文：【场景】+ 提示词 / 万能提示词 / 提示词模板 / 角色扮演
- 英文：[scenario] + prompt template / "act as" prompt / prompt for [task]
- GitHub 类：awesome prompts、prompt collection、提示词、prompt engineering

### 检索动作
1. WebSearch：用上面的关键词公式搜 1-2 次，中文场景优先中文关键词
2. 结果优选：GitHub 高星仓库 > 官方文档/知名博客 > 普通文章
3. 找到目标页后用 WebFetch 提取提示词**原文**（在抓取指令里明确要"模板原文"）
4. 交叉验证：优先采用 2 个以上来源都出现的模板模式

### 时效偏好
- 提示词技巧类：常青内容，不限时间
- 平台新功能类（某 AI 新出的能力）：限定近 1 年结果
- 涉及价格/版本：必须核实当前信息

## 三、验货标准（拿到网络提示词后逐项检查）

- [ ] 是否包含：角色 / 任务 / 约束 / 输出格式
- [ ] 是否平台无关（不含某平台专属语法，除非用户就用该平台）
- [ ] 是否可直接复制使用（占位符清晰）
- [ ] 来源可信（高星仓库 / 官方文档 / 多来源交叉）

## 四、持续积累

联网搜到特别好用的新模板时，按分类追加进 `prompt-library.md`，标注"来源 + 日期"，让本地库越用越厚。
