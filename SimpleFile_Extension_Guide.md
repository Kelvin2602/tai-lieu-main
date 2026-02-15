# SimpleFile Extension Guide

## 📋 Giới thiệu

**SimpleFile Extension** là một trình duyệt extension đơn giản nhưng mạnh mẽ, được thiết kế để quản lý và tương tác với các file trực tiếp từ trình duyệt. Extension này cung cấp giao diện thân thiện để thực hiện các thao tác file cơ bản như upload, download, xem và quản lý file.

---

## 🚀 Tính năng chính

### Core Features
- **File Upload**: Tải lên file dễ dàng từ popup
- **File Preview**: Xem trước nội dung file phổ biến (text, image, PDF)
- **Download Management**: Quản lý các file đã tải xuống
- **File Search**: Tìm kiếm file trong lịch sử
- **Cloud Integration**: Kết nối với các dịch vụ lưu trữ đám mây
- **Drag & Drop**: Hỗ trợ kéo và thả file

### Advanced Features
- **File Compression**: Nén và giải nén file
- **Format Conversion**: Chuyển đổi định dạng file cơ bản
- **Batch Operations**: Xử lý nhiều file cùng lúc
- **Security Scan**: Quét virus cho file tải lên

---

## 📁 Cấu trúc thư mục

```
simplefile-extension/
├── manifest.json              # File manifest chính
├── popup/                    # Popup interface
│   ├── popup.html            # HTML cho popup
│   ├── popup.css             # Style cho popup
│   └── popup.js             # Logic cho popup
├── background/                # Background script
│   └── background.js         # Service worker
├── content/                  # Content script
│   └── content.js           # Tương tác với webpage
├── icons/                    # Icons cho extension
│   ├── icon16.png
│   ├── icon32.png
│   ├── icon48.png
│   └── icon128.png
├── lib/                      # Thư viện utilities
│   ├── fileManager.js         # Quản lý file
│   ├── cloudAPI.js           # API cloud services
│   └── utils.js              # Helper functions
└── options/                   # Options page
    ├── options.html
    ├── options.css
    └── options.js
```

---

## 📄 File Manifest (Manifest V3)

```json
{
  "manifest_version": 3,
  "name": "SimpleFile",
  "version": "1.0.0",
  "description": "Simple and powerful file management extension",
  
  "permissions": [
    "storage",
    "downloads",
    "activeTab",
    "scripting",
    "contextMenus",
    "notifications"
  ],
  
  "host_permissions": [
    "https://*/*",
    "http://*/*"
  ],
  
  "background": {
    "service_worker": "background/background.js",
    "type": "module"
  },
  
  "action": {
    "default_popup": "popup/popup.html",
    "default_title": "SimpleFile Manager",
    "default_icon": {
      "16": "icons/icon16.png",
      "32": "icons/icon32.png",
      "48": "icons/icon48.png",
      "128": "icons/icon128.png"
    }
  },
  
  "content_scripts": [
    {
      "matches": ["<all_urls>"],
      "js": ["content/content.js"],
      "css": ["content/content.css"]
    }
  ],
  
  "options_page": "options/options.html",
  
  "icons": {
    "16": "icons/icon16.png",
    "32": "icons/icon32.png",
    "48": "icons/icon48.png",
    "128": "icons/icon128.png"
  },
  
  "web_accessible_resources": [
    {
      "resources": ["lib/*", "assets/*"],
      "matches": ["<all_urls>"]
    }
  ]
}
```

---

## 💻 Code ví dụ

### 1. Popup HTML (`popup/popup.html`)

