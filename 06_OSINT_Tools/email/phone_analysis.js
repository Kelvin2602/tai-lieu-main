const https = require('https');
const http = require('http');

const httpGetAsync = (url, callback) => {
    const protocol = url.startsWith('https') ? https : http;
    protocol.get(url, (response) => {
        let data = '';
        response.on('data', (chunk) => {
            data += chunk;
        });
        response.on('end', () => {
            callback(data);
        });
    }).on('error', (err) => {
        console.error('Lỗi:', err.message);
        callback('{}');
    });
};

console.log('=== BẮT ĐẦU TINH HÌNH VỊ TRÍ CHO 3 SỐ ĐIỆN THOẠI ===');
console.log('');

// Số 1: +84374268765
console.log('--- SỐ 1: +84374268765 ---');
const url1 = 'https://phoneintelligence.abstractapi.com/v1/?api_key=8aeb10df3695455fa91191c5527f5a3a&phone=84374268765';
httpGetAsync(url1, (response) => {
    const data1 = JSON.parse(response);
    console.log('Thông tin chi tiết:');
    console.log('Carrier:', data1.carrier || 'Không tìm thấy');
    console.log('Loại:', data1.type || 'Không tìm thấy');
    console.log('Quốc gia:', data1.country || 'Không tìm thấy');
    console.log('Vùng:', data1.region || 'Không tìm thấy');
    console.log('Thành phố:', data1.city || 'Không tìm thấy');
    console.log('Timezone:', data1.timezone || 'Không tìm thấy');
    console.log('Có hợp lệ:', data1.valid || false);
    console.log('');
});

// Số 2: +84981806100
console.log('--- SỐ 2: +84981806100 ---');
const url2 = 'https://phoneintelligence.abstractapi.com/v1/?api_key=8aeb10df3695455fa91191c5527f5a3a&phone=84981806100';
httpGetAsync(url2, (response) => {
    const data2 = JSON.parse(response);
    console.log('Thông tin chi tiết:');
    console.log('Carrier:', data2.carrier || 'Không tìm thấy');
    console.log('Loại:', data2.type || 'Không tìm thấy');
    console.log('Quốc gia:', data2.country || 'Không tìm thấy');
    console.log('Vùng:', data2.region || 'Không tìm thấy');
    console.log('Thành phố:', data2.city || 'Không tìm thấy');
    console.log('Timezone:', data2.timezone || 'Không tìm thấy');
    console.log('Có hợp lệ:', data2.valid || false);
    console.log('');
});

// Số 3: +84393414155
console.log('--- SỐ 3: +84393414155 ---');
const url3 = 'https://phoneintelligence.abstractapi.com/v1/?api_key=8aeb10df3695455fa91191c5527f5a3a&phone=84393414155';
httpGetAsync(url3, (response) => {
    const data3 = JSON.parse(response);
    console.log('Thông tin chi tiết:');
    console.log('Carrier:', data3.carrier || 'Không tìm thấy');
    console.log('Loại:', data3.type || 'Không tìm thấy');
    console.log('Quốc gia:', data3.country || 'Không tìm thấy');
    console.log('Vùng:', data3.region || 'Không tìm thấy');
    console.log('Thành phố:', data3.city || 'Không tìm thấy');
    console.log('Timezone:', data3.timezone || 'Không tìm thấy');
    console.log('Có hợp lệ:', data3.valid || false);
    console.log('');
});