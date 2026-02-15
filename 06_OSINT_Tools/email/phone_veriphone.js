const https = require('https');

console.log('=== SỬ DỤNG VERIPHONE API CHO ĐỊNH VỊ SỐ ĐIỆN THOẠI ===');
console.log('');

const analyzePhone = (phoneNumber, index) => {
    console.log(`--- SỐ ${index}: +${phoneNumber} ---`);
    
    const url = `https://api.veriphone.io/v2/lookup?key=921F86FB651A47579B866E8D1F180F6B&phone=${phoneNumber}`;
    
    https.get(url, (response) => {
        let data = '';
        
        response.on('data', (chunk) => {
            data += chunk;
        });
        
        response.on('end', () => {
            try {
                const result = JSON.parse(data);
                console.log('Thông tin chi tiết:');
                console.log('Status:', result.status || 'Không xác định');
                console.log('Carrier:', result.carrier || 'Không tìm thấy');
                console.log('Loại:', result.phone_type || 'Không tìm thấy');
                console.log('Quốc gia:', result.country || 'Không tìm thấy');
                console.log('Mã quốc gia:', result.country_code || 'Không tìm thấy');
                console.log('Định dạng:', result.phone_format || 'Không tìm thấy');
                console.log('Có hợp lệ:', result.phone_valid || false);
                
                if (result.carrier && result.carrier.toLowerCase().includes('viettel')) {
                    console.log('🔍 Nhận dạng: Viettel (Viễn thông Quân đội)');
                } else if (result.carrier && result.carrier.toLowerCase().includes('vinaphone')) {
                    console.log('🔍 Nhận dạng: Vinaphone');
                } else if (result.carrier && result.carrier.toLowerCase().includes('mobifone')) {
                    console.log('🔍 Nhận dạng: Mobifone');
                }
                
            } catch (error) {
                console.error('Lỗi phân tích:', error.message);
            }
            console.log('');
        });
    }).on('error', (err) => {
        console.error('Lỗi kết nối:', err.message);
        console.log('');
    });
};

// Phân tích 3 số điện thoại
analyzePhone('84374268765', 1);
analyzePhone('981806100', 2);  // Bỏ mã nước +84
analyzePhone('84393414155', 3);

console.log('=== KẾT THÚC ===');
console.log('Ghi chú:');
console.log('- API key có giới hạn usage');
console.log('- Các số Việt Nam có thể không có đầy đủ thông tin');
console.log('- Thông tin vị trí có thể không chính xác 100%');
console.log('- Cần tuân thủ quy định về bảo mật thông tin');