```html
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SimpleFile Manager</title>
    <link rel="stylesheet" href="popup.css">
</head>
<body>
    <div class="container">
        <header class="header">
            <h1>📁 SimpleFile</h1>
            <div class="search-box">
                <input type="text" id="searchInput" placeholder="Tìm kiếm file...">
                <button id="searchBtn">🔍</button>
            </div>
        </header>
        
        <main class="main-content">
            <div class="upload-section">
                <div class="drop-zone" id="dropZone">
                    <div class="drop-content">
                        <span class="drop-icon">📤</span>
                        <p>Kéo và thả file hoặc click để chọn</p>
                        <input type="file" id="fileInput" multiple hidden>
                    </div>
                </div>
            </div>
            
            <div class="file-list">
                <h3>File gần đây</h3>
                <div id="recentFiles" class="files-grid">
                    <!-- File list sẽ được populated bằng JS -->
                </div>
            </div>
            
            <div class="quick-actions">
                <button id="clearBtn" class="btn btn-danger">🗑️ Xóa lịch sử</button>
                <button id="settingsBtn" class="btn btn-primary">⚙️ Cài đặt</button>
            </div>
        </main>
    </div>
    
    <script src="popup.js"></script>
</body>
</html>
```

### 2. Popup CSS (`popup/popup.css`)

```css
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    width: 400px;
    height: 600px;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}

.container {
    height: 100%;
    display: flex;
    flex-direction: column;
    background: white;
    margin: 0;
}

.header {
    background: #2c3e50;
    color: white;
    padding: 15px;
    border-radius: 10px 10px 0 0;
}

.header h1 {
    font-size: 1.5rem;
    margin-bottom: 10px;
    text-align: center;
}

.search-box {
    display: flex;
    gap: 5px;
}

.search-box input {
    flex: 1;
    padding: 8px 12px;
    border: none;
    border-radius: 5px;
    background: rgba(255,255,255,0.1);
    color: white;
    outline: none;
}

.search-box input::placeholder {
    color: rgba(255,255,255,0.7);
}

.search-box button {
    padding: 8px 12px;
    border: none;
    border-radius: 5px;
    background: #3498db;
    color: white;
    cursor: pointer;
    transition: background 0.3s;
}

.search-box button:hover {
    background: #2980b9;
}

.main-content {
    flex: 1;
    padding: 20px;
    overflow-y: auto;
}

.drop-zone {
    border: 2px dashed #3498db;
    border-radius: 10px;
    padding: 30px;
    text-align: center;
    margin-bottom: 20px;
    transition: all 0.3s ease;
    cursor: pointer;
}

.drop-zone:hover, .drop-zone.dragover {
    background: #ecf0f1;
    border-color: #2980b9;
}

.drop-icon {
    font-size: 3rem;
    display: block;
    margin-bottom: 10px;
}

.file-list h3 {
    margin-bottom: 15px;
    color: #2c3e50;
}

.files-grid {
    display: grid;
    gap: 10px;
    margin-bottom: 20px;
}

.file-item {
    background: #f8f9fa;
    border: 1px solid #dee2e6;
    border-radius: 8px;
    padding: 12px;
    display: flex;
    align-items: center;
    gap: 10px;
    transition: transform 0.2s;
}

.file-item:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

.file-icon {
    font-size: 1.5rem;
}

.file-info {
    flex: 1;
}

.file-name {
    font-weight: 600;
    color: #2c3e50;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.file-size {
    font-size: 0.8rem;
    color: #6c757d;
}

.quick-actions {
    display: flex;
    gap: 10px;
    justify-content: space-between;
}

.btn {
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-weight: 600;
    transition: all 0.3s ease;
}

.btn-primary {
    background: #3498db;
    color: white;
}

.btn-primary:hover {
    background: #2980b9;
}

.btn-danger {
    background: #e74c3c;
    color: white;
}

.btn-danger:hover {
    background: #c0392b;
}

/* Scrollbar styling */
.main-content::-webkit-scrollbar {
    width: 6px;
}

.main-content::-webkit-scrollbar-track {
    background: #f1f1f1;
}

.main-content::-webkit-scrollbar-thumb {
    background: #c1c1c1;
    border-radius: 3px;
}

.main-content::-webkit-scrollbar-thumb:hover {
    background: #a8a8a8;
}
```

### 3. Popup JavaScript (`popup/popup.js`)

