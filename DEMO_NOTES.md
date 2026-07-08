# AI Job Form Filler — Browser Extension

Ek click mein LinkedIn, Naukri, Internshala aur kisi bhi job site ka form auto-fill karo!

---

## Setup (sirf ek baar karna hai)

### Step 1 — Anthropic API Key lo (FREE)
1. Jao: https://console.anthropic.com
2. Sign up karo (free hai)
3. "API Keys" mein jaake ek key banao
4. Copy karke rakh lo — `sk-ant-api03-...` jaisi dikhegi

### Step 2 — Extension Chrome mein load karo
1. Chrome mein jao: `chrome://extensions`
2. Top-right mein **"Developer mode"** ON karo
3. **"Load unpacked"** button dabao
4. Ye wala folder select karo: `autofill-extension/`
5. Done! Extension bar mein ✦ icon dikhega

### Step 3 — Resume setup karo
1. Extension icon pe click karo
2. **"Setup"** tab mein jao
3. Apna Resume PDF upload karo
4. API key paste karo
5. **"Parse Resume with AI"** dabao
6. Ek baar karna hai — save ho jaata hai!

---

## Use kaise karna hai

1. Kisi bhi job site pe jao (LinkedIn, Naukri, Internshala, etc.)
2. Application form open karo
3. Extension icon dabao (✦)
4. **"Auto-fill this page"** dabao
5. 🎉 Form fill ho jayega!

### Custom questions ke liye:
- Form mein koi special question hai? (e.g. "Why do you want to join us?")
- Extension mein **"Custom question"** box mein likho
- AI tumhare resume ke basis pe answer likhega aur fill karega

---

## Files ka structure

```
autofill-extension/
├── manifest.json      ← Extension config
├── popup.html         ← Extension ka UI
├── popup.js           ← Main logic
├── background.js      ← Background worker
├── content.js         ← Page injection
├── icons/             ← Extension icons
│   ├── icon16.png
│   ├── icon48.png
│   └── icon128.png
└── README.md          ← Ye file
```

---

## Friends ko dena hai?

1. Ye poora `autofill-extension` folder zip karo
2. Unhe bhejo
3. Unhe bhi "Step 2" se setup karna hoga
4. Apni API key unhe share karo ya unhone khud banao (free hai)

---

## Sites pe kaam karta hai

- ✅ LinkedIn Jobs
- ✅ Naukri.com
- ✅ Internshala
- ✅ Indeed
- ✅ Unstop
- ✅ Wellfound (AngelList)
- ✅ Company career pages
- ✅ Google Forms
- ✅ Koi bhi site jahan input fields hoon

---

## Common issues

**Extension load nahi ho rahi?**
→ Developer mode ON hai? manifest.json sahi folder mein hai?

**Fill nahi ho raha?**
→ Pehle "Scan fields again" dabao, phir fill karo

**API error aa raha hai?**
→ API key check karo — `sk-ant-` se start honi chahiye

**LinkedIn pe nahi ho raha?**
→ Kuch sites React use karti hain — thoda slow fill hota hai, wait karo
