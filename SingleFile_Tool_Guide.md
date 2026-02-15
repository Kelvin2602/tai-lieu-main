# SingleFile Extension - Hướng Dẫn Toàn Diện

## 📋 Giới thiệu

**SingleFile** là một công cụ mở rộng trình duyệt (browser extension) cực kỳ phổ biến và mạnh mẽ, được phát triển bởi **Gildas Lormeau**. Công cụ này cho phép người dùng lưu một bản sao chép chính xác của toàn bộ trang web vào một file HTML duy nhất.

### 🌟 Thông tin nổi bật:
- **⭐ 19,593 stars** trên GitHub
- **🍴 1,238 forks** 
- **💻 Ngôn ngữ:** JavaScript
- **📜 License:** AGPL-3.0
- **🌐 Hỗ trợ:** Chrome, Firefox, Edge, Safari, Vivaldi, Brave, Opera

---

## 🚀 Tính năng chính

### Core Features
- **📄 Save Complete Web Page**: Lưu toàn bộ trang web thành một file HTML duy nhất
- **🎨 Preserve Original Design**: Giữ nguyên hình thức và thiết kế của trang
- **📱 Responsive Layout**: Tương thích với các thiết bị di động
- **🔗 Internal Links**: Các link nội bộ vẫn hoạt động
- **📦 Media Embedding**: Hình ảnh, video, audio được nhúng vào file
- **⚡ Offline Viewing**: Xem trang web mà không cần Internet

### Advanced Features
- **🖼️ Screenshot Integration**: Chụp ảnh màn hình trang web
- **📝 Annotation**: Ghi chú và đánh dấu lên trang
- **🔄 Auto-save**: Tự động lưu các tab đang mở
- **☁️ Cloud Integration**: Tải lên Google Drive, GitHub
- **🗂️ Batch Processing**: Lưu nhiều tab cùng lúc
- **🔍 Search & Filter**: Tìm kiếm trong các trang đã lưu

---

## 📁 Cấu trúc Repository

```
SingleFile/
├── manifest.json              # Manifest cho extension
├── package.json               # Package info và dependencies
├── LICENSE                   # AGPL-3.0 license
├── README.md                 # Documentation
├── .github/                  # GitHub workflows và issues
├── _locales/                 # Internationalization files
│   ├── en/
│   ├── fr/
│   ├── de/
│   └── ...
├── src/                      # Source code chính
│   ├── core/                 # Core functionality
│   │   ├── bg/              # Background scripts
│   │   ├── hooks/            # Web hooks
│   │   ├── content/          # Content scripts
│   │   └── vendor/           # Third-party libraries
│   ├── ui/                   # User interface
│   │   ├── pages/            # Extension pages
│   │   └── resources/        # Icons và assets
│   └── lib/                   # Library files
├── lib/                      # Build libraries
├── tools/                     # Development tools
└── build-extension.sh         # Build script
```

---

## 📄 Manifest File Analysis

### Version hiện tại: **1.22.88**

```json
{
  "name": "SingleFile",
  "author": "Gildas Lormeau",
  "homepage_url": "https://www.getsinglefile.com/",
  "version": "1.22.88",
  "description": "__MSG_extensionDescription__",
  
  "icons": {
    "16": "src/ui/resources/icon_16.png",
    "32": "src/ui/resources/icon_32.png",
    "48": "src/ui/resources/icon_48.png",
    "64": "src/ui/resources/icon_64.png",
    "128": "src/ui/resources/icon_128.png"
  },
  
  "content_scripts": [
    {
      "matches": ["<all_urls>"],
      "run_at": "document_start",
      "js": [
        "lib/chrome-browser-polyfill.js",
        "lib/single-file-frames.js",
        "lib/single-file-extension-frames.js"
      ],
      "all_frames": true,
      "match_about_blank": true
    },
    {
      "matches": ["<all_urls>"],
      "run_at": "document_start",
      "js": [
        "lib/web-stream.js",
        "lib/chrome-browser-polyfill.js",
        "lib/single-file-bootstrap.js",
        "lib/single-file-extension-bootstrap.js",
        "lib/single-file-infobar.js"
      ]
    }
  ],
  
  "background": {
    "page": "src/core/bg/background.html"
  },
  
  "sidebar_action": {
    "browser_style": true,
    "default_title": "SingleFile",
    "default_panel": "src/ui/pages/panel.html",
    "default_icon": "src/ui/resources/icon_128.png",
    "open_at_install": false
  },
  
  "permissions": [
    "storage",
    "downloads",
    "tabs",
    "scripting",
    "contextMenus",
    "activeTab",
    "unlimitedStorage"
  ],
  
  "host_permissions": [
    "<all_urls>"
  ]
}
```