```javascript
class SimpleFilePopup {
    constructor() {
        this.initializeElements();
        this.bindEvents();
        this.loadRecentFiles();
    }

    initializeElements() {
        this.dropZone = document.getElementById('dropZone');
        this.fileInput = document.getElementById('fileInput');
        this.searchInput = document.getElementById('searchInput');
        this.searchBtn = document.getElementById('searchBtn');
        this.recentFiles = document.getElementById('recentFiles');
        this.clearBtn = document.getElementById('clearBtn');
        this.settingsBtn = document.getElementById('settingsBtn');
    }

    bindEvents() {
        // Drag and drop events
        this.dropZone.addEventListener('click', () => this.fileInput.click());
        this.dropZone.addEventListener('dragover', this.handleDragOver.bind(this));
        this.dropZone.addEventListener('dragleave', this.handleDragLeave.bind(this));
        this.dropZone.addEventListener('drop', this.handleDrop.bind(this));
        
        // File input change
        this.fileInput.addEventListener('change', this.handleFileSelect.bind(this));
        
        // Search events
        this.searchBtn.addEventListener('click', this.searchFiles.bind(this));
        this.searchInput.addEventListener('keypress', (e) => {
            if (e.key === 'Enter') this.searchFiles();
        });
        
        // Action buttons
        this.clearBtn.addEventListener('click', this.clearHistory.bind(this));
        this.settingsBtn.addEventListener('click', this.openSettings.bind(this));
    }

    handleDragOver(e) {
        e.preventDefault();
        e.stopPropagation();
        this.dropZone.classList.add('dragover');
    }

    handleDragLeave(e) {
        e.preventDefault();
        e.stopPropagation();
        this.dropZone.classList.remove('dragover');
    }

    handleDrop(e) {
        e.preventDefault();
        e.stopPropagation();
        this.dropZone.classList.remove('dragover');
        
        const files = Array.from(e.dataTransfer.files);
        this.processFiles(files);
    }

    handleFileSelect(e) {
        const files = Array.from(e.target.files);
        this.processFiles(files);
    }

    async processFiles(files) {
        for (const file of files) {
            await this.uploadFile(file);
        }
        this.loadRecentFiles();
    }

    async uploadFile(file) {
        try {
            // Lưu file vào Chrome storage
            const fileInfo = {
                id: Date.now() + Math.random(),
                name: file.name,
                size: this.formatFileSize(file.size),
                type: file.type,
                uploadDate: new Date().toISOString(),
                data: await this.readFileAsBase64(file)
            };

            // Lưu vào storage
            const { files = [] } = await chrome.storage.local.get(['files']);
            files.unshift(fileInfo);
            
            // Giới hạn 50 file gần nhất
            if (files.length > 50) {
                files.splice(50);
            }

            await chrome.storage.local.set({ files });

            // Gửi message cho background script
            chrome.runtime.sendMessage({
                action: 'fileUploaded',
                file: fileInfo
            });

            this.showNotification(`✅ ${file.name} đã được tải lên!`);
            
        } catch (error) {
            console.error('Upload error:', error);
            this.showNotification(`❌ Lỗi khi tải lên ${file.name}`, 'error');
        }
    }

    readFileAsBase64(file) {
        return new Promise((resolve, reject) => {
            const reader = new FileReader();
            reader.onload = () => resolve(reader.result);
            reader.onerror = reject;
            reader.readAsDataURL(file);
        });
    }

    formatFileSize(bytes) {
        if (bytes === 0) return '0 Bytes';
        const k = 1024;
        const sizes = ['Bytes', 'KB', 'MB', 'GB'];
        const i = Math.floor(Math.log(bytes) / Math.log(k));
        return parseFloat((bytes / Math.pow(k, i)).toFixed(2)) + ' ' + sizes[i];
    }

    async loadRecentFiles() {
        const { files = [] } = await chrome.storage.local.get(['files']);
        this.displayFiles(files.slice(0, 10)); // Hiển thị 10 file gần nhất
    }

    displayFiles(files) {
        this.recentFiles.innerHTML = '';

        if (files.length === 0) {
            this.recentFiles.innerHTML = '<p style="text-align: center; color: #6c757d;">Chưa có file nào</p>';
            return;
        }

        files.forEach(file => {
            const fileElement = this.createFileElement(file);
            this.recentFiles.appendChild(fileElement);
        });
    }

    createFileElement(file) {
        const div = document.createElement('div');
        div.className = 'file-item';
        
        const icon = this.getFileIcon(file.type);
        const date = new Date(file.uploadDate).toLocaleDateString('vi-VN');
        
        div.innerHTML = `
            <span class="file-icon">${icon}</span>
            <div class="file-info">
                <div class="file-name">${file.name}</div>
                <div class="file-size">${file.size} • ${date}</div>
            </div>
        `;
        
        div.addEventListener('click', () => this.openFile(file));
        return div;
    }

    getFileIcon(fileType) {
        if (fileType.startsWith('image/')) return '🖼️';
        if (fileType.startsWith('video/')) return '🎥';
        if (fileType.startsWith('audio/')) return '🎵';
        if (fileType.includes('pdf')) return '📄';
        if (fileType.includes('zip') || fileType.includes('rar')) return '🗜️';
        if (fileType.includes('text') || fileType.includes('document')) return '📝';
        return '📎';
    }

    openFile(file) {
        // Mở file trong tab mới
        if (file.data.startsWith('data:')) {
            const tab = window.open();
            tab.document.write(`<iframe src="${file.data}" style="width:100%;height:100vh;border:none;"></iframe>`);
        }
    }

    searchFiles() {
        const query = this.searchInput.value.toLowerCase();
        if (!query) {
            this.loadRecentFiles();
            return;
        }

        chrome.storage.local.get(['files'], ({ files = [] }) => {
            const filtered = files.filter(file => 
                file.name.toLowerCase().includes(query)
            );
            this.displayFiles(filtered);
        });
    }

    async clearHistory() {
        if (confirm('Bạn có chắc muốn xóa toàn bộ lịch sử file?')) {
            await chrome.storage.local.set({ files: [] });
            this.loadRecentFiles();
            this.showNotification('🗑️ Lịch sử đã được xóa');
        }
    }

    openSettings() {
        chrome.runtime.openOptionsPage();
    }

    showNotification(message, type = 'success') {
        chrome.notifications.create({
            type: 'basic',
            iconUrl: 'icons/icon48.png',
            title: 'SimpleFile',
            message: message
        });
    }
}

// Khởi tạo popup khi DOM ready
document.addEventListener('DOMContentLoaded', () => {
    new SimpleFilePopup();
});
```

