module WeatherHacks
  module ForecastMap
    area("北海道地方", "http://weather.livedoor.com/forecast/rss/1.xml") do
      pref("道北") do
        city("稚内", 1, "http://weather.livedoor.com/forecast/rss/1a/1.xml")
        city("旭川", 2, "http://weather.livedoor.com/forecast/rss/1a/2.xml")
        city("留萌", 3, "http://weather.livedoor.com/forecast/rss/1a/3.xml")
      end
      pref("道央") do
        city("札幌", 4, "http://weather.livedoor.com/forecast/rss/1b/4.xml")
        city("岩見沢", 5, "http://weather.livedoor.com/forecast/rss/1b/5.xml")
        city("倶知安", 6, "http://weather.livedoor.com/forecast/rss/1b/6.xml")
      end
      pref("道東") do
        city("網走", 7, "http://weather.livedoor.com/forecast/rss/1c/7.xml")
        city("北見", 8, "http://weather.livedoor.com/forecast/rss/1c/8.xml")
        city("紋別", 9, "http://weather.livedoor.com/forecast/rss/1c/9.xml")
        city("根室", 10, "http://weather.livedoor.com/forecast/rss/1c/10.xml")
        city("釧路", 11, "http://weather.livedoor.com/forecast/rss/1c/11.xml")
        city("帯広", 12, "http://weather.livedoor.com/forecast/rss/1c/12.xml")
      end
      pref("道南") do
        city("室蘭", 13, "http://weather.livedoor.com/forecast/rss/1d/13.xml")
        city("浦河", 14, "http://weather.livedoor.com/forecast/rss/1d/14.xml")
        city("函館", 15, "http://weather.livedoor.com/forecast/rss/1d/15.xml")
        city("江差", 16, "http://weather.livedoor.com/forecast/rss/1d/16.xml")
      end
    end
    area("東北地方", "http://weather.livedoor.com/forecast/rss/2.xml") do
      pref("青森県") do
        city("青森", 17, "http://weather.livedoor.com/forecast/rss/2/17.xml")
        city("むつ", 18, "http://weather.livedoor.com/forecast/rss/2/18.xml")
        city("八戸", 19, "http://weather.livedoor.com/forecast/rss/2/19.xml")
      end
      pref("秋田県") do
        city("秋田", 20, "http://weather.livedoor.com/forecast/rss/5/20.xml")
        city("横手", 21, "http://weather.livedoor.com/forecast/rss/5/21.xml")
      end
      pref("岩手県") do
        city("盛岡", 22, "http://weather.livedoor.com/forecast/rss/3/22.xml")
        city("宮古", 23, "http://weather.livedoor.com/forecast/rss/3/23.xml")
        city("大船渡", 24, "http://weather.livedoor.com/forecast/rss/3/24.xml")
      end
      pref("宮城県") do
        city("仙台", 25, "http://weather.livedoor.com/forecast/rss/4/25.xml")
        city("白石", 26, "http://weather.livedoor.com/forecast/rss/4/26.xml")
      end
      pref("山形県") do
        city("山形", 27, "http://weather.livedoor.com/forecast/rss/6/27.xml")
        city("米沢", 28, "http://weather.livedoor.com/forecast/rss/6/28.xml")
        city("酒田", 29, "http://weather.livedoor.com/forecast/rss/6/29.xml")
        city("新庄", 30, "http://weather.livedoor.com/forecast/rss/6/30.xml")
      end
      pref("福島県") do
        city("福島", 31, "http://weather.livedoor.com/forecast/rss/7/31.xml")
        city("小名浜", 32, "http://weather.livedoor.com/forecast/rss/7/32.xml")
        city("若松", 33, "http://weather.livedoor.com/forecast/rss/7/33.xml")
      end
    end
    area("関東地方", "http://weather.livedoor.com/forecast/rss/3.xml") do
      pref("茨城県") do
        city("水戸", 54, "http://weather.livedoor.com/forecast/rss/8/54.xml")
        city("土浦", 55, "http://weather.livedoor.com/forecast/rss/8/55.xml")
      end
      pref("栃木県") do
        city("宇都宮", 56, "http://weather.livedoor.com/forecast/rss/9/56.xml")
        city("大田原", 57, "http://weather.livedoor.com/forecast/rss/9/57.xml")
      end
      pref("群馬県") do
        city("前橋", 58, "http://weather.livedoor.com/forecast/rss/10/58.xml")
        city("みなかみ", 59, "http://weather.livedoor.com/forecast/rss/10/59.xml")
      end
      pref("埼玉県") do
        city("さいたま", 60, "http://weather.livedoor.com/forecast/rss/11/60.xml")
        city("熊谷", 61, "http://weather.livedoor.com/forecast/rss/11/61.xml")
        city("秩父", 62, "http://weather.livedoor.com/forecast/rss/11/62.xml")
      end
      pref("東京都") do
        city("東京", 63, "http://weather.livedoor.com/forecast/rss/13/63.xml")
        city("大島", 64, "http://weather.livedoor.com/forecast/rss/13/64.xml")
        city("八丈島", 65, "http://weather.livedoor.com/forecast/rss/13/65.xml")
        city("父島", 66, "http://weather.livedoor.com/forecast/rss/13/66.xml")
      end
      pref("千葉県") do
        city("千葉", 67, "http://weather.livedoor.com/forecast/rss/12/67.xml")
        city("銚子", 68, "http://weather.livedoor.com/forecast/rss/12/68.xml")
        city("館山", 69, "http://weather.livedoor.com/forecast/rss/12/69.xml")
      end
      pref("神奈川県") do
        city("横浜", 70, "http://weather.livedoor.com/forecast/rss/14/70.xml")
        city("小田原", 71, "http://weather.livedoor.com/forecast/rss/14/71.xml")
      end
      pref("山梨県") do
        city("甲府", 75, "http://weather.livedoor.com/forecast/rss/19/75.xml")
        city("河口湖", 76, "http://weather.livedoor.com/forecast/rss/19/76.xml")
      end
    end
    area("信越・北陸地方", "http://weather.livedoor.com/forecast/rss/4.xml") do
      pref("富山県") do
        city("富山", 44, "http://weather.livedoor.com/forecast/rss/16/44.xml")
        city("伏木", 45, "http://weather.livedoor.com/forecast/rss/16/45.xml")
      end
      pref("石川県") do
        city("金沢", 46, "http://weather.livedoor.com/forecast/rss/17/46.xml")
        city("輪島", 47, "http://weather.livedoor.com/forecast/rss/17/47.xml")
      end
      pref("福井県") do
        city("福井", 48, "http://weather.livedoor.com/forecast/rss/18/48.xml")
        city("敦賀", 49, "http://weather.livedoor.com/forecast/rss/18/49.xml")
      end
      pref("新潟県") do
        city("新潟", 50, "http://weather.livedoor.com/forecast/rss/15/50.xml")
        city("長岡", 51, "http://weather.livedoor.com/forecast/rss/15/51.xml")
        city("高田", 52, "http://weather.livedoor.com/forecast/rss/15/52.xml")
        city("相川", 53, "http://weather.livedoor.com/forecast/rss/15/53.xml")
      end
      pref("長野県") do
        city("長野", 72, "http://weather.livedoor.com/forecast/rss/20/72.xml")
        city("松本", 73, "http://weather.livedoor.com/forecast/rss/20/73.xml")
        city("飯田", 74, "http://weather.livedoor.com/forecast/rss/20/74.xml")
      end
    end
    area("東海地方", "http://weather.livedoor.com/forecast/rss/5.xml") do
      pref("静岡県") do
        city("静岡", 34, "http://weather.livedoor.com/forecast/rss/22/34.xml")
        city("網代", 35, "http://weather.livedoor.com/forecast/rss/22/35.xml")
        city("三島", 36, "http://weather.livedoor.com/forecast/rss/22/36.xml")
        city("浜松", 37, "http://weather.livedoor.com/forecast/rss/22/37.xml")
      end
      pref("愛知県") do
        city("名古屋", 38, "http://weather.livedoor.com/forecast/rss/23/38.xml")
        city("豊橋", 39, "http://weather.livedoor.com/forecast/rss/23/39.xml")
      end
      pref("岐阜県") do
        city("岐阜", 40, "http://weather.livedoor.com/forecast/rss/21/40.xml")
        city("高山", 41, "http://weather.livedoor.com/forecast/rss/21/41.xml")
      end
      pref("三重県") do
        city("津", 42, "http://weather.livedoor.com/forecast/rss/24/42.xml")
        city("尾鷲", 43, "http://weather.livedoor.com/forecast/rss/24/43.xml")
      end
    end
    area("近畿地方", "http://weather.livedoor.com/forecast/rss/6.xml") do
      pref("滋賀県") do
        city("大津", 77, "http://weather.livedoor.com/forecast/rss/25/77.xml")
        city("彦根", 78, "http://weather.livedoor.com/forecast/rss/25/78.xml")
      end
      pref("京都府") do
        city("京都", 79, "http://weather.livedoor.com/forecast/rss/26/79.xml")
        city("舞鶴", 80, "http://weather.livedoor.com/forecast/rss/26/80.xml")
      end
      pref("大阪府") do
        city("大阪", 81, "http://weather.livedoor.com/forecast/rss/27/81.xml")
      end
      pref("兵庫県") do
        city("神戸", 82, "http://weather.livedoor.com/forecast/rss/28/82.xml")
        city("豊岡", 83, "http://weather.livedoor.com/forecast/rss/28/83.xml")
      end
      pref("奈良県") do
        city("奈良", 84, "http://weather.livedoor.com/forecast/rss/29/84.xml")
        city("風屋", 85, "http://weather.livedoor.com/forecast/rss/29/85.xml")
      end
      pref("和歌山県") do
        city("和歌山", 86, "http://weather.livedoor.com/forecast/rss/30/86.xml")
        city("潮岬", 87, "http://weather.livedoor.com/forecast/rss/30/87.xml")
      end
    end
    area("中国地方", "http://weather.livedoor.com/forecast/rss/7.xml") do
      pref("岡山県") do
        city("岡山", 88, "http://weather.livedoor.com/forecast/rss/33/88.xml")
        city("津山", 89, "http://weather.livedoor.com/forecast/rss/33/89.xml")
      end
      pref("広島県") do
        city("広島", 90, "http://weather.livedoor.com/forecast/rss/34/90.xml")
        city("庄原", 91, "http://weather.livedoor.com/forecast/rss/34/91.xml")
      end
      pref("島根県") do
        city("松江", 92, "http://weather.livedoor.com/forecast/rss/32/92.xml")
        city("浜田", 93, "http://weather.livedoor.com/forecast/rss/32/93.xml")
        city("西郷", 94, "http://weather.livedoor.com/forecast/rss/32/94.xml")
      end
      pref("鳥取県") do
        city("鳥取", 95, "http://weather.livedoor.com/forecast/rss/31/95.xml")
        city("米子", 96, "http://weather.livedoor.com/forecast/rss/31/96.xml")
      end
      pref("山口県") do
        city("下関", 97, "http://weather.livedoor.com/forecast/rss/35/97.xml")
        city("山口", 98, "http://weather.livedoor.com/forecast/rss/35/98.xml")
        city("柳井", 99, "http://weather.livedoor.com/forecast/rss/35/99.xml")
        city("萩", 100, "http://weather.livedoor.com/forecast/rss/35/100.xml")
      end
    end
    area("四国地方", "http://weather.livedoor.com/forecast/rss/8.xml") do
      pref("徳島県") do
        city("徳島", 101, "http://weather.livedoor.com/forecast/rss/36/101.xml")
        city("日和佐", 102, "http://weather.livedoor.com/forecast/rss/36/102.xml")
      end
      pref("香川県") do
        city("高松", 103, "http://weather.livedoor.com/forecast/rss/37/103.xml")
      end
      pref("愛媛県") do
        city("松山", 104, "http://weather.livedoor.com/forecast/rss/38/104.xml")
        city("新居浜", 105, "http://weather.livedoor.com/forecast/rss/38/105.xml")
        city("宇和島", 106, "http://weather.livedoor.com/forecast/rss/38/106.xml")
      end
      pref("高知県") do
        city("高知", 107, "http://weather.livedoor.com/forecast/rss/39/107.xml")
        city("室戸", 108, "http://weather.livedoor.com/forecast/rss/39/108.xml")
        city("清水", 109, "http://weather.livedoor.com/forecast/rss/39/109.xml")
      end
    end
    area("九州地方", "http://weather.livedoor.com/forecast/rss/9.xml") do
      pref("福岡県") do
        city("福岡", 110, "http://weather.livedoor.com/forecast/rss/40/110.xml")
        city("八幡", 111, "http://weather.livedoor.com/forecast/rss/40/111.xml")
        city("飯塚", 112, "http://weather.livedoor.com/forecast/rss/40/112.xml")
        city("久留米", 113, "http://weather.livedoor.com/forecast/rss/40/113.xml")
      end
      pref("大分県") do
        city("大分", 114, "http://weather.livedoor.com/forecast/rss/44/114.xml")
        city("中津", 115, "http://weather.livedoor.com/forecast/rss/44/115.xml")
        city("日田", 116, "http://weather.livedoor.com/forecast/rss/44/116.xml")
        city("佐伯", 117, "http://weather.livedoor.com/forecast/rss/44/117.xml")
      end
      pref("長崎県") do
        city("長崎", 118, "http://weather.livedoor.com/forecast/rss/42/118.xml")
        city("佐世保", 119, "http://weather.livedoor.com/forecast/rss/42/119.xml")
        city("厳原", 120, "http://weather.livedoor.com/forecast/rss/42/120.xml")
        city("福江", 121, "http://weather.livedoor.com/forecast/rss/42/121.xml")
      end
      pref("佐賀県") do
        city("佐賀", 122, "http://weather.livedoor.com/forecast/rss/41/122.xml")
        city("伊万里", 123, "http://weather.livedoor.com/forecast/rss/41/123.xml")
      end
      pref("熊本県") do
        city("熊本", 124, "http://weather.livedoor.com/forecast/rss/43/124.xml")
        city("阿蘇乙姫", 125, "http://weather.livedoor.com/forecast/rss/43/125.xml")
        city("牛深", 126, "http://weather.livedoor.com/forecast/rss/43/126.xml")
        city("人吉", 127, "http://weather.livedoor.com/forecast/rss/43/127.xml")
      end
      pref("宮崎県") do
        city("宮崎", 128, "http://weather.livedoor.com/forecast/rss/45/128.xml")
        city("延岡", 129, "http://weather.livedoor.com/forecast/rss/45/129.xml")
        city("都城", 130, "http://weather.livedoor.com/forecast/rss/45/130.xml")
        city("高千穂", 131, "http://weather.livedoor.com/forecast/rss/45/131.xml")
      end
      pref("鹿児島県") do
        city("鹿児島", 132, "http://weather.livedoor.com/forecast/rss/46/132.xml")
        city("鹿屋", 133, "http://weather.livedoor.com/forecast/rss/46/133.xml")
        city("種子島", 134, "http://weather.livedoor.com/forecast/rss/46/134.xml")
        city("名瀬", 135, "http://weather.livedoor.com/forecast/rss/46/135.xml")
      end
    end
    area("南西諸島地方", "http://weather.livedoor.com/forecast/rss/10.xml") do
      pref("沖縄県") do
        city("那覇", 136, "http://weather.livedoor.com/forecast/rss/47/136.xml")
        city("名護", 137, "http://weather.livedoor.com/forecast/rss/47/137.xml")
        city("久米島", 138, "http://weather.livedoor.com/forecast/rss/47/138.xml")
        city("南大東島", 139, "http://weather.livedoor.com/forecast/rss/47/139.xml")
        city("宮古島", 140, "http://weather.livedoor.com/forecast/rss/47/140.xml")
        city("石垣島", 141, "http://weather.livedoor.com/forecast/rss/47/141.xml")
        city("与那国島", 142, "http://weather.livedoor.com/forecast/rss/47/142.xml")
      end
    end
  end
end
