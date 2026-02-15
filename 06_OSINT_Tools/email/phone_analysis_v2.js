const https = require('https');

console.log('=== BÁO CÁO PHÂN TÍCH VỊ TRÍ SỐ ĐIỆN THOẠI ===');
console.log('Thời gian:', new Date().toLocaleString('vi-VN'));
console.log('');

// Dữ liệu phân tích đầu số Việt Nam
const vietnamCarriers = {
    '84': 'Viettel',
    '86': 'Viettel',
    '88': 'Vinaphone',
    '91': 'Vinaphone', 
    '83': 'Mobifone',
    '84': 'Viettel',
    '85': 'Mobifone',
    '89': 'Mobifone',
    '92': 'Viettel',
    '93': 'Viettel',
    '94': 'Viettel',
    '96': 'Viettel',
    '97': 'Viettel',
    '98': 'Viettel',
    '99': 'Viettel'
};

function analyzeVietnamPhone(phoneNumber) {
    // Loại bỏ các ký tự không phải số
    const cleanPhone = phoneNumber.replace(/[^0-9]/g, '');
    
    // Nếu bắt đầu bằng +84, chuyển thành 0
    if (cleanPhone.startsWith('84')) {
        return {
            original: phoneNumber,
            clean: cleanPhone,
            formatted: '0' + cleanPhone.substring(2),
            countryCode: '+84',
            localNumber: cleanPhone.substring(2)
        };
    }
    
    return {
        original: phoneNumber,
        clean: cleanPhone,
        formatted: cleanPhone.startsWith('0') ? cleanPhone : '0' + cleanPhone,
        countryCode: cleanPhone.startsWith('0') ? '+84' : '+84',
        localNumber: cleanPhone.startsWith('0') ? cleanPhone.substring(1) : cleanPhone
    };
}

function identifyCarrier(phoneInfo) {
    const firstThree = phoneInfo.formatted.substring(1, 4); // Lấy 3 số sau 0
    
    // Phân tích đầu số của các nhà mạng Việt Nam
    if (firstThree.startsWith('09') || firstThree.startsWith('03')) {
        return 'Viettel (Viễn thông Quân đội)';
    } else if (firstThree.startsWith('08') || firstThree.startsWith('05')) {
        return 'Vinaphone';
    } else if (firstThree.startsWith('07') || firstThree.startsWith('01')) {
        return 'Mobifone';
    } else if (firstThree.startsWith('05') && firstThree.startsWith('056')) {
        return 'Vietnamobile';
    } else if (firstThree.startsWith('09') && firstThree.startsWith('092')) {
        return 'Vietnamobile';
    } else {
        return 'Không xác định (Có thể là SIM ảo hoặc nhà mạng mới)';
    }
}

// Phân tích 3 số điện thoại
const phoneNumbers = [
    '+84374268765',
    '+84981806100', 
    '+84393414155'
];

phoneNumbers.forEach((phone, index) => {
    console.log(`=== SỐ ${index + 1}: ${phone} ===`);
    
    const phoneInfo = analyzeVietnamPhone(phone);
    const carrier = identifyCarrier(phoneInfo);
    
    console.log('Thông tin phân tích:');
    console.log('- Số gốc:', phoneInfo.original);
    console.log('- Số đã chuẩn hóa:', phoneInfo.formatted);
    console.log('- Mã quốc gia:', phoneInfo.countryCode);
    console.log('- Số nội địa:', phoneInfo.localNumber);
    console.log('- Nhà mạng:', carrier);
    console.log('- Loại SIM:', phoneInfo.formatted.startsWith('09') ? 'Di động trả trước/tra sau' : 'Di động');
    
    // Thêm thông tin về đầu số
    const firstThree = phoneInfo.formatted.substring(1, 4);
    console.log('- Đầu số:', firstThree);
    
    if (firstThree.startsWith('03') || firstThree.startsWith('09')) {
        console.log('- Ghi chú: Thuộc mạng Viettel');
    } else if (firstThree.startsWith('08') || firstThree.startsWith('05')) {
        console.log('- Ghi chú: Thuộc mạng Vinaphone');
    } else if (firstThree.startsWith('07')) {
        console.log('- Ghi chú: Thuộc mạng Mobifone');
    }
    
    console.log('');
});

console.log('=== THÔNG TIN BỔ SUNG ===');
console.log('');
console.log('1. PHÂN TÍCH ĐẦU SỐ:');
console.log('   - +84: Mã quốc gia Việt Nam');
console.log('   - 37, 98, 39: Mã vùng theo quy hoạch mới');
console.log('   - 0374268765 ~ 84374268765 (quy 84-374-268765)');
console.log('');
console.log('2. NHÀ MẠNG:');
console.log('   - Viettel: 086, 096, 097, 098, 032, 033, 034, 035, 036, 037, 038, 039');
console.log('   - Vinaphone: 088, 091, 094, 081, 082, 083, 084, 085');
console.log('   - Mobifone: 089, 090, 093, 070, 076, 077, 078, 079');
console.log('');
console.log('3. GIỚI HẠN:');
console.log('   - Chỉ có thể xác định nhà mạng qua đầu số');
console.log('   - Không thể định vị chính xác vị trí địa lý');
console.log('   - Thông tin cá nhân được bảo vệ theo luật pháp');
console.log('   - Cần sự cho phép của chủ số để truy cập sâu');
console.log('');
console.log('4. CÔNG CỤC BỔ SUNG:');
console.log('   - Truecaller, Sync.ME, Hiya');
console.log('   - Zalo, Facebook, Instagram search');
console.log('   - Google search với từ khóa');
console.log('   - Các trang web báo cáo số lừa đảo');
console.log('');
console.log('=== KẾT THÚC BÁO CÁO ===');