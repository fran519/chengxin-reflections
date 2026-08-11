# 澄心所｜聊完以後

這是一個可正式上線的第一版網站架構：
- 公開頁：大家看得到已審核的分享
- 投稿：暱稱＋聊完的感受
- 審核：先進 pending，不會直接公開
- 管理頁：admin.html，用 Supabase Email OTP 登入後審核
- 資料：Supabase

## 上線步驟
1. 建立 Supabase 專案。
2. 在 SQL Editor 執行 `supabase.sql`。
3. 到 Project Settings > API 取得 Project URL 與 anon key。
4. 把 `index.html` 和 `admin.html` 裡的 YOUR_SUPABASE_URL / YOUR_SUPABASE_ANON_KEY 換成你的值。
5. 在 Supabase Authentication > URL Configuration 設定正式網站網址，並加入 admin.html 的網址。
6. 把這個資料夾部署到任何支援靜態網站的主機（例如你自己的網域／現有網站空間）。
7. 將網站首頁網址做成 QR Code，放在小村桌上。

## 管理
打開 `/admin.html`，輸入你的 Email。Supabase 會寄登入連結；登入後可以把 pending 改成 published 或刪除。

## 隱私提醒
不要在分享文字裡要求姓名、電話、病史等敏感資訊。公開前由你人工確認；若未來有人要求撤下，直接在管理頁刪除即可。


修正版：已支援 Supabase 新版 sb_publishable_ 前端金鑰格式；前台投稿會連到 reflections 資料表。
Vercel deployment
