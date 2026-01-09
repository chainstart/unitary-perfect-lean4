# 提交检查清单

## 一、Mathlib贡献检查

### 代码风格

- [ ] 行长度 ≤ 100字符
- [ ] 使用`snake_case`命名（定理、引理、定义）
- [ ] 所有公开定理有docstring（`/-- ... -/`）
- [ ] 无TODO/FIXME注释
- [ ] 无`native_decide`（除非必要且有说明）
- [ ] 无未使用的变量
- [ ] 使用`·`而非`∙`作为乘法点
- [ ] 括号风格一致

### 数学内容

- [ ] 定义与Mathlib现有API一致
- [ ] 引理名称遵循Mathlib命名约定
  - `foo_bar` 用于 `Foo.bar`
  - `of_foo` 用于从foo推导的结果
  - `foo_iff_bar` 用于等价条件
- [ ] 证明简洁高效
- [ ] 避免重复现有Mathlib定理
- [ ] 泛化程度适当（不过度泛化）

### 技术要求

- [ ] `lake build`无错误
- [ ] `lake exe lint`无警告
- [ ] 所有import最小化
- [ ] 无循环依赖
- [ ] CI测试全部通过

### PR规范

- [ ] PR标题格式：`feat(Area): description`
- [ ] 有清晰的PR描述
- [ ] 引用相关issue（如有）
- [ ] 签署CLA（首次贡献）

---

## 二、AFM论文检查

### 必需内容

- [ ] 代码artifact
  - [ ] 上传到Zenodo或GitHub
  - [ ] 有DOI或永久链接
  - [ ] 代码可复现
- [ ] arXiv预印本链接
- [ ] 完整参考文献

### 论文内容

- [ ] Abstract ≤ 150词
- [ ] Introduction说明贡献
- [ ] 数学背景完整
- [ ] 形式化细节清晰
- [ ] 证明技巧有教学价值
- [ ] Related Work全面
- [ ] Conclusion有未来展望

### 格式要求

- [ ] 使用AFM LaTeX模板
- [ ] 英文语法正确
- [ ] 图表清晰有编号
- [ ] 代码片段格式正确
- [ ] 参考文献格式统一

### 投稿流程

- [ ] 先上传arXiv
- [ ] 再提交AFM（需arXiv链接）
- [ ] 等待编辑确认
- [ ] 响应审稿意见

---

## 三、代码整理检查（针对现有代码）

### UnitaryDivisor.lean

- [ ] 移除不必要的import
- [ ] 添加模块级docstring
- [ ] 所有定义有docstring：
  - [ ] `IsUnitaryDivisor`
  - [ ] `unitaryDivisors`
  - [ ] `unitaryDivisorSum`
- [ ] 所有定理有docstring：
  - [ ] `unitaryDivisorSum_mul`
  - [ ] `unitaryDivisorSum_prime_pow`
- [ ] 行长度检查
- [ ] 命名规范检查

### UnitaryPerfect.lean

- [ ] 移除不必要的import
- [ ] 添加模块级docstring
- [ ] 所有定义有docstring：
  - [ ] `IsUnitaryPerfect`
  - [ ] `f`（辅助函数）
- [ ] 所有定理有docstring：
  - [ ] `no_odd_unitary_perfect`
  - [ ] `unitary_perfect_is_even`
  - [ ] `unitary_perfect_form`
- [ ] 检查`native_decide`使用
  - `eightyseven360_is_unitary_perfect`需要替代方案

---

## 四、最终提交前检查

### Mathlib PR

```bash
# 本地测试
cd mathlib4
lake build
lake exe lint

# 创建PR
git checkout -b feat/unitary-divisor
git add .
git commit -m "feat(NumberTheory): add unitary divisor sum function"
git push origin feat/unitary-divisor
# 在GitHub创建PR
```

### AFM投稿

```bash
# 编译论文
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex

# 检查PDF
# - 无编译警告
# - 引用正确
# - 图表清晰
```

---

## 五、常见问题处理

| 问题 | 解决方案 |
|------|----------|
| CI失败 | 检查错误日志，修复后重新push |
| Linter警告 | 根据警告信息修改代码 |
| 审稿意见不清 | 在PR/投稿系统中礼貌询问 |
| 命名冲突 | 与Mathlib维护者讨论 |