---

## 🛠️ Cách hoạt động

### 1. **Page Scanning**
- Content scripts quét toàn bộ DOM khi trang tải
- Thu thập tất cả resources (CSS, JS, images)
- Xử lý lazy-loaded content

### 2. **Resource Processing**
- **CSS**: Minify và embed vào HTML
- **Images**: Convert thành base64 và nhúng
- **Fonts**: Embed hoặc link đến font files
- **Scripts**: Remove hoặc tùy chọn embed

### 3. **HTML Generation**
- Tạo một HTML file độc lập
- Giữ nguyên structure và styling
- Thêm navigation và metadata
- Optimize cho offline viewing

---

## 📱 Các phiên bản và Platforms

### Extension Versions:
1. **Chrome Web Store**
   - Link: https://chromewebstore.google.com/detail/singlefile/mpiodijhokgodhhofbcjdecpffjipkle
   - Manifest V3 compatible

2. **Firefox Add-ons**
   - Desktop: https://addons.mozilla.org/firefox/addon/single-file
   - Android: https://addons.mozilla.org/android/addon/single-file

3. **Safari App Store**
   - macOS & iOS: https://apps.apple.com/us/app/singlefile-for-safari/id6444322545

4. **Microsoft Edge**
   - Link: https://microsoftedge.microsoft.com/addons/detail/efnbkdcfmcmnhlkaijjjmhjjgladedno

---

## 🎯 Hướng dẫn sử dụng chi tiết

### Basic Usage:
1. **Click icon** trên toolbar để lưu trang hiện tại
2. **Right-click** anywhere để mở context menu:
   - Save current tab
   - Save selected content
   - Save selected frame
   - Annotate and save

### Advanced Features:

#### **Multi-tab Saving:**
```
Right-click SingleFile icon → 
├── Save selected tabs
├── Save unpinned tabs  
└── Save all tabs
```

#### **Annotation Mode:**
```
Select "Annotate and save page..." →
├── Highlight text (yellow/green/blue)
├── Add sticky notes
├── Draw shapes
└── Erase content
```

#### **Auto-save:**
```
Right-click SingleFile icon → Auto-save →
├── Current tab
├── Unpinned tabs
└── All tabs
```

#### **Cloud Integration:**
```
Options → Destination →
├── Save to Google Drive
├── Upload to GitHub
├── Save to Dropbox
└── Custom webhook
```

---

## ⚙️ Configuration Options

### General Settings:
- **File Naming**: Template cho tên file (`{title}`, `{date}`, `{url}`)
- **Save Format**: HTML, Self-extracting ZIP, MHTML
- **Compression**: Enable/disable minification
- **Resource Handling**: Remove unused CSS/JS

### Advanced Options:
- **Shadow DOM**: Handle web components
- **Frame Handling**: Process iframes
- **Web Workers**: Include worker scripts
- **User Scripts**: Execute custom scripts

### Security Settings:
- **Remove Scripts**: Strip JavaScript for security
- **Sanitize HTML**: Remove potential XSS
- **Content Filtering**: Block certain content types

---

## 🔧 Keyboard Shortcuts

### Default Shortcuts:
- **Ctrl+Shift+Y**: Save current tab
- **Ctrl+Shift+S**: Save selected tabs
- **Ctrl+Shift+A**: Annotate and save
- **Esc**: Cancel current operation

### Customization:
- **Firefox**: about:addons → Manage extension shortcuts
- **Chrome**: chrome://extensions/shortcuts

---

## 📊 File Format Comparison

| Feature                    | HTML | Self-extracting ZIP | MHTML | Webarchive | HTML+folder |
|----------------------------|:-----:|:------------------:|:------:|:-----------:|:------------:|
| Single file               | ✓     | ✓                 | ✓      | ✓           |              |
| Minified HTML/CSS        | ✓     | ✓                 |        |              | ✓            |
| Remove unused resources   | ✓     | ✓                 |        |              |              |
| Base64 encoding          |        | ✓                 | ✓      |              | ✓            |
| File compression         |        | ✓                 |        |              | ✓            |
| View without extension    | ✓     | ✓¹                | ✓²     | ✓³          | ✓            |
| View without JavaScript   | ✓     |                    | ✓      | ✓           | ✓            |
| Can be unzipped         |        | ✓                 |        |              | n/a          |
| Text searchable         | ✓     | ✓⁴                | ✓      | ✓           | ✓            |

**Footnotes:**
¹ Universal self-extracting format
² Chromium-based browsers only  
³ Safari only
⁴ Option must be enabled

---

## 🔌 Integrations & Compatible Projects