### 4. Background Script (`background/background.js`)

```javascript
class SimpleFileBackground {
    constructor() {
        this.initializeEvents();
    }

    initializeEvents() {
        // Context menu for files
        chrome.runtime.onInstalled.addListener(() => {
            this.createContextMenu();
        });

        // Message handling
        chrome.runtime.onMessage.addListener(this.handleMessage.bind(this));

        // Download management
        chrome.downloads.onChanged.addListener(this.handleDownloadChanged.bind(this));

        // Tab updates for file detection
        chrome.tabs.onUpdated.addListener(this.handleTabUpdated.bind(this));
    }

    createContextMenu() {
        chrome.contextMenus.create({
            id: 'simplefile-save',
            title: '💾 Lưu với SimpleFile',
            contexts: ['page', 'selection', 'image', 'video', 'audio']
        });

        chrome.contextMenus.onClicked.addListener(this.handleContextMenu.bind(this));
    }

    async handleContextMenu(info, tab) {
        if (info.menuItemId === 'simplefile-save') {
            await this.saveFromContextMenu(info, tab);
        }
    }

    async saveFromContextMenu(info, tab) {
        try {
            let fileData;

            switch (info.mediaType) {
                case 'image':
                    fileData = await this.saveImage(info);
                    break;
                case 'video':
                    fileData = await this.saveVideo(info);
                    break;
                case 'audio':
                    fileData = await this.saveAudio(info);
                    break;
                default:
                    fileData = await this.savePage(info, tab);
            }

            const { files = [] } = await chrome.storage.local.get(['files']);
            files.unshift(fileData);
            
            if (files.length > 50) files.splice(50);

            await chrome.storage.local.set({ files });

            chrome.notifications.create({
                type: 'basic',
                iconUrl: 'icons/icon48.png',
                title: 'SimpleFile',
                message: `✅ ${fileData.name} đã được lưu!`
            });

        } catch (error) {
            console.error('Context menu save error:', error);
        }
    }

    async saveImage(info) {
        const response = await fetch(info.srcUrl);
        const blob = await response.blob();
        
        return {
            id: Date.now(),
            name: info.srcUrl.split('/').pop() || 'image.jpg',
            size: this.formatFileSize(blob.size),
            type: blob.type || 'image/jpeg',
            uploadDate: new Date().toISOString(),
            url: info.srcUrl,
            source: 'context-menu'
        };
    }

    async savePage(info, tab) {
        return {
            id: Date.now(),
            name: `${tab.title}.html`,
            size: 'Unknown',
            type: 'text/html',
            uploadDate: new Date().toISOString(),
            url: tab.url,
            title: tab.title,
            source: 'context-menu'
        };
    }

    handleMessage(request, sender, sendResponse) {
        switch (request.action) {
            case 'getFile':
                this.getFile(request.id, sendResponse);
                return true; // Keep message channel open
                
            case 'deleteFile':
                this.deleteFile(request.id, sendResponse);
                return true;
                
            case 'exportFiles':
                this.exportFiles(sendResponse);
                return true;
                
            case 'cloudSync':
                this.syncToCloud(request.provider, sendResponse);
                return true;
        }
    }

    async getFile(id, sendResponse) {
        const { files = [] } = await chrome.storage.local.get(['files']);
        const file = files.find(f => f.id === id);
        sendResponse({ success: true, file });
    }

    async deleteFile(id, sendResponse) {
        const { files = [] } = await chrome.storage.local.get(['files']);
        const updatedFiles = files.filter(f => f.id !== id);
        await chrome.storage.local.set({ files: updatedFiles });
        sendResponse({ success: true });
    }

    handleDownloadChanged(downloadDelta) {
        if (downloadDelta.state && downloadDelta.state.current === 'complete') {
            // Xử lý khi download hoàn tất
            this.handleDownloadComplete(downloadDelta);
        }
    }

    handleDownloadComplete(downloadDelta) {
        // Thông báo khi download hoàn tất
        chrome.notifications.create({
            type: 'basic',
            iconUrl: 'icons/icon48.png',
            title: 'Download Hoàn Tất',
            message: `${downloadDelta.filename || 'File'} đã được tải xuống`
        });
    }

    handleTabUpdated(tabId, changeInfo, tab) {
        // Detect files trên trang web
        if (changeInfo.status === 'complete' && tab.url) {
            this.detectFilesOnPage(tabId);
        }
    }

    async detectFilesOnPage(tabId) {
        try {
            // Inject content script để detect files
            chrome.scripting.executeScript({
                target: { tabId },
                func: this.scanForFiles
            });
        } catch (error) {
            console.error('Error injecting script:', error);
        }
    }

    scanForFiles() {
        // Scan cho downloadable files trên trang
        const fileLinks = document.querySelectorAll('a[href$=".pdf"], a[href$=".zip"], a[href$=".jpg"], a[href$=".png"]');
        
        if (fileLinks.length > 0) {
            // Gửi thông tin về background
            chrome.runtime.sendMessage({
                action: 'filesDetected',
                count: fileLinks.length,
                url: window.location.href
            });
        }
    }

    formatFileSize(bytes) {
        if (bytes === 0) return '0 Bytes';
        const k = 1024;
        const sizes = ['Bytes', 'KB', 'MB', 'GB'];
        const i = Math.floor(Math.log(bytes) / Math.log(k));
        return parseFloat((bytes / Math.pow(k, i)).toFixed(2)) + ' ' + sizes[i];
    }
}

// Khởi tạo background service worker
new SimpleFileBackground();
```

