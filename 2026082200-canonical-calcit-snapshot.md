# 2026-08-22 00:00

- 将源码 Snapshot 统一为 `calcit.cirru`，移除旧的 `compact.cirru`，并取消对 `calcit.cirru` 的 generated 隐藏标记。
- 将根 package 对齐为 `app`，并为应用状态、更新器和回调补充新 Calcit schema；使用 `match` 处理列表形态的操作消息，避免旧版 enum 检查告警。
- 将发布 workflow 从 `setup-cr`/`cr` 迁移到固定提交的 `setup-calcit`/`calcit`，并使用 `yarn install --immutable`。
- 按 `calcit docs read upgrade` 规范化 entry 配置并升级 Calcit、Respo、Lilac 与 docs-workflow 依赖。
- 固定 Yarn 使用 `node-modules` linker，并将传递依赖中的 `@cirru/parser.ts` 统一到可构建的 0.0.9。
