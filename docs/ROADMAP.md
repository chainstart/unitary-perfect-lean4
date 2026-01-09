# 项目路线图

> 总工期：8周

## 阶段一：代码整理（第1-2周）

### Week 1: Mathlib风格适配

- [ ] 阅读 [Mathlib贡献指南](https://leanprover-community.github.io/contribute/index.html)
- [ ] 整理UnitaryDivisor.lean代码风格
  - [ ] 行长度 ≤ 100字符
  - [ ] 使用snake_case命名
  - [ ] 添加完整docstring
- [ ] 移除`native_decide`，改用纯证明
- [ ] 检查所有import是否最小化

### Week 2: 测试与验证

- [ ] 确保所有定理无`sorry`
- [ ] 运行Mathlib linter检查
  ```bash
  lake exe lint
  ```
- [ ] 本地构建测试
  ```bash
  lake build
  ```
- [ ] 在Zulip社区询问初步反馈

---

## 阶段二：论文撰写（第3-6周）

### Week 3-4: 论文初稿

- [ ] 撰写 **Introduction** (1页)
  - 完全数历史
  - 幺正完全数定义
  - 形式化的意义
  - 论文贡献

- [ ] 撰写 **Mathematical Background** (1.5页)
  - 幺正因子定义
  - σ*函数
  - 幺正完全数
  - 已知结果(Subbarao-Warren, Wall)

- [ ] 撰写 **Formalization Details** (3页)
  - 定义的Lean实现
  - 乘法性的双射证明
  - 素数幂公式
  - 无奇幺正完全数定理

- [ ] 撰写 **Proof Techniques** (1.5页)
  - Lean中的双射证明
  - 计算验证处理
  - Mathlib集成

### Week 5: 论文完善

- [ ] 撰写 **Related Work** (0.5页)
  - Isabelle/Coq中的完全数
  - 其他数论形式化

- [ ] 撰写 **Conclusion** (0.5页)
  - 贡献总结
  - 未来工作：Wall定理完成

- [ ] 整理 **References**
  - Subbarao & Warren (1966)
  - Wall (1975)
  - Mathlib文档
  - 相关形式化工作

### Week 6: 审校

- [ ] 英文润色
- [ ] 代码清单核对
- [ ] 格式检查（AFM模板）
- [ ] 同行预审（如有可能）

---

## 阶段三：提交（第7-8周）

### Week 7: Mathlib PR

- [ ] Fork mathlib4仓库
- [ ] 创建feature分支
- [ ] 提交PR
  - 标题：`feat(NumberTheory): add unitary divisor sum function`
  - 描述清晰，引用相关issue
- [ ] 响应reviewer反馈
- [ ] 迭代修改直至合并

### Week 8: AFM投稿

- [ ] 上传代码到Zenodo获取DOI
- [ ] 上传arXiv预印本
- [ ] 准备AFM投稿材料：
  - [ ] 论文PDF
  - [ ] 代码artifact链接
  - [ ] arXiv链接
- [ ] 通过episciences系统提交
- [ ] 等待编辑反馈

---

## 里程碑检查点

| 周次 | 检查点 | 完成标准 |
|------|--------|----------|
| 2 | 代码整理完成 | `lake build`无错误，无`sorry` |
| 4 | 初稿完成 | 所有章节有内容 |
| 6 | 论文定稿 | 英文润色完成，格式正确 |
| 7 | Mathlib PR | PR已提交并通过CI |
| 8 | AFM投稿 | 已提交，有确认邮件 |

---

## 风险与应对

| 风险 | 可能性 | 应对措施 |
|------|--------|----------|
| Mathlib审核慢 | 中 | 先投AFM，PR可后续 |
| 代码需大量重构 | 低 | 提前询问Zulip社区 |
| 论文被拒 | 低 | 根据反馈修改重投 |

---

## 资源链接

- [Mathlib4 Contributing Guide](https://leanprover-community.github.io/contribute/index.html)
- [AFM Submission Guide](https://afm.episciences.org/page/instructions-for-authors)
- [Lean Zulip](https://leanprover.zulipchat.com/)
- [arXiv Math Submission](https://arxiv.org/submit)
