// 二つの長方形があります。
// 一つ目の長方形は、縦の辺の長さがa、横の辺の長さがbです。
// 二つ目の長方形は、縦の辺の長さがc、横の辺の長さがdです。
// この二つの長方形のうち、面積の大きい方の面積を出力してください。
// なお、二つの長方形の面積が等しい時は、その面積を出力してください。

// 情報を取得
const a = 3;
const b = 4;
const c = 5;
const d = 6;

// 二つの長方形の面積を計算
const rectangle1 = a * b;
const rectangle2 = c * d;

// 面積の大きい方のそれを出力
if (rectangle1 > rectangle2) {
  console.log(rectangle1);
} else {
  console.log(rectangle2);
}