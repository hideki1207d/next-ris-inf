# Jekyll GitHub Pages Site

このプロジェクトは、Jekyll と GitHub Pages を使用した静的サイトです。

## 🚀 開発環境

### 前提条件
- Docker
- Visual Studio Code
- Dev Containers 拡張機能

### セットアップ
1. このリポジトリをクローン
2. VS Code で開く
3. Dev Container で再オープン

### 🔧 開発サーバーの起動

#### 方法1: VSCode タスク
1. `Ctrl+Shift+P` でコマンドパレットを開く
2. "Tasks: Run Task" を選択
3. "🚀 Start Jekyll" を選択

#### 方法2: スクリプト実行
```bash
./start-jekyll.sh
```

#### 方法3: 直接コマンド
```bash
bundle exec jekyll serve --host 0.0.0.0 --port 8080 --livereload
```

### 📱 アクセス
- **サイト**: http://localhost:8080
- **Live Reload**: 有効（ファイル変更時に自動更新）

### 🛑 サーバー停止
- ターミナルで `Ctrl+C`
- または VSCode タスク "🛑 Stop Jekyll"

## 📁 プロジェクト構成

```
.
├── .devcontainer/          # Dev Container 設定
├── .vscode/               # VS Code 設定
├── _posts/                # ブログ記事
├── _site/                 # 生成されたサイト（Git管理外）
├── _config.yml            # Jekyll 設定
├── Gemfile                # Ruby 依存関係
├── start-jekyll.sh        # 起動スクリプト
└── README.md              # このファイル
```

## 🔧 技術スタック
- **Jekyll**: 静的サイトジェネレーター
- **GitHub Pages**: ホスティング
- **Ruby**: プログラミング言語
- **Docker**: 開発環境
- **VS Code Dev Containers**: 統合開発環境 