---

## ⚙️ Hướng dẫn cài đặt và sử dụng

### Cài đặt trong Chrome:
1. **Download** source code extension
2. **Mở** `chrome://extensions/` trong Chrome
3. **Bật** "Developer mode" (góc phải trên)
4. **Click** "Load unpacked"
5. **Chọn** thư mục extension
6. **Pin** extension vào toolbar

### Sử dụng cơ bản:
1. **Click** vào icon extension trên toolbar
2. **Drag & drop** file vào popup để upload
3. **Click** file để xem nội dung
4. **Right-click** trên webpage để lưu với SimpleFile
5. **Search** file trong lịch sử

---

## 🔧 Tùy chỉnh nâng cao

### Options Page (`options/options.html`)

```html
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SimpleFile - Cài đặt</title>
    <link rel="stylesheet" href="options.css">
</head>
<body>
    <div class="container">
        <h1>⚙️ Cài đặt SimpleFile</h1>
        
        <section class="settings-section">
            <h2>📁 Lưu trữ</h2>
            <label>
                <input type="number" id="maxFiles" min="10" max="200" value="50">
                Số lượng file tối đa
            </label>
            
            <label>
                <input type="checkbox" id="autoClean" checked>
                Tự động dọn dẹp file cũ
            </label>
        </section>
        
        <section class="settings-section">
            <h2>☁️ Đồng bộ đám mây</h2>
            <label>
                <input type="checkbox" id="dropboxEnabled">
                Đồng bộ với Dropbox
            </label>
            
            <label>
                <input type="checkbox" id="googleDriveEnabled">
                Đồng bộ với Google Drive
            </label>
        </section>
        
        <section class="settings-section">
            <h2>🔒 Bảo mật</h2>
            <label>
                <input type="checkbox" id="scanUploads" checked>
                Quét virus file tải lên
            </label>
            
            <label>
                <input type="checkbox" id="encryptStorage">
                Mã hóa lưu trữ local
            </label>
        </section>
        
        <div class="actions">
            <button id="saveSettings" class="btn btn-primary">Lưu cài đặt</button>
            <button id="exportData" class="btn btn-secondary">Xuất dữ liệu</button>
            <button id="importData" class="btn btn-secondary">Nhập dữ liệu</button>
        </div>
    </div>
    
    <script src="options.js"></script>
</body>
</html>
```

