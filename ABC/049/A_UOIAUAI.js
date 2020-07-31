// 英小文字 c が与えられるので、c が母音であるか判定してください。

// 英小文字を取得
const word = "a";

// 英小文字が母音かどうか判定、結果を出力
switch (word) {
  case "a" || "i" || "u" || "e" || "o":
    console.log("vowel");
    break;
  default:
    console.log("consonant");
}