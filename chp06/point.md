## 正規表現
### メタ文字
- \d : 数値 = [0-9]
- \w : [a-zA-Z0-9_]
- . : 任意の一文字
- \t : タブ
- \s : 半角スペース、タブ文字、開業文字

### 量指定子
- {a, b} : a文字以上、b文字以下
- ? : 0文字以上
- * : 0文字以上
- + : 1文字以上
  ※ * / + は最後にマッチしたものを返す。手前でいい時は、/.+?/ , /.*?/などとする。

### anchor
- ^ : 先頭
- $ : 末尾
- b : 単語の切れ目
  - earだとhearing / bearとかが入っちゃうときは、/\bear\b/ってやるとearだけいける
- (?<=/regexp/) : 行程のあと読み...マッチした直後にマッチ
- (?=/regexp/) : 行程のさき読み...マッチした直前にマッチ
- (?<!/regexp/>) : 否定のあと読み...マッチした直後

### その他制御系
- [-(] : []内のどれか1文字　※[a-z]とかもあるので、純粋にハイフンを検索場合は先頭に書く。
- () : カッコ内をキャプチャ。scanメソッド等で配列として書出
- (?: regexp) :　カッコを使いたいけどただのマッチがいい時はこれ
- (/regexp/|/regexp/) : または条件
- [^AB] : AB以外の文字列
- [AB^] : AB^のいずれか

### Rubyのメソッド
- text.gsub(/regexp/,'\1,\2')
- text.scan(/regexp/)
- text.match(//regexp)