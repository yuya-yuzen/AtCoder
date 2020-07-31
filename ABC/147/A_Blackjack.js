// 3 個の整数 A1, A2, A3 が与えられます。
// A1 + A2 + A3 が 22 以上なら bust、
// 21 以下なら win を出力してください。

// 3個の整数を取得
const a1 = 3;
const a2 = 4;
const a3 = 5;

// 3個の整数の和を計算
if (a1 + a2 + a3 >= 22) {
  console.log("bust");
} else {
  console.log("win");
}