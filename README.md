# 道徳意識調査集計ツールについて

全校児童が年間2回実施する道徳意識調査の集計結果を、低（1・2年）、中（3・4年）、高（5・6年）ごとに集計シートに反映し、分析するためのツールです。

## このサービスを制作した理由

以前、何人もの児童に道徳意識調査の紙（アンケート用紙）を配布し、4つの回答候補「そう思う」、「どちらかといえばそう思う」、「どちらかといえばそう思わない」、「そう思わない」の数をそれぞれの担任が正の字で数を集計し、集計結果に反映していました。

しかし、この方法では紙をかなりの枚数刷る必要があり、集計に時間もかかります。これを改善するために、児童一人一人に配布されているタブレットパソコンでGoogle Formによって回答してもらい、そのフォームの集計結果をExcelの集計シートに自動的に反映する仕組みを作成しました。

## 利用方法

1. **[GoogleForm手順書](https://drive.google.com/file/d/1wZbLiNj0itwgJqB-rKQelXjRnra4mqrE/view?usp=drive_link)**
2. **GoogleForm様式例**：
    - [1・2年1回目様式](https://docs.google.com/forms/d/1sW5VxlJwssp_eZXEipg3bHS1Sv2KiXJn9oy2HGWk-CI/edit)  
    - [1・2年2回目様式](https://docs.google.com/forms/d/1gCxjfpWNqgHs_pC8_-94GDuMor8nEE6YfzbPp3ZSUN8/edit)  
    - [3・4年様式](https://docs.google.com/forms/d/1PyFQd7vF4r7WEKtcpKlE7hlxAPXOaUiipoBHSsQJUfE/edit)  
    - [5・6年様式](https://docs.google.com/forms/d/19pedhnWsaVu5_4K9ylZU1DegkmnGi4gZVGMOYT4z_eo/edit)
3. **利用イメージ**：
    - GoogleForm回答イメージ  
    ![Image](https://github.com/user-attachments/assets/77fbb11b-0167-4bfd-a282-c31461b2b0f6)
    - 集計ツールへ反映イメージ  
    ![Image](https://github.com/user-attachments/assets/2aec3ccf-78b4-43f3-93eb-b52a5101a760)
## 工夫した点と課題

- **工夫した点**：  
    Google Formで回答した集計データをCSVファイルにすると文字化けする問題を解決するため、Excelの`xlsx`ファイル形式で保存し、その形式でデータを取り込むようにしています。

- **課題**：  
    フォームのデータ取得・反映においてまだ改善の余地があり、例えばフォームの様式を更新する際に手動で調整が必要になることがあります。
