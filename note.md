# 自分用メモ

## 問題の制約をよく見る

- 0を含むか否か
- 負の値を含むか否か
- 数値の上限が低い方に視点を当てた全探索

## とにかくシンプルに実装する

- 必ずしも問題文の通りの処理をさせる必要はない
- 問題に対して適切な答えが出せたらいい
- 難しく考えすぎていないか常に意識する

## メモ化することで無駄な計算を排除する

- 再帰関数などで既に計算済のものを配列でメモ化
- 計算量を減らすために非常に有効
- フィボナッチ数列が良い例

## 累積和を使う

- 指定されたポイント以前までの全ての和
- 計算量を減らすのに有効
