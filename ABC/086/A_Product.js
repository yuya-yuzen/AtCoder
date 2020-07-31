// 2 つの正整数 a , b が与えられます。
// a と b の積が偶数か奇数か判定してください。

// 2つの正整数を取得
const a = 3;
const b = 5;

// 2つの正整数の積を計算
const product = a * b;

// 偶数か奇数か判定し、結果を出力
if (product % 2 === 0) {
  console.log("Even");
} else {
  console.log("Odd");
}