---

## 🛡️ Security Best Practices

### 1. Input Validation
- Validate file types and sizes
- Sanitize file names
- Check for malicious content

### 2. Storage Security
- Use encryption for sensitive data
- Implement access controls
- Regular data cleanup

### 3. API Security
- Validate all external API calls
- Use HTTPS for all communications
- Implement rate limiting

---

## 📱 Responsive Design

Extension được thiết kế để hoạt động tốt trên:
- **Desktop Chrome/Edge**
- **Mobile Chrome**
- **ChromeOS**
- **Chromebooks**

---

## 🔄 Updates & Maintenance

### Version Control
- Semantic versioning (1.0.0, 1.0.1, 1.1.0)
- Auto-update through Chrome Web Store
- Migration scripts for data compatibility

### Performance Optimization
- Lazy loading for large file lists
- Efficient storage usage
- Memory management for background scripts

---

## 📞 Hỗ trợ và Feedback

### Documentation
- **GitHub Wiki**: https://github.com/your-repo/simplefile-extension/wiki
- **API Reference**: Chi tiết các APIs và methods
- **Troubleshooting**: Common issues and solutions

### Community
- **Issues**: Report bugs và feature requests
- **Discussions**: Q&A và best practices
- **Contributing**: Guidelines cho developers

---

## 🚀 Roadmap

### Version 1.1 (Upcoming)
- [ ] Enhanced file preview
- [ ] Batch operations
- [ ] Cloud sync improvements

### Version 1.2 (Future)
- [ ] AI-powered file organization
- [ ] Advanced search with filters
- [ ] File sharing capabilities

---

## 📄 License

MIT License - Freedom to use, modify, and distribute

---

**SimpleFile Extension** - Quản lý file đơn giản, hiệu quả và an toàn ngay trên trình duyệt của bạn! 🎉