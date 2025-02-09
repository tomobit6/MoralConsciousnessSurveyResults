# 道徳意識調査集計ツールについて
全校児童が年間2回実施する道徳意識調査の集計結果を低（1・2年）・中（3・4年）高（5・6年）ごとに集計シートに反映し、分析するためのツールです。
## このサービスを制作した理由
何人もいる児童に道徳意識調査の紙（アンケート用紙）を配布して、4つの回答候補「そう思う」、「どちらかといえばそう思う」、「どちらかといえばそう思わない」、「そう思わない」の数をそれぞれの担任が正の字で数を集計し、集計結果に反映していた。
紙をかなりの枚数刷ること、集計に時間がかかることを改善するために、児童一人一人に配布されているタブレットパソコンでGoogleFormによって回答してもらい、フォームの集計結果をExcelの集計シートに反映するようにしました。
## 利用方法
 1. [GoogleForm手順書](https://drive.google.com/file/d/1wZbLiNj0itwgJqB-rKQelXjRnra4mqrE/view?usp=drive_link)
 2. GoogleForm様式例
    - [1・2年1回目様式](https://docs.google.com/forms/d/1sW5VxlJwssp_eZXEipg3bHS1Sv2KiXJn9oy2HGWk-CI/edit)　[1・2年2回目様式](https://docs.google.com/forms/d/1gCxjfpWNqgHs_pC8_-94GDuMor8nEE6YfzbPp3ZSUN8/edit)
    - [3・4年様式](https://docs.google.com/forms/d/1PyFQd7vF4r7WEKtcpKlE7hlxAPXOaUiipoBHSsQJUfE/edit)
    - [5・6年様式](https://docs.google.com/forms/d/19pedhnWsaVu5_4K9ylZU1DegkmnGi4gZVGMOYT4z_eo/edit)
 3. 利用イメージ
    - [GoogleForm回答イメージ](https://github.com/user-attachments/assets/1338c87d-ecdc-4d3e-8e83-955a6f2227a9)
## 工夫した点と課題
GoogleFormで回答した集計データをcsvファイルにすると、文字化けするためExcelのxlsxファイルで保存し取り込むようにしています。