### Popular Integrations:
1. **ArchiveBox** - Web archiving platform
2. **Karakeep** - Self-hosted bookmark manager
3. **Obsidian** - Note-taking with HTML plugin
4. **Zotero** - Reference management
5. **Trilium** - Knowledge management

### CLI Tool:
- **SingleFile CLI**: Command line interface
- **GitHub**: https://github.com/gildas-lormeau/single-file-cli

---

## 🚀 Best Practices

### For Users:
1. **Regular Backups**: Export saved pages periodically
2. **Organize by Folders**: Group related pages
3. **Use Annotations**: Add context and notes
4. **Enable Auto-save**: For important sites
5. **Cloud Sync**: Backup to multiple services

### For Developers:
1. **Validate HTML**: Ensure valid markup
2. **Optimize Images**: Compress before embedding
3. **Test Browsers**: Cross-compatibility check
4. **Handle Errors**: Graceful fallbacks
5. **Performance**: Lazy load heavy content

---

## 🔒 Security & Privacy

### Data Handling:
- **Local Storage**: All data stored locally by default
- **No Tracking**: No analytics or telemetry
- **Open Source**: Fully auditable code
- **Optional Cloud**: User-controlled uploads

### Security Features:
- **XSS Protection**: Sanitize user inputs
- **Content Security**: Configurable filtering
- **Permission Minimal**: Request only necessary permissions
- **Privacy Policy**: Transparent data usage

---

## 🆘 Troubleshooting Common Issues

### Issue: Page not saving completely
**Solutions:**
- Check for dynamic content loading
- Increase timeout in options
- Try different save format
- Disable browser extensions temporarily

### Issue: Large file sizes
**Solutions:**
- Enable compression in options
- Remove unused resources
- Use self-extracting ZIP format
- Split large pages into sections

### Issue: Broken styling
**Solutions:**
- Disable CSS minification
- Check for external font loading
- Verify shadow DOM handling
- Update to latest version

---

## 📈 Performance Optimization

### For Faster Processing:
1. **Enable Lazy Loading**: Process content progressively
2. **Resource Filtering**: Exclude unnecessary files
3. **Background Processing**: Use web workers
4. **Cache Results**: Store processed pages
5. **Parallel Operations**: Process multiple tabs

### Memory Management:
- Cleanup unused DOM elements
- Release blob URLs properly
- Manage event listeners
- Dispose large objects

---

## 🔮 Advanced Use Cases

### Academic Research:
- Save research papers with annotations
- Create offline reading libraries
- Archive reference materials
- Collaborative note-taking

### Web Development:
- Capture website states for testing
- Document UI/UX changes
- Create design portfolios
- Backup client work

### Content Creation:
- Archive social media posts
- Save news articles
- Collect inspiration
- Build knowledge bases

---

## 📞 Support & Community

### Official Resources:
- **Website**: https://www.getsinglefile.com
- **Documentation**: https://github.com/gildas-lormeau/SingleFile/wiki
- **FAQ**: https://github.com/gildas-lormeau/SingleFile/blob/master/faq.md
- **Issues**: https://github.com/gildas-lormeau/SingleFile/issues

### Community:
- **Discord**: Active developer community
- **Reddit**: r/SingleFile subreddit
- **Stack Overflow**: Tag with singlefile
- **Twitter**: @SingleFileTool

---

## 🔄 Updates & Roadmap

### Recent Updates (v1.22.88):
- Improved mobile compatibility
- Enhanced annotation tools
- Better cloud integration
- Performance optimizations

### Upcoming Features:
- AI-powered content summarization
- Advanced search functionality
- Team collaboration features
- Mobile app companion

---

## 📄 License Information

**AGPL-3.0 License:**
- ✅ Commercial use allowed
- ✅ Modification allowed
- ✅ Distribution allowed
- ✅ Patent use allowed
- ⚠️ Disclose source
- ⚠️ Same license
- ⚠️ License and copyright notice

### Commercial Licensing:
Contact: gildas.lormeau@gmail.com
for commercial licensing options

---

## 🌟 Conclusion

**SingleFile** là một công cụ không thể thiếu cho:
- 📚 **Researchers** lưu trữ tài liệu
- 👨‍💻 **Developers** backup trạng thái web
- 📝 **Content creators** archive works
- 🎓 **Students** học tập offline
- 💼 **Professionals** lưu trữ thông tin quan trọng

Với cộng đồng lớn, documentation chi tiết, và features mạnh mẽ, SingleFile thực sự là một trong những browser extension tốt nhất hiện có! 🏆

---

**Quick Start:** Install ngay hôm nay và bắt đầu lưu trữ web pages một cách hiệu quả! 🚀